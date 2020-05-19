import http from '../util/public'

import sysConfig from '../util/sysConfig'
import querystring from "querystring";
const apiUrl=sysConfig.smApiUrlPre;
//获取商品详细数据
export const getProduct=productId=>{
  return http.requestGet(apiUrl+'/ProductDetails/productDetailsResult/'+productId)
};
//加入购物车
export const addCart=productForm=>{
  return http.requestPost(apiUrl+'/ShoppingCartController/addShoppingCart',productForm)
};
//获取购物车数据
export const getShoppingCart=userId=>{
  return http.requestGet(apiUrl+'/ShoppingCartController/findByUserId/'+userId)
};
//删除购物车
export const removeCart=cartIdList=>{
  return http.requestDelete(apiUrl+'/ShoppingCartController/deleteCart/'+cartIdList)
};
//到货通知
export const arrivalNotice=(userId,productId)=>{
  return http.requestPost(apiUrl+'/ShoppingCartController/addArrivalNotice/'+userId+'/'+productId)
};
//修改购物车商品数量
export const modifyProductNumber=(productNumber,cartId)=>{
  return http.requestPut(apiUrl+'/ShoppingCartController/updateQuantity/'+productNumber+'/'+cartId)
};
//获取购物车预览数据
export const getShoppingCartPreview=(userId,number)=>{
  return http.requestGet(apiUrl+'/ShoppingCartController/findPreview/'+userId+'/'+number)
};
//购物车结算 立即够买
export const settlement=data=>{
  return http.requestPost(apiUrl+'/OrderController/addOrder',data)
};
//商品页立即够买
export const buyNow=data=>{
  return http.requestPost(apiUrl+'/OrderController/purchaseOrder',data)
};
//商品评论
export const addComment=data=>{
  return http.requestPostFile(apiUrl+'/CommentController/addComment',data)
}
//追评
export const addSecondComment=data=>{
  return http.requestPostFile(apiUrl+'/CommentController/addSecondComment',data)
}
//获取商品评论
export const getProductComment=params=>{
  const queryString=querystring.stringify(params);
  return http.requestGet(apiUrl+'/CommentController/findComment?'+queryString)
}
//获取各类评论数量
export const getProductCommentQuantity=productId=>{
  return http.requestGet(apiUrl+'/CommentController/findCommentQuantity/'+productId)
}
//增加浏览量
export const addProductView=(data)=>{
  return http.requestPost(apiUrl+'/ProductPageviewsController/addProductPageviews',data)
}