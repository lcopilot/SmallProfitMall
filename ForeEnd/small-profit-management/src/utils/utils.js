import * as indexApi from "../api/page";

const SLICE_QUANTITY=5;

export const fileUpload=async (file)=>{
  let partSize = file.size / SLICE_QUANTITY,
      start = 0,
      end=file.size / SLICE_QUANTITY,
      i = 0,
      partList = []; //文件分片集合
  const suffix=file.name.split('.')[1];
  let fileName='';
  try {
    let res=await indexApi.getFileName();
    fileName=res.objectReturn.object
  } catch (e) {
    console.error('文件唯一标识获取错误')
  }
  while (i < SLICE_QUANTITY) {
    partList.push({
      chunk: file.slice(start, end),
      filename: `${fileName}-${i}.${suffix}`
    });
    start += partSize;
    end=start + partSize;
    i++;
  }
  //并发切片请求
  partList = partList.map(item => {
    let formData = new FormData();
    formData.append('file', item.chunk);
    formData.append('fileName', item.filename);
    return indexApi.uploadFiles(formData)
  });
  const results=await indexApi.uploadFilesAll(partList)
  console.log(results)

}