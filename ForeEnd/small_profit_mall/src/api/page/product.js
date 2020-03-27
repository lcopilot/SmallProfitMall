import http from '../util/public'

//获取商品详细数据
export const getProduct=productId=>{
  return http.requestGet('apiUrl/ProductDetails/productDetailsResult/'+productId)
}
//加入购物车
export const addCart=productForm=>{
  return http.requestPost('apiUrl/ShoppingCartController/addShoppingCart',productForm)
}
//获取购物车数据
export const getShoppingCart=userId=>{
  return http.requestGet('apiUrl/ShoppingCartController/findByUserId/'+userId)
}
//删除购物车
export const removeCart=cartIdList=>{
  return http.requestDelete('apiUrl/ShoppingCartController/deleteCart/'+cartIdList)
}
//到货通知
export const arrivalNotice=(userId,productId)=>{
  return http.requestPost('apiUrl/ShoppingCartController/addArrivalNotice/'+userId+'/'+productId)
}
//修改购物车商品数量
export const modifyProductNumber=(productNumber,cartId)=>{
  return http.requestPut('apiUrl/ShoppingCartController/updateQuantity/'+productNumber+'/'+cartId)
}
//获取购物车预览数据
export const getShoppingCartPreview=(userId,number)=>{
  return http.requestGet('apiUrl/ShoppingCartController/findPreview/'+userId+'/'+number)
}