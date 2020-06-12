import * as indexApi from "../api/page";
import SparkMD5 from 'spark-md5/spark-md5'

const SLICE_QUANTITY = 5;

export const fileUpload = async (file, userId, isEditor) => {
  let partSize = Math.ceil(file.size / SLICE_QUANTITY), //分片大小
      start = 0,
      end = partSize,
      i = 0,
      partList = []; //文件分片集合
  let fileName =await Md5(file)

  console.log(fileName)
  // try {
  //   let res = await indexApi.getFileName(fileName);
  //   fileName = res.objectReturn.object
  // } catch (e) {
  //   console.error('文件唯一标识获取错误')
  // }
  while (i < SLICE_QUANTITY) {
    partList.push({
      chunk: file.slice(start, end),
      filename: `${fileName}-${i}`,
    });
    start += partSize;
    end=i===SLICE_QUANTITY-2?file.size+1:start + partSize;
    i++;
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
    isSuccess = item.success ? item.success : false;
    return !isSuccess
  })
  if (isSuccess) {
    const data = {
      fileName: fileName,
      fileQuantity: SLICE_QUANTITY,
      fileType: file.type,
      richText: isEditor,
    }
    return indexApi.fileSynthesis(data).then(res => {
      if (res.success) {
        return res.objectReturn.object
      }
    }).catch(error => {
      return false
    })
  }
}

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