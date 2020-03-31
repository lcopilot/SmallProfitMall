import CryptoJS from "crypto-js";

export default {
  // 加密
  encrypt(word, keyStr, ivStr) {
    keyStr = keyStr ? keyStr : "a9s8i5tlj32fa3l2";
    ivStr = ivStr ? ivStr : "a2s5i6tlj32f2i12";
    let key = CryptoJS.enc.Utf8.parse(keyStr);
    let iv = CryptoJS.enc.Utf8.parse(ivStr);
    let srcs = CryptoJS.enc.Utf8.parse(word);

    let encrypted = CryptoJS.AES.encrypt(srcs, key, {
      iv,
      mode: CryptoJS.mode.CBC,
      padding: CryptoJS.pad.ZeroPadding
    });
    return encrypted.toString().replace(/(^\s*)|(\s*$)/g, "");
  },
  // 解密
  // decrypt(word, keyStr, ivStr) {
  //   keyStr = keyStr ? keyStr : "a9s8i5tlj32fa3l2";
  //   ivStr = ivStr ? ivStr : "a2s5i6tlj32f2i12";
  //   let key = CryptoJS.enc.Utf8.parse(keyStr);
  //   let iv = CryptoJS.enc.Utf8.parse(ivStr);
  //
  //   let decrypt = CryptoJS.AES.decrypt(word, key, {
  //     iv,
  //     mode: CryptoJS.mode.CBC,
  //     padding: CryptoJS.pad.ZeroPadding
  //   });
  //   return decrypt.toString(CryptoJS.enc.Utf8).replace(/(^\s*)|(\s*$)/g, "");
  // }
};