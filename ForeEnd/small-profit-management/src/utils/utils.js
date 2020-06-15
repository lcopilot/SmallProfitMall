import * as indexApi from "../api/page";
import SparkMD5 from 'spark-md5/spark-md5'
import XLSX from 'xlsx';

const SLICE_QUANTITY = 5;

/**
 * 文件分片上传
 * @param file 文件
 * @param isEditor 是否是富文本编辑器
 * @param onProgress 上传进度
 * @returns {Promise<boolean>}
 */
export const fileUpload = async (file = {}, isEditor, onProgress = () => {},isVideo) => {
  let partSize = Math.ceil(file.size / SLICE_QUANTITY), //分片大小 向上取整
      suffix = file.name.split('.')[file.name.split('.').length - 1], //后缀
      start = 0,
      loaded = 0,  //已上传的大小
      results = [],  //并发结果
      end = partSize,
      i = 0,
      partList = []; //文件分片集合
  //文件内容 md5
  const fileName = await Md5(file)
  //验证文件是否存在
  const verifyRes = await indexApi.getFileVerify(fileName, SLICE_QUANTITY,
      file.size)
  if (verifyRes.success) {
    //文件已经存在并已合成
    if (verifyRes.code === 10100) {
      onProgress({
        percent: Math.round(file.size / file.size * 100).toFixed(2)
      }, file);
      return verifyRes.results.data.fileName
    } else if (verifyRes.code === 10101) {
      //文件未合成
      onProgress({
        percent: Math.round(file.size / file.size * 100).toFixed(2)
      }, file);
      return await fileMerge(fileName, file, isEditor);
    } else {
      //文件切片
      while (i < verifyRes.results.data.length) {
        const data = verifyRes.results.data
        //修改上传进度
        loaded += data[i].breakpoint
        partList.push({
          chunk: file.slice(data[i].breakpoint,
              data[i].fileSerialNumber === 0 ? partSize
                  : data[i].fileSerialNumber * partSize),
          filename: `${fileName}-${data[i].fileSerialNumber}`,
        });
        i++;
      }
    }
  } else {
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
  }

  //并发切片请求
  partList = partList.map(item => {
    let formData = new FormData();
    formData.append('file', item.chunk);
    formData.append('fileName', item.filename);
    return indexApi.uploadFiles(formData, (progress) => {
      loaded += progress.loaded;
      // loaded 已上传的大小 file.size 总大小
      onProgress({
        percent: (loaded / file.size * 100).toFixed(2)
      }, file);
    })
  });

  try {
    results = await Promise.all(partList)
  } catch (e) {
    return false
  }

  if (results.length > 0) {
    return await fileMerge(fileName, suffix, file, isEditor,isVideo);
  }
}

//文件合成
const fileMerge = async (fileName, suffix, file, isEditor,isVideo) => {
  const data = {
    fileName: fileName,
    fileQuantity: SLICE_QUANTITY,
    video:isVideo,
    fileType: suffix,
    richText: isEditor,
  }
  //合成文件
  return indexApi.fileMerge(data).then(res => {
    if (res.success) {
      return res.results.data
    }
  }).catch(error => {
    return false
  })
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
        fileReader.onload = (e) => {
          spark.appendBinary(e.target.result);
          let md5 = spark.end()
          resolve(md5)
        }
      }
  )
}

/**
 * excel表格导出
 * @param headers  文件头   [{title: '年级',dataIndex: '对应的列',key: 'key值'},]
 * @param data 数据
 * @param fileName 文件名
 * @param suffix 文件后缀
 */
