import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
import VueAxios from 'vue-axios'
import SvgIcon from './components/SvgIcon'
import './assets/iconfont/iconfont.js'
import './assets/iconfont/icon.css'
import './assets/reset.scss'
import './router/guard'
import 'vue2-animate/dist/vue2-animate.min.css'
//提升事件响应
import 'default-passive-events'
//放大镜组件
import VuePhotoZoomPro from "vue-photo-zoom-pro";
//视频播放组件
import VideoPlayer from 'vue-video-player'
import 'vue-video-player/src/custom-theme.css'
import 'video.js/dist/video-js.css'

Vue.use(VideoPlayer)

//全局注册组件
Vue.component('SvgIcon', SvgIcon)
Vue.use(VueAxios,axios);
Vue.use(ElementUI)//全局使用ElementUI
Vue.config.productionTip = false;
Vue.use(VuePhotoZoomPro);



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
