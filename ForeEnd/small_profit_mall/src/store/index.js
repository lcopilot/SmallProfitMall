import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    CartSum: 0,
  },
  mutations: {
    getCartSum(state, sum) {
      state.CartSum = sum
    },
    modifyCartSum(state, sum) {
      state.CartSum += sum
    },

  },
  actions: {
    //获取购物车的数量
    getCartSum: (context, sum) => {
      context.commit('getCartSum', sum);
    },
    //修改购物车的数量
    modifyCartSum: (context, sum) => {
      context.commit('modifyCartSum', sum);
    },

  },
  modules: {}
})

