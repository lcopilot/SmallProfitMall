import http from '../util/public';

//登录
export const login = params => {
  return http.requestPost('/apiUrl/user/accountLogin', params);
}
//注册
export const register = params => {
  return http.requestPost('/apiUrl/user/register', params);
}
//注册短信验证码接口
export const getPhone_Code = phone => {
  return http.requestGet('/apiUrl/user/registerVerify/' + phone);
}
//忘记密码
export const resetPassword=params=>{
  return http.requestPost('/apiUrl/user/updatePasswordPhone', params);
}
//忘记密码的短信验证码接口
export const get_Phone_Code_FP = phone => {
  return http.requestGet('/apiUrl/user/SmVerify/' + phone);
}
//获取用户信息
export const getUserInformation = userId => {
  return http.requestGet('/apiUrl/user/findByIdInformation/' + userId);
}
