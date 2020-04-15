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