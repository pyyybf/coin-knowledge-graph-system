import {
  loginAPI,
  registerAPI,
  uploadAvatarAPI,
  updateUserInfoAPI,
  getUserInfoAPI,
} from "../../api/user";
import {
  getCollectedCommodityIdListByUserIdAPI,
  getNewestCollectedCommodityListByUserIdAPI,
  getCollectedCommodityListByUserIdAPI,
  getCollectListByUserIdAPI,
  addCollectAPI,
  delCollectAPI,
} from "../../api/collect";
import {message} from 'ant-design-vue';

const user = {
    state: {
      userId: 0,
      userInfo: {},
      loginModalVisible: false,
      registerModalVisible: false,
      collectedCommodityIdList: [],
      newestCollectedCommodityList: [],
      collectedCommodityList: [],
      collectList: [],
    },
    mutations: {
      set_userInfo: (state, data) => {
        state.userInfo = {
          ...data
        }
        window.sessionStorage.setItem('userInfo', JSON.stringify(state.userInfo));
      },
      set_userId: (state, data) => {
        state.userId = data
        window.sessionStorage.setItem('userId', state.userId);
      },
      set_loginModalVisible: (state, data) => {
        state.loginModalVisible = data
      },
      set_registerModalVisible: (state, data) => {
        state.registerModalVisible = data
      },
      set_collectedCommodityIdList: (state, data) => {
        state.collectedCommodityIdList = data
        window.sessionStorage.setItem('collectedCommodityIdList', JSON.stringify(state.collectedCommodityIdList));
      },
      set_newestCollectedCommodityList: (state, data) => {
        state.newestCollectedCommodityList = data
      },
      set_collectedCommodityList: (state, data) => {
        state.collectedCommodityList = data
      },
      set_collectList: (state, data) => {
        state.collectList = data
      },
    },
    actions: {
      login: async ({dispatch, commit}, data) => {
        const res = await loginAPI(data)
        if (res) {
          if (res.data.success) {
            dispatch('getCollectedCommodityId', {userId: res.data.content.id})
            commit('set_userInfo', res.data.content)
            commit('set_loginModalVisible', false)
            commit('set_userId', res.data.content.id)
            message.success('登录成功')
          } else {
            // console.log(res)
            message.error(res.data.message)
          }
        } else {
          message.error('登录失败')
        }
      },
      register: async ({commit}, data) => {
        const res = await registerAPI(data);
        if (res) {
          if (res.data.success) {
            commit('set_registerModalVisible', false)
            commit('set_loginModalVisible', true)
            message.success('注册成功')
          } else {
            message.error(res.data.message)
          }
        } else {
          message.error('注册失败')
        }
      },
      logout: async ({commit}, data) => {
        window.sessionStorage.removeItem('userId')
        window.sessionStorage.removeItem('userInfo')
        window.sessionStorage.removeItem('collectedCommodityIdList')
        commit('set_collectedCommodityIdList', [])
        commit('set_userInfo', {})
        commit('set_userId', 0)
        message.success('登出成功')
      },
      uploadAvatar: async ({state, dispatch, commit}, data) => {
        return new Promise((resolve, reject) => {
          uploadAvatarAPI({
            userId: state.userId,
            avatar: data,
          })
            .then(response => {
              dispatch('getUserInfo')
              resolve(response.data.content)
            }).catch(error => {
            reject(error)
          })
        })
      },
      updateUserInfo: async ({state, dispatch, commit}, data) => {
        console.log({
          id: state.userId,
          ...data,
        })
        return new Promise((resolve, reject) => {
          updateUserInfoAPI({
            id: state.userId,
            ...data,
          })
            .then(response => {
              dispatch('getUserInfo')
              resolve(response.data.content)
            }).catch(error => {
            reject(error)
          })
        })
      },
      getUserInfo: async ({state, commit}) => {
        return new Promise((resolve, reject) => {
          getUserInfoAPI(state.userId).then(response => {
            // console.log('QWWWWWWWWWWWWWWWWWWW',response.data.content)
            commit('set_userInfo', response.data.content)
            resolve(response.data.content)
          }).catch(error => {
            reject(error)
          })
        })
      },
      getCollectedCommodityId: async ({state, commit}, data) => {
        const res = await getCollectedCommodityIdListByUserIdAPI(data.userId)
        commit('set_collectedCommodityIdList', res.data.content)
      },
      addCollect: async ({state, dispatch}, data) => {
        return new Promise((resolve, reject) => {
          addCollectAPI({
            userId: state.userId,
            commodityId: data,
          }).then(response => {
            if (!response.data.success) {
              message.error('收藏失败')
              reject('收藏失败')
            }
            dispatch('getCollectedCommodityId', {userId: state.userId})
            dispatch('getNewestCollectedCommodityList')
            dispatch('getCollectedCommodityList')
            resolve(response.data.content)
          }).catch(error => {
            reject(error)
          })
        })
      },
      delCollect: async ({state, dispatch}, data) => {
        return new Promise((resolve, reject) => {
          delCollectAPI({
            userId: state.userId,
            commodityId: data,
          }).then(response => {
            if (!response.data.success) {
              message.error('取消收藏失败')
              reject('取消收藏失败')
            }
            dispatch('getCollectedCommodityId', {userId: state.userId})
            dispatch('getNewestCollectedCommodityList')
            dispatch('getCollectedCommodityList')
            resolve(response.data.content)
          }).catch(error => {
            reject(error)
          })
        })
      },
      getNewestCollectedCommodityList({state, commit}) {
        return new Promise((resolve, reject) => {
          getNewestCollectedCommodityListByUserIdAPI(state.userId).then(response => {
            const data = response.data.content
            if (!data) {
              reject('没有取到数据')
            }
            commit('set_newestCollectedCommodityList', data)
            resolve(data)
          }).catch(error => {
            reject(error)
          })
        })
      },
      getCollectedCommodityList({state, commit}) {
        return new Promise((resolve, reject) => {
          getCollectedCommodityListByUserIdAPI(state.userId).then(response => {
            const data = response.data.content
            if (!data) {
              reject('没有取到数据')
            }
            commit('set_collectedCommodityList', data)
            resolve(data)
          }).catch(error => {
            reject(error)
          })
        })
      },
      getCollectList({state, commit}) {
        return new Promise((resolve, reject) => {
          getCollectListByUserIdAPI(state.userId).then(response => {
            const data = response.data.content
            if (!data) {
              reject('没有取到数据')
            }
            commit('set_collectList', data)
            resolve(data)
          }).catch(error => {
            reject(error)
          })
        })
      },
    },
  }
;
export default user;
