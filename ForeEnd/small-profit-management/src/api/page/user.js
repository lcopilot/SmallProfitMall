import http from '../public';
import sysConfig from '../sysConfig'
const apiUrl=sysConfig.smApiUrlPre;

export const login=(data)=>{
  return http.requestPost(apiUrl+'/userController/userLogin',data)
}
