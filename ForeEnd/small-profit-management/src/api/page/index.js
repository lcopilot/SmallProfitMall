import http from '../public';
import sysConfig from '../sysConfig'
const apiUrl=sysConfig.smApiUrlPre;

/**
 * 角色模块
 */
//获取角色列表
export const getRoles=(userId)=>{
  return http.requestGet(apiUrl+'/RoleController/findRole/'+userId)
}
//添加角色
export const addRoles=(data)=>{
  return http.requestPost(apiUrl+'/RoleController/addRole',data)
}
//获取用户角色列表
export const getUserRoles=(rolesId)=>{
  return http.requestGet(apiUrl+'/RoleController/findBasicsRole/'+rolesId)
}
//修改角色
export const editRoles=(data)=>{
  return http.requestPut(apiUrl+'/RoleController/updateRole',data)
}
//删除角色
export const deleteRoles=(rolesId)=>{
  return http.requestDelete(apiUrl+`/RoleController/findBasicsRole/${rolesId}`)
}
//搜索角色
export const searchRoles=(data)=>{
  return http.requestGetFormUr(apiUrl+`/RoleController/findRoleSearch`,data)
}


/**
 * 用户模块
 */
//获取用户列表
export const getUsers=(userId)=>{
  return http.requestGet(apiUrl+'/userController/findUser/'+userId)
}
//添加用户
export const addUser=(data)=>{
  return http.requestPost(apiUrl+'/userController/addUser',data)
}
//修改用户
export const editUser=(data)=>{
  return http.requestPut(apiUrl+'/userController/updateUser',data)
}
//删除用户
export const deleteUser=(userId)=>{
  return http.requestDelete(apiUrl+`/userController/deleteUser/${userId}`)
}
//搜索用户
export const searchUser=(data)=>{
  return http.requestGetFormUr(apiUrl+`/userController/findUserSearch`,data)
}


/**
 * 商品模块
 */
//获取商品数据
export const getProductList=(data)=>{
  return http.requestGetFormUr(apiUrl+`/ProductController/findDetailsList`,data)
}
//获取商品详情
export const getProductCategory=()=>{
  return http.requestGet(apiUrl+`/ProductController/findCategory`)
}



/**
 * 文件上传模块
 */
//获取文件唯一标识(文件名)
export const getFileName=(fileName)=>{
  return http.requestPostFormUr(apiUrl+`/filesController/getFileName`,fileName)
}
//文件上传
export const uploadFiles=(data)=>{
  return http.requestPostFile(apiUrl+`/filesController/filesUpload`,data)
}
//文件合成
export const fileSynthesis=(data)=>{
  return http.requestPostFormUr(apiUrl+`/filesController/compositeFile`,data)
}