export const exportExcel = (headers, data, fileName = new Date().getTime(),
    suffix = '.xlsx') => {
  /*
const initColumn = [{
  title: '姓名',
  dataIndex: 'name',
  key: 'name',
  className: 'text-monospace',
}, {
  title: '年级',
  dataIndex: 'grade',
  key: 'grade',
}, {
  title: '部门',
  dataIndex: 'department',
  key: 'department',
}];

let attendanceInfoList = [
  {
    name: "张三",
    grade: "2017级",
    department: "前端部门"
  },
  {
    name: "李四",
    grade: "2017级",
    department: "程序部门"

  },
  {
    name: "李四",
    grade: "2017级",
    department: "程序部门"

  }];
 exportExcel(initColumn,attendanceInfoList,'速度速度是')*/
  //https://github.com/SheetJS/sheetjs#utility-functions
  /**
   * arr.reduce(function(prev,cur,index,arr){
      ...
      }, init);
   * arr 表示原数组；
   prev 表示上一次调用回调时的返回值，或者初始值 init;
   cur 表示当前正在处理的数组元素；
   index 表示当前正在处理的数组元素的索引，若提供 init 值，则索引为0，否则索引为1；
   init 表示初始值。
   */
      //浅拷 Object.assign方法的第一个参数是目标对象，后面的参数都是源对象。
  const _headers = headers
      .map((item, i) => Object.assign({}, {
        key: item.key,
        title: item.title,
        //String.fromCharCode 将 Unicode 编码转为一个字符:
        position: `${String.fromCharCode(65 + i)}1`
      }))
      .reduce((prev, next) => Object.assign({}, prev,
          {[next.position]: {key: next.key, v: next.title}}), {});

  const _data = data.map(
      (item, i) => headers.map((key, j) => Object.assign({}, {
        content: item[key.key],
        position: `${String.fromCharCode(65 + j)}${i + 2}`
      })))
  // 对刚才的结果进行降维处理（二维数组变成一维数组）
  // concat() 方法用于连接两个或多个数组。
  .reduce((prev, next) => prev.concat(next))
  // 转换成 worksheet 需要的结构
  .reduce((prev, next) => Object.assign({}, prev,
      {[next.position]: {v: next.content}}), {});

  // 合并 headers 和 data
  const output = Object.assign({}, _headers, _data);

  // 获取所有单元格的位置
  const outputPos = Object.keys(output);

  /*
    计算出范围 ,["A1",..., "H2",...,"Z1",..,"AA1",..,"ABA1",...]
    A1 表示 A列第一行
    A2 表示 A列第二行
    A3 ......
   */
  /*
    A,B,C表示列 A列 B列
    A1 = 1，A2 = 2，A3 = A1 + A2的表示形式
    {
      "!ref": "A1:A3",
      A1: { t:'n', v:1 },
      A2: { t:'n', v:2 },
      A3: { t:'n', v:3, f:'A1+A2' }
    }
   */
  const ref = `${outputPos[0]}:${outputPos[outputPos.length - 1]}`;
  const merges = []

  //单元合并
  merges.push({ //如果不为空push 为空 = 赋值
    //合并单元格 index都从0开始
    s: { //s开始
      c: 0, //开始列
      r: 5 //开始行
    },
    e: { //e结束
      c: 1, //结束列
      r: 6 //结束行
    }
  })
  // 构建 workbook 对象
  const wb = {
    SheetNames: ['smallSheet'],
    Sheets: {
      smallSheet: Object.assign(
          {},
          output,
          {
            // '!merges':merges,
            '!ref': ref,
            /*
              !cols:列属性对象的数组
               // 能见度
              hidden?: boolean; // 如果为true，则隐藏该列

               // 列宽是通过以下方式之一指定的：
              wpx?:    number;  // 屏幕像素宽度
              width?:  number;  // Excel“最大位数宽度”中的宽度，宽度* 256为整数
              wch?:    number;  // 字符宽度

              // 其他用于保留文件功能的字段
              MDW?:    number;  // Excel的“最大位数宽度”单位，始终为整数
             */
            '!cols': [{wpx: 45}, {wpx: 100}, {wpx: 200}, {wpx: 80}, {wpx: 150},
              {wpx: 100}, {wpx: 300}, {wpx: 300}],
          },
      ),
    },
  };
  // 导出 Excel
  XLSX.writeFile(wb, fileName + suffix);
}

