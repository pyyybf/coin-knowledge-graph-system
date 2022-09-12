import {getAnswerAPI} from "../../api/question";

var introduceCommodity = function (resultCommodityList) {
  console.log(resultCommodityList)
  var re = []
  for (var commodity of resultCommodityList) {
    re.push(
      '商品' + commodity.sqlId + '是一支' + commodity.commodityType + '，它的品牌是' + commodity.brand + '，属于' + commodity.name + '系列，色号是' + commodity.shade + '，色系是' + commodity.colorScheme + '，产地是' + commodity.originPlace + '，妆效是' + commodity.effect + '，价格是' + commodity.price + '元。'
    )
  }
  console.log(re)
  return re
}

//防止错误 生成回复语句
var toAnswer = (result) => {
  // alert('toAnswer')
  if (typeof result == 'string')
    return result.length > 0 ? result : '对不起，我不明白。'
  if (graph.state.conversation[graph.state.conversation.length - 1].text.substr(0, 2) === '介绍') {
    // console.log('介绍')
    //下面我给你介绍- -下YSL圆管12、colorkey丝绒唇釉R602~
    // 商品coLorkey丝绒唇釉R602是一支 唇釉，它的品牌是colorkey,属于丝绒唇釉系列，色号是R602人间樱桃，色系是血浆，产地是中国，妆效是丝绒，价格是69 .00元商品YSL圆管12是支口红， 它的品牌是YSL, 属于圆管系列，色号是12斩男色，色系是珊瑚红， 产地是法国，妆效是润泽/镜面，价格是335 .00元
    var resStr = introduceCommodity(result).join('\n')
    console.log(resStr)
    return resStr
  }
  var resStr = result[0].sqlId
  for (var i = 1; i < result.length; i++) {
    resStr = resStr + '，' + result[i].sqlId
  }
  return resStr
}

const graph = {
    state: {
      conversation: [
        {
          text: '请开始提问：',
          sender: 0,
          commodityList: [],
          grammarTreeData: {},
        },
      ],
    },
    mutations: {
      set_dialog: (state, data) => {
        state.conversation.push(data)
      },
    },
    actions: {
      getAnswer: async ({state, commit}, data) => {
        const res = await getAnswerAPI(data)
        // console.log('getAnswer', res)
        try {
          if (res.data.success) {
            console.log(res)
            commit('set_dialog', {
              text: toAnswer(res.data.result),
              sender: 0,
              commodityList: typeof res.data.result == 'string' ? {} : res.data.result,
              grammarTreeData: res.data.graphInfo,
            });
          } else {
            commit('set_dialog', {
              text: res.data.result,
              sender: 0,
              commodityList: [],
              grammarTreeData: {},
            });
          }
        } catch (e) {
          commit('set_dialog', {
            text: '出错了！请重新提问~',
            sender: 0,
            commodityList: [],
            grammarTreeData: {},
          })
        }
      },
      goMainGraph: (data) => {
        this.router.push({
          name: 'knowledgeGraph',
          params: {
            key: data,
          }
        })
      }
    },
  }
;
export default graph;
