import Vue from 'vue'
import VueRouter from 'vue-router'

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
    component: () => import('@/views/allUser/Home'), //路由懒加载
  },
  {
    path: '/forgetPassword',
    name: 'ForgetPassword',
    component: () => import('@/views/allUser/ForgetPassword'), //路由懒加载
  },
  {
    path: '/test',
    name: 'test',
    component: () => import('@/views/test'), //路由懒加载
  },
  {
    path: '/login',
    name: "Login",
    component: () => import('@/views/allUser/Login')
  },
  {
    path: '/register',
    name: "Register",
    component: () => import('@/views/allUser/Register')
  },
  {
    path: '/product',
    name: "Product",
    component: () => import('@/views/allUser/Product')
  },
  {
    path: '/shoppingCart',
    name: 'ShoppingCart',
    meta: {
      requireAuth: true,   // 添加该字段，表示进入这个路由是需要登录的
    },
    component: () => import('@/views/user/shoppingCart')

  },
  {
    path: '/personalCenter',
    name: 'PersonalCenter',
    meta: {
      requireAuth: true,
    },
    component: () => import('@/views/user/personalCenter')
  },{
    path: '/personalInformation',
    name: 'PersonalInformation',
    meta: {
      requireAuth: true,
    },
    component: () => import('@/views/user/personalInformation')
  },
  {
    path: '/addressManagement',
    name: 'AddressManagement',
    meta: {
      requireAuth: true,
    },
    component: () => import('@/views/user/addressManagement')
  },
  {
    path: '/allOrders',
    name: 'AllOrders',
    meta: {
      requireAuth: true,
    },
    component: () => import('@/views/user/allOrders')
  },
  //捕获404
  {
    path: "/404",
    name: "NotFound",
    component: () => import('@/views/allUser/NotFound')
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
