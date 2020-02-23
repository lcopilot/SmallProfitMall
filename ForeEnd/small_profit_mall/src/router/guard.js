import router from "./index";

//声明白名单
//const whiteRouter = ['/login','/'];

//路由守卫
// router.beforeEach((to, from, next) => {
//   if (sessionStorage.getItem("token") != null) {
//     next();
//   } else {
//     //indexOf判断数组是否存在指定的对象 如果不存在返回-1
//     if (whiteRouter.indexOf(to.path) !== -1) {
//       next();
//     } else {
//       next('/login');
//     }
//     /**
//      * 1,直接进入index的时候,参数to被改变成了 "/index",就会触发路由指向,就会跑向beforeEach
//      * 2,再一次 next() 指向了login  再次发生发路由指向,再跑向beforeEach
//      * 3,白名单判断存在,则直接执行next(), 因为没有参数,所以不会再次指向beforeEach
//      *
//      */
//   }
// })

router.beforeEach((to, from, next) => {
  if (to.meta.requireAuth) {  // 判断该路由是否需要登录权限
    if (sessionStorage.getItem("token")) {
      next();
    } else {
      next({
        path: '/login',
        query: {redirect: to.fullPath}  // 将跳转的路由path作为参数，登录成功后跳转到该路由
      })
    }
  }
  else {
    next();
  }
})
