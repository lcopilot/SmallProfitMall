import Home from "../pages/home/home";
import Category from "../pages/category/category";
import Product from "../pages/product/product";
import AddUpProduct from "../pages/product/addUpProduct";
import Role from "../pages/role/role";
import User from "../pages/user/user";
import Analysis from "../pages/dashboard/analysis";
import Monitor from "../pages/dashboard/monitor";
import Order from "../pages/order/order";
import React from "react";
import ProductAttributes from "../pages/product/productAttributes";

const routerList = [
  {
    path: '/home',
    component: <Home/>,
  }, {
    path: '/products/category',
    component: <Category/>,
  }, {
    path: '/products/product',
    //精确匹配
    exact:true,
    component: <Product/>,
  },{
    path: '/products/product/addUpProduct',
    component: <AddUpProduct/>,
  },{
    path: '/products/product/productAttributes',
    component: <ProductAttributes/>,
  }, {
    path: '/role',
    component: <Role/>,
  }, {
    path: '/user',
    component: <User/>,
  }, {
    path: '/dashboard/analysis',
    component: <Analysis/>,
  }, {
    path: '/dashboard/monitor',
    component: <Monitor/>,
  }, {
    path: '/order',
    component: <Order/>,
  },
]
export default routerList