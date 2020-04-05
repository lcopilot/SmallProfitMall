import http from '../util/public';

//支付人脸识别
export const facePayment =data=>{
  return http.requestPost('apiUrl/OrderController/verificationFace',data)
};
//获取订单数据
export const getOrder=(userId,orderNumber)=>{
  return http.requestGet('apiUrl/OrderController/findOrder/'+userId+'/'+orderNumber)
};
//订单结算
export  const settlementOrder=order=>{
  return http.requestPost('apiUrl/',order)
};