import * as indexApi from "../api/page";
import SparkMD5 from 'spark-md5/spark-md5'

const SLICE_QUANTITY = 5;

/**
 * 文件分片上传
 * @param file 文件
 * @param isEditor 是否是富文本编辑器
 * @param onProgress 上传进度
 * @returns {Promise<unknown>}
 */
export const fileUpload = async (file={}, isEditor, onProgress=()=>{}) => {
  let partSize = Math.ceil(file.size / SLICE_QUANTITY), //分片大小 向上取整
      start = 0,
      end = partSize,
      i = 0,
      partList = []; //文件分片集合
  let fileName = await Md5(file)

  //文件切片
  while (i < SLICE_QUANTITY) {
    partList.push({
      chunk: file.slice(start, end),
      filename: `${fileName}-${i}`,
    });
    start += partSize;
    end = i === SLICE_QUANTITY - 2 ? file.size + 1 : start + partSize;
    i++;
  }
  //上传进度
  const uploadProgress = (loaded,total) => {
    onProgress({
      percent: Math.round(loaded / total * 100).toFixed(2)
    }, file);
  }
  //并发切片请求
  partList = partList.map(item => {
    let formData = new FormData();
    formData.append('file', item.chunk);
    formData.append('fileName', item.filename);
    return indexApi.uploadFiles(formData)
  });
  let results = await Promise.all(partList)
  let isSuccess = true;
  results.some((item) => {
    //是否上传成功
    isSuccess = item.success ? item.success : false;
    if (isSuccess){
      //增加上传进度
      start += partSize;
    }
    uploadProgress(start,file.size)
    return !isSuccess
  })
  if (isSuccess) {
    const data = {
      fileName: fileName,
      fileQuantity: SLICE_QUANTITY,
      fileType: file.type,
      richText: isEditor,
    }
    //合成文件
    return indexApi.fileMerge(data).then(res => {
      if (res.success) {
        return res.objectReturn.object
      }
    }).catch(error => {
      return false
    })
  }
}

//文件md5
const Md5 = async (file) => {
  return new Promise(resolve => {
    const fileReader = new FileReader();
    let spark = new SparkMD5(); //创建md5对象（基于SparkMD5）
    if (file.size > 1024 * 1024 * 10) {
      let chunk = file.slice(0, 1024 * 1024 * 10); //将文件进行分块 file.slice(start,end)
      fileReader.readAsBinaryString(chunk); //将文件读取为二进制码
    } else {
      fileReader.readAsBinaryString(file);
    }
    fileReader.onload = function (e) {
      spark.appendBinary(e.target.result);
      let md5 = spark.end()
      resolve(md5)
    }
  })
}