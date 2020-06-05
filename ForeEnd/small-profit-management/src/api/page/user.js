import http from '../public';
import sysConfig from '../sysConfig'
import querystring from "querystring";
const apiUrl=sysConfig.smApiUrlPre;

export const login=(data)=>{
  return http.requestPostFormUr(apiUrl+'/userController/userLogin',data)
}
