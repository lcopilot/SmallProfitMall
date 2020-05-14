import http from '../util/public';
//将参数拼接成字符串
import querystring from 'querystring'

import sysConfig from '../util/sysConfig'
const apiUrl=sysConfig.smApiUrlPre;
/**
 * 注册登录
 */

//登录
export const login = params => {
  return http.requestPost(apiUrl+'/user/accountLogin', params);
}
//注册
export const register = params => {
  return http.requestPost(apiUrl+'/user/register', params);
}
//注册短信验证码接口
export const getPhone_Code = phone => {
  let queryString=querystring.stringify(phone);
  return http.requestGet(apiUrl+'/user/registerVerify?' + queryString);
}
//忘记密码
export const resetPassword=params=>{
  return http.requestPost(apiUrl+'/user/updatePasswordPhone', params);
}
//忘记密码的短信验证码接口
export const get_Phone_Code_FP = phone => {
  return http.requestGet(apiUrl+'/user/SmVerify/' + phone);
}

/**
 * 用户信息
 */
//头像上传
export const uploadAvatar=(data,uploadProgress)=>{
  return http.requestPostFile( apiUrl+'/user/updatePortrait',data,uploadProgress)
}
//获取用户信息
export const getUserInformation = userId => {
  return http.requestGet(apiUrl+'/user/findByIdInformation/' + userId);
}
//修改用户信息
export const modifyUser = params => {
  return http.requestPost(apiUrl+'/user/updateInformation' ,params);
}
//验证原手机号
export const verifyPhone = params => {
  return http.requestPost(apiUrl+'/user/formerPhoneSMS',params);
}
//验证原手机号验证码
export const verifyPhoneCode = params => {
  return http.requestPost(apiUrl+'/user/formerPhone' ,params);
}
//新手机号发送验证码
export const sendNewPhoneCode = params => {
  return http.requestPost(apiUrl+'/user/newPhoneSMS' ,params);
}
//验证原手机号验证码
export const verifyNewPhoneCode = params => {
  return http.requestPost(apiUrl+'/user/updatePhone' ,params);
}
//绑定邮箱
export const getEmailCode = params => {
  return http.requestPost(apiUrl+'/EmailController/relieveEmail',params);
}
//验证邮箱验证码
export const validationEmail = params => {
  return http.requestPost(apiUrl+'/EmailController/updateEmail',params);
}
//修改邮箱时获取验证码
export const getCode = params => {
  return http.requestPost(apiUrl+'/EmailController/updateEmailPhone',params);
}
//验证修改邮箱是的验证码
export const verificationModifyEmailCode = params => {
  return http.requestPost(apiUrl+'/EmailController/PhoneSucceed',params);
}

/**
 * 用户地址
 */

//添加地址
export const addAddress = params => {
  return http.requestPost(apiUrl+'/AddressController/addAddress',params);
}
//获取地址数据
export const getAddress = userId => {
  return http.requestGet(apiUrl+'/AddressController/findById/'+userId);
}
//删除地址
export const removeAddress=(userId,addressId,defaults)=>{
  return http.requestDelete(apiUrl+'/AddressController/deleteAddress/'+userId+'/'+addressId+'/'+defaults)
}
//修改默认
export const modifyDefault=params=>{
  //将params拼接成key/value串
  let queryString=querystring.stringify(params);
  return http.requestPut(apiUrl+'/AddressController/updateDefault?'+queryString)
}

/**
 * 用户消息
 */
//获取消息
export const getMessageHistory=params=>{
  let queryString=querystring.stringify(params);
  return http.requestGet(apiUrl+'/NewsController/findNews?'+queryString)
};
//标为已读
export const haveRead=(userId,contentId)=>{
  return http.requestPut(apiUrl+'/NewsController/updateNewsStatus/'+userId+'/'+contentId)
};

/**
 * 用户收藏
 */

//添加收藏
export const addFavorite=data=>{
  return http.requestPost(apiUrl+'/EvaluationController/addEvaluation',data);
}
//获取收藏
export const getFavorite=params=>{
  const  queryString=querystring.stringify(params)
  return http.requestGet(apiUrl+'/EvaluationController/fendFavorite?'+queryString)
}
//删除收藏
export const deleteFavorite=params=>{
  const queryString=querystring.stringify(params)
  return http.requestDelete(apiUrl+'/EvaluationController/deleteFavorite?'+queryString)
}


/**
 * 足迹
 */

//添加足迹
export const addFootprint=data=>{
  return http.requestPost(apiUrl+'/FootprintController/addShoppingCart',data);
};
//获取足迹
export const getFootprint=params=>{
  const  queryString=querystring.stringify(params)
  return http.requestGet(apiUrl+'/FootprintController/fendFootprint?'+queryString)
}
//删除足迹
export const deleteFootprint=params=>{
  const queryString=querystring.stringify(params)
  return http.requestDelete(apiUrl+'FootprintController/deleteFootprint?'+queryString)
}

/**
 * 充值
 */
export const recharge=params=>{
  let queryString=querystring.stringify(params);
  return http.requestPost(apiUrl+'/MemberController/updateBalance?'+queryString);
};
//获取会员信息
export const getMember=userId=>{
  return http.requestGet(apiUrl+'/MemberController/findMember/'+userId)
}

/**
 * 账户设置
 */
//获取用户设置
export const getAccountSetting=userId=>{
  return http.requestGet(apiUrl+'/AccountSettingsController/findAccountSettings/'+userId)
};
//修改登录密码
export const changePassword=params=>{
  let queryString=querystring.stringify(params);
  return http.requestPut(apiUrl+'/AccountSettingsController/updatePassword?'+queryString);
};
//修改设置支付密码
export const changePaymentPassword=params=>{
  let queryString=querystring.stringify(params);
  return http.requestPut(apiUrl+'/AccountSettingsController/updatePaymentPassword?'+queryString);
};
//验证支付密码
export const verifyPaymentPassword=params=>{
  let queryString=querystring.stringify(params);
  return http.requestPost(apiUrl+'/OrderController/verificationPay?'+queryString);
};

//上传人脸
export const uploadFace=data=>{
  return http.requestPost(apiUrl+'/FaceRecognitionController/uploading',data)
};
//关闭刷脸支付
export const shutDownFace=userId=>{
  return http.requestDelete(apiUrl+'/FaceRecognitionController/deleteFace/'+userId)
};

