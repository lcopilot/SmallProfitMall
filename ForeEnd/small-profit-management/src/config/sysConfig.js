//时间格式化
export const TIME_FORMAT='YYYY-MM-DD HH:mm:ss'
//分页相关参数
export const PAGINATION={
  PAGE_SIZE:6,
  PAGE_SIZE_OPTIONS:['6', '10', '15', '30'],
  SHOW_TOTAL:(total)=>{
    return `共 ${total} 条 `
  },
}
//商品属性
export const PRODUCT_ATTRIBUTES=[
  {
    value:1,
    title:'版本'
  }, {
    value:2,
    title:'种类'
  },{
    value:3,
    title:'尺码'
  },{
    value:4,
    title:'配置'
  },{
    value:5,
    title:'颜色'
  },{
    value:6,
    title:'套餐'
  },{
    value:7,
    title:'口味'
  },
]