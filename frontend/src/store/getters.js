const getters = {
  userId: state => state.user.userId,
  userInfo: state => state.user.userInfo,
  loginModalVisible: state => state.user.loginModalVisible,
  registerModalVisible: state => state.user.registerModalVisible,
  collectedCommodityIdList: state => state.user.collectedCommodityIdList,
  newestCollectedCommodityList: state => state.user.newestCollectedCommodityList,
  collectedCommodityList: state => state.user.collectedCommodityList,
  collectList: state => state.user.collectList,

  commodityList: state => state.commodity.commodityList,
  curPopularRecommend: state => state.commodity.curPopularRecommend,
  curUserRecommend: state => state.commodity.curUserRecommend,
  curKeyCommodity: state => state.commodity.curKeyCommodity,

  conversation: state => state.graph.conversation,
}

export default getters
