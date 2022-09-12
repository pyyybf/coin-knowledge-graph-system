import HttpRequest from '@/axios/api.request'

const api = {
  questionPre: '/api/question',
}

export const getAnswerAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.questionPre}/getAnswer`,
    method: 'get',
    params: {question: parameter},
  })
}
