import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
import VueAxios from 'vue-axios'
import SvgIcon from './components/SvgIcon.vue'
import './assets/iconfont/iconfont.js'
import './assets/iconfont/icon.css'
import './assets/reset.scss'
import './router/guard'

//全局注册组件
Vue.component('SvgIcon', SvgIcon)
Vue.use(VueAxios,axios);
Vue.use(ElementUI)//全局使用ElementUI
Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
