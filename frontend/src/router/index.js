import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home'
import MyHome from '../views/MyHome'
// import Editor from '../views/Editor'
import KnowledgeGraph from '../views/KnowledgeGraph'
import QuestionAnswering from '../views/QuestionAnswering'
// import Typeset from '../views/Typeset'
import List from '../views/List'
import store from '../store'

Vue.use(Router)

const router = new Router({
  routes: [
    {
      path: '/',
      redirect: '/home'
    },
    {
      path: '/home',
      name: 'home',
      component: Home
    },
    {
      path: '/list',
      name: 'list',
      component: List
    },
    {
      path: '/knowledgeGraph',
      name: 'knowledgeGraph',
      component: KnowledgeGraph
    },
    {
      path: '/questionAnswering',
      name: 'questionAnswering',
      component: QuestionAnswering
    },
    {
      path: '/myHome',
      name: 'myHome',
      component: MyHome,
    },
  ]
})

router.beforeEach(function (to, from, next) {
  store.commit('set_userId', Number(window.sessionStorage.getItem('userId')));
  store.commit('set_userInfo', JSON.parse(window.sessionStorage.getItem('userInfo')));
  const collectedCommodityIdList = JSON.parse(window.sessionStorage.getItem('collectedCommodityIdList'))
  store.commit('set_collectedCommodityIdList', collectedCommodityIdList ? collectedCommodityIdList : []);
  next();
})

export default router
