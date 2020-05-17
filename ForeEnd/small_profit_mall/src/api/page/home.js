import http from '../util/public';
import sysConfig from '../util/sysConfig'
import querystring from "querystring";
const apiUrl=sysConfig.smApiUrlPre;

/**
 * 轮播图组件
 */
//获取分类列表
export const getCategoriesList = () => {
  return http.requestQuickGet(apiUrl+'/homepageController/navigationInDetail');
};
//获取常用功能
export const getCommonFunctionsList=()=>{
  return http.requestQuickGet(apiUrl+'/homepageController/icon')
};
//获取轮播图
export const getRotationChart=()=>{
  return http.requestQuickGet(apiUrl+'/homepageController/findRotationChart')
};

/**
 * 秒杀商品部分
 */
//秒杀商品部分的广告
export const getSpikeAdList=()=>{
  return http.requestQuickGet(apiUrl+'/CommodityController/findAd')
};
//秒杀商品
export const getSpikeProductList=()=>{
  return http.requestQuickGet(apiUrl+'/CommodityController/findSeckill')
};

/**
 * 低价商品部分
 */
//低价商品
export const getLowPriceProductList=()=>{
  return http.requestQuickGet(apiUrl+'/CommodityController/findProductLowPrice')
};

//商品推荐
export const getProductsFeatured=()=>{
  return http.requestQuickGet(apiUrl+'/CommodityController/Recommend')
};

//搜索商品
export const search=(params)=>{
  const queryString=querystring.stringify(params);
  return http.requestGet(apiUrl+'/PrimaryProductController/fendPrimaryProduct?'+queryString)
}