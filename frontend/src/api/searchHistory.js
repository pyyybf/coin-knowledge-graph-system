import HttpRequest from '@/axios/api.request'

const api = {
  searchHistoryPre: '/api/searchHistory',
}

export const getSearchHistoryAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.searchHistoryPre}/getSearchHistory`,
    method: 'get',
    params: {
      fileId: parameter,
    }
  })
}

export const addSearchAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.searchHistoryPre}/addSearch`,
    method: 'post',
    params: {
      fileId: parameter.fileId,
      searchText: parameter.searchText,
    }
  })
}

export const deleteSearchAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.searchHistoryPre}/deleteSearchHistory`,
    method: 'delete',
    params: {
      searchId: parameter,
    }
  })
}
