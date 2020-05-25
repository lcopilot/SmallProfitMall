//深度烤贝
export const deepClone = (sourceObj) => {
  let targetObj = Array.isArray(sourceObj) ? [] : {};
  let copy;
  for (let key in sourceObj) {
    copy = sourceObj[key];
    if (copy instanceof Array) {
      targetObj[key] = [];
      targetObj[key] = deepClone(copy)
    } else if (copy instanceof Object) {
      // 3. 判断这个值是否是对象
      targetObj[key] = {};
      targetObj[key] = deepClone(copy)
    } else if (typeof copy == 'function ') {
      targetObj[key] = eval(copy.toString());
    } else {
      targetObj[key] = copy;
    }
  }
  return targetObj;
};
/**
 * file图片文件转base64 异步调用
 * @param {*} file file文件或者blob
 * @param {*} callback function (imgurl)通过参数获得base64
 */
export const getBase64 = async (file) => {
  return new Promise(resolve => {
    const reader = new FileReader()
    reader.readAsDataURL(file)
    reader.onload = () => {
      resolve(reader.result)
    }
  })
}