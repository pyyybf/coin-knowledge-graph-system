import Vue from 'vue'
import Vuex from 'vuex'
import user from './modules/user'
import commodity from './modules/commodity'
import graph from './modules/graph'
import getters from "./getters"

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    user,
    commodity,
    graph,
  },
  state: {},
  mutations: {},
  actions: {},
  getters
})
