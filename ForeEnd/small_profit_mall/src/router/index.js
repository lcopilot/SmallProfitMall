import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/pages/Home.vue'
import Login from "../components/pages/Login";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: {   //重定向
      name: 'Home'
    },
  },
  {
    path: '/index',
    redirect: {   //重定向
      name: 'Home'
    },
  },
  {
    path: '/home',
    name: 'Home',
    component: () => import('@/components/pages/Home'), //路由懒加载
  },
  {
    path: '/forgetPassword',
    name: 'ForgetPassword',
    component: () => import('@/components/pages/ForgetPassword'), //路由懒加载
  },
  {
    path: '/test',
    name: 'test',
    component: () => import('@/components/pages/test'), //路由懒加载
  },
  {
    path: '/login',
    name: "Login",
    component: () => import('@/components/pages/Login')
  },
  {
    path: '/register',
    name: "Register",
    component: () => import('@/components/pages/Register')
  },
  {
    path: '/product',
    name: "Product",
    component: () => import('@/components/pages/Product')
  },
  {
    path: '/shoppingCart',
    name: 'ShoppingCart',
    meta: {
      requireAuth: true,   // 添加该字段，表示进入这个路由是需要登录的
    },
    component: () => import('@/components/admin/shoppingCart')

  },
  {
    path: '/personalCenter',
    name: 'PersonalCenter',
    meta: {
      requireAuth: true,
    },
    component: () => import('@/components/admin/personalCenter')
  },
  //捕获404
  {
    path: "/404",
    name: "NotFound",
    component: resolve => require(['@/components/pages/NotFound'], resolve)
  },
  {
    path: "*",
    redirect: "/404"
  }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router
