import HttpRequest from '@/axios/api.request'

const api = {
  commodityPre: '/api/commodity',
  recommendPre: '/api/recommend',
  similarityPre: '/api/similarity',
}

export const getAllCommoditiesAPI = () => {
  return HttpRequest.request({
    url: `${api.commodityPre}/getAllCommodities`,
    method: 'get',
  })
}

export const getUserRecommendAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.recommendPre}/getUserRecommend`,
    method: 'get',
    params: {
      userId: parameter
    }
  })
}

export const getCommodityRecommendAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.recommendPre}/getCommodityRecommend`,
    method: 'get',
    params: {
      commodityId: parameter
    }
  })
}

export const getCommentByCommodityIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.commodityPre}/getCommentByCommodityId`,
    method: 'get',
    params: {
      commodityId: parameter
    }
  })
}

export const getPopularRecommendAPI = () => {
  return HttpRequest.request({
    url: `${api.recommendPre}/getPopularRecommend`,
    method: 'get',
  })
}


export const getAllSimilarityAPI = (parameter) => {
  console.log(parameter)
  return HttpRequest.request({
    url: `${api.similarityPre}/getAllSimilarity`,
    method: 'get',
    params: {
      commodityId: parameter.commodityId,
      similarityType: parameter.similarityType
    }
  })
}
