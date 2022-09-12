import HttpRequest from '@/axios/api.request'

const api = {
  userPre: '/api/user',
}

export const loginAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.userPre}/login`,
    method: 'get',
    params: parameter,
  })
}

export const registerAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.userPre}/register`,
    method: 'post',
    params: parameter,
  })
}

export const uploadAvatarAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.userPre}/uploadAvatar`,
    method: 'post',
    params: {
      userId: parameter.userId,
      avatar: parameter.avatar,
    },
  })
}

export function updateUserInfoAPI(data) {
  return HttpRequest.request({
    url: `${api.userPre}/${data.id}/updateUserInfo`,
    method: 'post',
    data,
  })
}

export const getUserInfoAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.userPre}/getUserInfo`,
    method: 'get',
    params: {userId: parameter},
  })
}
