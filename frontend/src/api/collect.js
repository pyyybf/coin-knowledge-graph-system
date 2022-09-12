import HttpRequest from '@/axios/api.request'

const api = {
  collectPre: '/api/collect',
}

export const getCollectedCommodityIdListByUserIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/getCollectedCommodityIdListByUserId`,
    method: 'get',
    params: {
      userId: parameter
    }
  })
}

export const getNewestCollectedCommodityListByUserIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/getNewestCollectedCommodityListByUserId`,
    method: 'get',
    params: {
      userId: parameter
    }
  })
}

export const getCollectedCommodityListByUserIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/getCollectedCommodityListByUserId`,
    method: 'get',
    params: {
      userId: parameter
    }
  })
}

export const getCollectListByUserIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/getCollectListByUserId`,
    method: 'get',
    params: {
      userId: parameter
    }
  })
}

export const addCollectAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/addCollect`,
    method: 'post',
    params: {
      userId: parameter.userId,
      commodityId: parameter.commodityId,
    },
  })
}

export const delCollectAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.collectPre}/delCollect`,
    method: 'delete',
    params: {
      userId: parameter.userId,
      commodityId: parameter.commodityId,
    },
  })
}

