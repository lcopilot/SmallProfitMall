import http from './public';

//获取全国省市区数据
export const getAddressData=()=>{
  return http.requestQuickGet('https://img.isdfmk.xyz/pcas-code.json')
}
