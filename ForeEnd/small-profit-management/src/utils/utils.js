import * as indexApi from "../api/page";
import Md5 from 'blueimp-md5'
const SLICE_QUANTITY = 5;

export const fileUpload = async (file,userId,isEditor) => {
  let partSize = file.size / SLICE_QUANTITY, //分片大小
      start = 0,
      end = partSize,
      i = 0,
      partList = []; //文件分片集合
  let fileName = Md5(`${file.name}-${userId}`);
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
    end = start + partSize;
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
  if (isSuccess){
    const data={
      fileName:fileName,
      fileQuantity:SLICE_QUANTITY,
      fileType:file.type,
      richText:isEditor,
    }
    indexApi.fileSynthesis(data).then(res=>{
      console.log(res)
    })
  }
}