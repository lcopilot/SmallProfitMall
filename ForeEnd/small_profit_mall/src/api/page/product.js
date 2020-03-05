import http from '../util/public'

//获取商品详细数据
export const getProduct=productId=>{
  return http.requestGet('apiUrl/ProductDetails/productDetailsResult/'+productId)
}