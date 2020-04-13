import http from '../util/public';
import sysConfig from '../util/sysConfig'
const apiUrl=sysConfig.smApiUrlPre;
//支付人脸识别
export const facePayment =data=>{
  return http.requestPost(apiUrl+'/OrderController/verificationFace',data)
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
export const modifyOrder=()=>{
  return http.requestPut('OrderController/updateOrder')
}