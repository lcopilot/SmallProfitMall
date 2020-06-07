import http from '../public';
import sysConfig from '../sysConfig'
const apiUrl=sysConfig.smApiUrlPre;

//获取角色列表
export const getRoles=(userId)=>{
  return http.requestGet(apiUrl+'/RoleController/findRole/'+userId)
}
//获取用户角色列表
export const getUserRoles=(rolesId)=>{
  return http.requestGet(apiUrl+'/RoleController/findBasicsRole/'+rolesId)
}
//获取用户列表
export const getUsers=(userId)=>{
  return http.requestGet(apiUrl+'/userController/findUser/'+userId)
}
//添加角色
export const addRoles=(data)=>{
  return http.requestPost(apiUrl+'/RoleController/addRole',data)
}
//添加用户
export const addUser=(data)=>{
  return http.requestPost(apiUrl+'/userController/addUser',data)
}
