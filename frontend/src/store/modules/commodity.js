import {
  getAllCommoditiesAPI,
  getUserRecommendAPI,
  getPopularRecommendAPI,
  getCommodityRecommendAPI,
  getCommentByCommodityIdAPI,
  getAllSimilarityAPI,
} from "../../api/commodity"

const commodity = {
  state: {
    commodityList: [],
    curPopularRecommend: [],
    curUserRecommend: [],
  },
  mutations: {
    set_commodityList: (state, data) => {
      state.commodityList = data
    },
    set_popularRecommend: (state, data) => {
      state.curPopularRecommend = data
    },
    set_userRecommend: (state, data) => {
      state.curUserRecommend = data
    },
    set_curKeyCommodity: (state, data) => {
      state.curKeyCommodity = data
    },
  },
  actions: {
    getAllCommodities({commit}) {
      return new Promise((resolve, reject) => {
        getAllCommoditiesAPI().then(response => {
          const data = response.data.content
          if (!data) {
            reject('没有取到数据')
          }
          commit('set_commodityList', response.data.content)
          resolve(data)
        }).catch(error => {
          reject(error)
        })
      })
    },
    getUserRecommend: async ({commit}, data) => {
      const res = await getUserRecommendAPI(data)
      // console.log(res)
      if (res) {
        commit('set_userRecommend', res.data.content)
      }
    },
    getCommodityRecommend: async ({commit}) => {
      const res = await getCommodityRecommendAPI(20)
      console.log(res)
      if (res) {
        commit('set_commodityList', res.data.content)
      }
    },
    getPopularRecommend: async ({commit}) => {
      const res = await getPopularRecommendAPI()
      console.log(res)
      if (res) {
        commit('set_popularRecommend', res.data.content)
      }
    },
    getCommentByCommodityId: async ({commit}, data) => {
      const res = await getCommentByCommodityIdAPI(data)
      return res.data.content
    },
    getAllSimilarity: async ({}, data) => {
      const res = await getAllSimilarityAPI({
        commodityId: data.commodityId,
        similarityType: data.similarityType,
      })
      // console.log('similar', res)
      if (res) {
        return res.data.content
      }
    },
  },
};
export default commodity;
