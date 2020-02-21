import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/pages/Home.vue'
import Login from "../components/pages/Login";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('@/components/pages/Home'), //路由懒加载
  },
  {
    path: '/Home',
    name: 'Home',
    component: () => import('@/components/pages/Home'), //路由懒加载
  },
  {
    path:'/login',
    name:"Login",
    component: () => import('@/components/pages/Login')
  },
  {
    path:'/register',
    name:"Register",
    component: () => import('@/components/pages/Register')
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
