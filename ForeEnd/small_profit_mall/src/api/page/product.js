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
//获取购物车数据
export const getShoppingCartNumber=userId=>{
  return http.requestGet('apiUrl/ShoppingCartController/findByuId/'+userId)
}