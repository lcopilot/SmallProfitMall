import http from '../util/public';
import sysConfig from '../util/sysConfig'
import querystring from "querystring";
const apiUrl=sysConfig.smApiUrlPre;
//人脸识别
export const facePayment =data=>{
  return http.requestPost(apiUrl+'/OrderController/verificationFace',data)
};
//支付宝支付
export const payByAliPay=data=>{
  return http.requestPost(apiUrl+'/OrderController/alipayPay',data)
};
//获取订单数据
export const getOrder=(userId,orderNumber)=>{
  return http.requestGet(apiUrl+'/OrderController/findOrder/'+userId+'/'+orderNumber)
};
//订单结算
export  const settlementOrder=order=>{
  return http.requestPost(apiUrl+'/OrderController/confirmOrder',order)
};
//获取结算完成订单数据
export  const getOrderComplete=(userId,orderId)=>{
  return http.requestGet(apiUrl+'/OrderController/findDetailedOrder/'+userId+'/'+orderId)
};
//修改订单
export const modifyOrder=order=>{
  return http.requestPut(apiUrl+'/OrderController/updateOrder',order)
};
//获取全部订单
export const getOrderList=params=>{
  const queryString=querystring.stringify(params);
  return http.requestGet(apiUrl+'/OrderController/findAllOrder?'+queryString)
}
//获取不同订单的数量
export const getOrderQuantity=userId=>{
  return http.requestGet(apiUrl+'/OrderController/findClassifyOrderQuantity/'+userId)
}
//删除订单
export const removeOrder=(userId,orderId)=>{
  return http.requestDelete(apiUrl+'/OrderController/deleteOrder/'+userId+'/'+orderId)
}
//确认收货
export const confirmReceipt=params=>{
  const queryString=querystring.stringify(params);
  return http.requestPut(apiUrl+'/OrderController/updateReceive?'+queryString)
}