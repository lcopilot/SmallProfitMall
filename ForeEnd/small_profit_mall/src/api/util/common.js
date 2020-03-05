import http from './public';

//获取全国省市区数据
export const getAddressData=()=>{
  return http.requestQuickGet('http://img.fhxasdsada.xyz/pcas-code.json')
}