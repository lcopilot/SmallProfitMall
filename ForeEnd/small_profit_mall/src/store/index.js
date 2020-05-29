import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    CartSum: 0, //购物车数量
    startTime: new Date().getTime(), //剩余开始时间
    endTime: new Date(), //剩余结束时间
    websocketStatus: false,
    unreadQuantity:0,
  },
  getters: {
    endTime: state => {
      let time = state.endTime;
      let Y = time.getFullYear();
      let M = time.getMonth();
      let D = time.getDate();
      let H = time.getHours();
      let m = 0;
      let s = 0;
      if (H % 2 == 1) {
        H += 1;
      } else {
        H += 2;
      }
      return new Date(Y, M, D, H, m, s).getTime();
    },
  },
  mutations: {
    modifyCartSum(state, sum) {
      state.CartSum = sum
    },
    modifyWebsocketStatus(state, websocketStatus) {
      state.websocketStatus = websocketStatus
    },
    getUnreadQuantity(state, unreadQuantity) {
      state.unreadQuantity = unreadQuantity
    },
    modifyUnreadQuantity(state, unreadQuantity) {
      state.unreadQuantity = unreadQuantity
    },
  },
  actions: {
    //修改购物车的数量
    modifyCartSum: (context, sum) => {
      context.commit('modifyCartSum', sum);
    },
    //修改websocket链接状态
    modifyWebsocketStatus: (context, websocketStatus) => {
      context.commit('modifyWebsocketStatus', websocketStatus);
    },
    //修改未读消息的数量
    modifyUnreadQuantity: (context, unreadQuantity) => {
      context.commit('modifyUnreadQuantity', unreadQuantity);
    },
  }
  ,
  modules: {}
})

