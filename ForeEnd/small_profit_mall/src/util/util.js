export const deepClone =(sourceObj) =>{
  let targetObj = Array.isArray(sourceObj) ? [] : {};
  let copy;
  for (let key in sourceObj) {
    copy = sourceObj[key];
    if (typeof(copy) === 'object') {
      if (copy instanceof Object) {
        targetObj[key] = deepClone(copy);
      } else {
        targetObj[key] = copy;
      }
    } else if (typeof(copy) === 'function') {
      targetObj[key] = eval(copy.toString());
    } else {
      targetObj[key] = copy;
    }
  }
  return targetObj;
};
/**
 * file图片文件转base64
 * @param {*} file file文件或者blob
 * @param {*} callback function (imgurl)通过参数获得base64
 */
export const getBase64=(file,callback)=> {
  const reader = new FileReader()
  reader.addEventListener('load', () => callback(reader.result))
  reader.readAsDataURL(file)
}