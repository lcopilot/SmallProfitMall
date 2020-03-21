import axios from 'axios'

axios.defaults.withCredentials = false //是否支持发送cookie凭证信息的字段(请求携带了验证身份信息时)
axios.defaults.timeout = 10000
axios.defaults.headers.post['Content-Type'] = 'application/x-www=form-urlencoded;charset=UTF-8'
//请求拦截方式1
/*
 import utils from '../../common/utils'

if(utils.getJwt()){
  axios.defaults.headers['Authorization'] = 'Bearer '+utils.getJwt()
}
axios.defaults.headers['Authorization'] = ''
请求之前拦截

axios.interceptors.request.use(config => {
  判断token
  if (localStorage.token) {
    config.headers.Authorization = 'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjEwODA4ODYsInVzZXJfbmFtZSI6IjEyMyIsImF1dGhvcml0aWVzIjpbIlJPTEVfQURNSU4iLCJST0xFX1VTRVIiXSwianRpIjoiYTNiM2RiYjgtODJkYS00YWI2LWIwZjEtMWMyZDI5ZjM3MjExIiwiY2xpZW50X2lkIjoibWFuYWdlciIsInNjb3BlIjpbIm1hbmFnZXIiXX0.YivH7foaYfSJs9nPBR40TbJ7T0sGXBGaZV2g8Ivktiatdv0Sjkl4PbS3tsjSBtbyqLekYDLoWSojiDLyvgMy5qskeRLefVk4FYpEMzpxfb5JtaxoIRH0o-Re1MC2quq-J7kxRKAL1DUEmr-_GEEmB8zswYJNwYn3vZK0FMQlbsIty4LCfgIwXfH9XnPcUhojUUIBRUDT2W3s8j-qZQ-iKk1y2kesrXloiOtPEL5CljmlOyZ3GED_HNude5b41TqCQyv2VS1baE9DEPo-P0Hb33rSCMILk3rZg-hO7zuDMGfbGWKMQRgY6Fb2uUtqokYa5aLtXyEwW67FKAi2mK2cPA'
  }
  return config
},error =>{
  alert("参数错误", 'fail')
  return Promise.reject(error)
})

 */

// 请求拦截器方式2(方式1的简化版)
/*
axios.interceptors.request.use(
config => {
  // 每次发送请求之前判断vuex中是否存在token
  // 如果存在，则统一在http请求的header都加上token，这样后台根据token判断你的登录情况
  // 即使本地存在token，也有可能token是过期的，所以在响应拦截器中要对返回状态进行判断
  const token = store.state.token;
  token && (config.headers.Authorization = token);
  return config;
},
    error => {
      return Promise.error(error);
    })
*/

// 响应拦截器
axios.interceptors.response.use(
    response => {
      // 如果返回的状态码为200，说明接口请求成功，可以正常拿到数据
      // 否则的话抛出错误
      if (response.status === 200) {
        return Promise.resolve(response);
      } else {
        return Promise.reject(response);
      }
    },
    // 服务器状态码不是2开头的的情况
    // 这里可以跟你们的后台开发人员协商好统一的错误状态码
    // 然后根据返回的状态码进行一些操作，例如登录过期提示，错误提示等等
    // 下面列举几个常见的操作，其他需求可自行扩展
//     error => {
//       if (error.response.status) {
//         switch (error.response.status) {
//             // 401: 未登录
//             // 未登录则跳转登录页面，并携带当前页面的路径
//             // 在登录成功后返回当前页面，这一步需要在登录页操作。
//           case 401:
//             router.replace({
//               path: '/login',
//               query: {
//                 redirect: router.currentRoute.fullPath
//               }
//             });
//             break;
//
//             // 403 token过期
//             // 登录过期对用户进行提示
//             // 清除本地token和清空vuex中token对象
//             // 跳转登录页面
//           case 403:
//             Toast({
//               message: '登录过期，请重新登录',
//               duration: 1000,
//               forbidClick: true
//             });
//             // 清除token
//             localStorage.removeItem('token');
//             store.commit('loginSuccess', null);
//             // 跳转登录页面，并将要浏览的页面fullPath传过去，登录成功后跳转需要访问的页面
//             setTimeout(() => {
//               router.replace({
//                 path: '/login',
//                 query: {
//                   redirect: router.currentRoute.fullPath
//                 }
//               });
//             }, 1000);
//             break;
//
//             // 404请求不存在
//           case 404:
//             Toast({
//               message: '网络请求不存在',
//               duration: 1500,
//               forbidClick: true
//             });
//             break;
//             // 其他错误，直接抛出错误提示
//           default:
//             Toast({
//               message: error.response.data.message,
//               duration: 1500,
//               forbidClick: true
//             });
//         }
//         return Promise.reject(error.response);
//       }
//     }
// }
)

//封装请求方法 此方法耦合度很低 适用于业务中绝大部分
export default {
  /**
   * Promise有三种状态
   * pending: 等待中，或者进行中，表示还没有得到结果
   * resolved: 已经完成，表示得到了我们想要的结果，可以继续往下执行
   * rejected: 也表示得到结果，但是由于结果并非我们所愿，因此拒绝执(用catch捕获异常)
   */

  //get请求
  requestGet (url, params = {}) {
    return new Promise((resolve, reject) => {
      axios.get(url, params).then(res => {
        resolve(res.data)
      }).catch(error => {
        reject(error)
      })
    })
  },
  //get请求不带参数
  requestQuickGet (url) {
    return new Promise((resolve, reject) => {
      axios.get(url).then(res => {
        resolve(res.data) //res是axios封装的对象，res.data才是服务端返回的信息
      }).catch(error => {
        reject(error)
      })
    })
  },
  //post请求
  requestPost (url, data = {}) {
    return new Promise((resolve, reject) => {
      axios.post(url, data).then(res => {
        resolve(res.data)
      }).catch(error => {
        reject(error)
      })
    })
  },
  //post请求(表单)
  requestPostForm (url, data = {}) {
    return new Promise((resolve, reject) => {
      axios.post(url, data, {
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',  //请求头添加表单头
        },
      }).then(res => {
        resolve(res.data)
      }).catch(error => {
        reject(error)
      })
    })
  },
  //put请求
  requestPut (url, data = {}) {
    return new Promise((resolve, reject) => {
      axios.put(url, data).then(res => {
        resolve(res.data)
      }).catch(error => {
        reject(error)
      })
    })
  },
  //delete请求
  requestDelete (url, data = {}) {
    return new Promise((resolve, reject) => {
      axios.delete(url, data).then(res => {
        resolve(res.data)
      }).catch(error => {
        reject(error)
      })
    })
  }
}
