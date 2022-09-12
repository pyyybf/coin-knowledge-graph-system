<template>
  <a-card
    :tab-list="tabListNoTitle"
    :active-tab-key="noTitleKey"
    @tabChange="tab => onTabChange(tab, 'noTitleKey')"
    style="width:94%;left:3%;border-radius: 0;border-color:lightgrey"
    :style="{width:low?'96%':'94%',height:low?'75vh':'83vh'}"
    :head-style="{textAlign:'center'}"
    :body-style="{padding:'10px'}"
  >
    <a-skeleton v-if="loading" active/>
    <!--详细信息-->
    <div v-else-if="noTitleKey==='detail'" :style="{margin:'60px 20px 40px 20px'}">
      <a-row type="flex" justify="space-around" align="middle">
        <a-col :span="13">
          <img class="commodity-card-img" :src="commodityInfo.image" inline @error="handleError">
        </a-col>
        <a-col :span="8" :offset="3" class="commodity-card-basicinfo">
          <div class="commodity-card-price">
            <span class="commodity-card-price-sym">￥</span>
            <span class="commodity-card-price-int">
                  {{ commodityInfo.price ? commodityInfo.price.toString().split('.')[0] : '' }}
                </span>
            <span class="commodity-card-price-dig">
                  {{
                commodityInfo.price ? (commodityInfo.price.toString().split('.')[1] ? commodityInfo.price.toString().split('.')[1] : ".00") : ''
              }}
                </span>
          </div>
          <div class="commodity-card-brand">
            <span>{{ commodityInfo.brand }}</span>
          </div>
          <div class="commodity-card-name">
            <span>{{ commodityInfo.name }}</span>
          </div>
          <div class="commodity-card-shade">
            <span>{{ commodityInfo.shade }}</span>
          </div>
        </a-col>
      </a-row>
      <a-row style="margin-top: 3vh">
        <a-col :span="8">
          <span style="float:left">色系：{{ commodityInfo.colorScheme }}</span>
          <div
            :style="{backgroundColor:COLOR_SCHEME_LIST[commodityInfo.colorScheme],borderRadius:'20px',width:'20px',height:'20px',float:'left',marginLeft:'10px'}"></div>
        </a-col>
        <a-col :span="8" style="text-align: center">
          <span>妆效：{{ commodityInfo.effect }}</span>
        </a-col>
        <a-col :span="8">
          <span style="float:right">种类：{{ commodityInfo.commodityType }}</span>
        </a-col>
      </a-row>
      <a-row style="margin-top: 3vh">
        <a-tag class="tag-style"
               v-for="comment in commentList"
               :key="comment"
               :color="COLOR_BOARD[Math.floor(Math.random() * 14)]"
        >&nbsp;#{{ comment }}&nbsp;
        </a-tag>
      </a-row>
      <div v-if="commodityInfo.collect" @click="cancelCollectCommodity" class="collect-info">
        <a-icon class="collect-icon" key="setting" type="heart" theme="filled"/>
        已有{{ commodityInfo.collectNum }}人收藏
      </div>
      <div v-else @click="collectCommodity" class="collect-info">
        <a-icon class="collect-icon" key="setting" type="heart"/>
        已有{{ commodityInfo.collectNum }}人收藏
      </div>
      <div class="price-info">价格参考京东商城官方旗舰店</div>
    </div>
    <!--相似商品-->
    <div v-else style="overflow: auto;height: 73vh" :style="{height:low?'65vh':'73vh'}">
      <div class="similar-type-radio-group">
        <a-radio-group :options="similarOptions" v-model="similarType"
                       :default-value="0"
                       @change="onChange"/>
      </div>
      <a-list item-layout="horizontal" :data-source="similarList">
        <a-list-item slot="renderItem" slot-scope="item, index">
          <a-row style="width: 100%">
            <a-col :span="8" class="img-box">
              <img :src="item.image">
            </a-col>
            <a-col :span="16">
              <a-row type="flex" justify="space-around" align="middle">
                <a-col :span="10" class="similar-card-price">
                  <span class="similar-card-price-sym">￥</span>
                  <span class="similar-card-price-int">
                      {{ item.price ? item.price.toString().split('.')[0] : '' }}
                    </span>
                  <span class="similar-card-price-dig">
                      {{
                      item.price ? (item.price.toString().split('.')[1] ? item.price.toString().split('.')[1] : ".00") : ''
                    }}
                    </span>
                </a-col>
                <a-col :span="14">
                  <a-row class="similar-card-brand">
                    <span>{{ item.brand + ' ' + item.name }}</span>
                  </a-row>
                  <!--                  <br/>-->
                  <a-row class="similar-card-shade">
                    <span>{{ item.shade }}</span>
                  </a-row>
                </a-col>
              </a-row>
              <a-row style="width: 100%;margin-top: 10px">
                <a-col :span="12">
                  <span style="float:left">色系：{{ item.colorScheme }}</span>
                  <div
                    :style="{backgroundColor:COLOR_SCHEME_LIST[item.colorScheme],borderRadius:'20px',width:'20px',height:'20px',float:'left',marginLeft:'10px'}"></div>
                </a-col>
                <a-col :span="12">
                  <span style="float:left;margin-left: 10px">妆效：{{ item.effect }}</span>
                </a-col>
                <a-col :span="12">
                  <span style="float:left">种类：{{ item.commodityType }}</span>
                </a-col>
                <!--                <a-col :span="12">-->
                <!--                  <a-button type="link" style="float: right" icon="search" @click="()=>goGraph(item)">查看详情</a-button>-->
                <!--                </a-col>-->
              </a-row>
            </a-col>
          </a-row>
        </a-list-item>
      </a-list>
    </div>
  </a-card>
</template>

<script>
import {mapActions, mapGetters} from 'vuex';

const COLOR_BOARD = ['#a61d0d', '#965553', '#9e271f', '#df1d16', '#b12c1c', '#f75552', '#f07452', '#761041', '#7c0312', '#733d39', '#831f18', '#e96b6f', '#8c221b', '#a32921'];
const COLOR_SCHEME_LIST = {
  '砖红': '#a61d0d',
  '豆沙': '#965553',
  '正红': '#9e271f',
  '橘红': '#df1d16',
  '番茄': '#b12c1c',
  '珊瑚红': '#f75552',
  '珊瑚橘': '#f07452',
  '梅子': '#761041',
  '血浆': '#7c0312',
  '红棕': '#733d39',
  '铁锈': '#831f18',
  '西柚': '#e96b6f',
  '草莓': '#8c221b',
  '复古': '#a32921',
};


export default {
  name: "CommodityDetail",
  data() {
    return {
      tabListNoTitle: [
        {
          key: 'detail',
          tab: '商品详情',
        },
        {
          key: 'similar',
          tab: '相关推荐',
        }
      ],
      noTitleKey: 'detail',

      commentList: [],

      similarList: [],
      similarOptions: [
        {label: '全部', value: 0},
        {label: '同款妆效', value: 1},
      ],
      similarType: 0,
      COLOR_BOARD,
      COLOR_SCHEME_LIST,
      loading: false
    }
  },
  props: {
    commodityInfo: Object,
    onCollect: Function,
    height: '',
    low: false,
    deleteCollect: Function,
  },
  watch: {
    'commodityInfo.id': {
      handler: function () {
        this.updateComment()
        this.updateSimilarList()
      }
    }
  },
  computed: {
    ...mapGetters([
      'userId',
      'collectedCommodityIdList'
    ]),
  },
  methods: {
    ...mapActions([
      'getCommentByCommodityId',
      'addCollect',
      'delCollect',
      'getAllCommodities',
      'getAllSimilarity',
    ]),
    onChange() {
      // console.log('change to', this.similarType)
      this.updateSimilarList()
    },
    onTabChange(tab, type) {
      this[type] = tab;
    },
    collectCommodity() {
      if (this.userId < 1) {
        this.$message.warn('请先登录')
        return
      }
      this.$props.commodityInfo.collectNum++;
      this.$props.commodityInfo.collect = true
      this.addCollect(this.$props.commodityInfo.id)
      this.$props.onCollect(this.$props.commodityInfo.id, 1)
    },
    cancelCollectCommodity() {
      this.$props.commodityInfo.collectNum--;
      this.$props.commodityInfo.collect = false
      this.delCollect(this.$props.commodityInfo.id)
      if (this.$props.low) this.$props.deleteCollect(this.$props.commodityInfo)
      this.$props.onCollect(this.$props.commodityInfo.id, -1)
    },
    async updateComment() {
      // alert(this.$props.commodityInfo.id)
      if (this.$props.commodityInfo.id)
        this.commentList = await this.getCommentByCommodityId(this.$props.commodityInfo.id)
      // console.log('UPDATE!!!!!!!!!', this.commentList)
      // console.log(this.commentList)
    },
    handleError(e) {
      e.target.src = require('../../assets/default-image.png')
    },
    async updateSimilarList() {
      if (this.$props.commodityInfo.id)
        // console.log(this.$props.commodityInfo.id)
        this.similarList = await this.getAllSimilarity({
          commodityId: this.$props.commodityInfo.id,
          similarityType: this.similarType,
        })
    },
    // goGraph(item) {
    //   console.log('QQQQQQQQQQQ',this.$route.params)
    //   this.$router.replace({
    //     name: 'knowledgeGraph',
    //     params: {
    //       keyCommodity: item
    //     }
    //   });
    //   // this.$router.go(0)
    //   console.log('PPPPPPPPPPPP',this.$route.params)
    // },
  },
  created() {
    this.loading = true
    this.updateComment()
    this.updateSimilarList()
    this.loading = false
  }
}
</script>

<style scoped>
.img-box {
  height: 15vh;
  float: left;
  text-align: center;
}

.img-box > img {
  height: 100%;
}

.info-box {
  float: left;
}

.commodity-card-img {
  width: 100%;
}

.commodity-card-basicinfo {
  float: left;
  margin-left: 10px;
}

.commodity-card-price {
  float: left;
  width: 100%;
}

.commodity-card-price-sym {
  color: #ffa6a8;
  font-size: 30px;
  float: left;
  margin-top: 5px;
}

.commodity-card-price-int {
  color: #ffa6a8;
  font-size: 35px;
  float: left;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
}

.commodity-card-price-dig {
  color: #ffa6a8;
  font-size: 20px;
  float: left;
  margin-top: 5px;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
  margin-left: 3px;
}

.price-info {
  font-size: 12pt;
  color: lightgrey;
  position: absolute;
  bottom: 3vh;
  right: 1.5em;
}

.similar-card-price {
  float: left;
  /*width: 100%;*/
}

.similar-card-price-sym {
  color: #ffa6a8;
  font-size: 20px;
  float: left;
  margin-top: 10px;
}

.similar-card-price-int {
  color: #ffa6a8;
  font-size: 30px;
  float: left;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
}

.similar-card-price-dig {
  color: #ffa6a8;
  font-size: 20px;
  float: left;
  margin-top: 5px;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
  margin-left: 5px;
}

.similar-card-brand {
  height: 3vh;
  float: left;
  margin-left: 10px;
  margin-top: 5px;
  width: 100%;
}

.similar-card-shade {
  height: 3vh;
  float: left;
  margin-left: 10px;
  width: 100%;
}

.similar-type-radio-group {
  text-align: center;
  width: 100%;
}

.commodity-card-brand-name {
  width: 100%;
  float: left;
  margin-left: 5px;
}

.commodity-card-brand {
  font-family: 幼圆;
  font-size: 30px;
}

.commodity-card-name {
  font-family: 幼圆;
  font-size: 18px;
}

.commodity-card-shade {
  font-family: "Adobe 宋体 Std L";
  font-size: 13px;
}

.collect-icon {
  color: #ffa6a8;
}

.collect-info {
  position: absolute;
  bottom: 3vh;
  font-size: 15px;
}

.tag-style {
  background-color: white;
  margin-left: 2px;
  margin-top: 10px;
}

/*定义滚动条高宽及背景 高宽分别对应横竖滚动条的尺寸*/
::-webkit-scrollbar {
  display: none;
  width: 7px;
  height: 7px;
  background-color: #ffffff;
}

::-webkit-scrollbar:hover {
  opacity: 1;
  width: 7px;
  height: 7px;
  background-color: #ffffff;
}

/*定义滚动条轨道 内阴影+圆角*/
::-webkit-scrollbar-track {
  opacity: 0;
  box-shadow: inset 0 0 6px rgba(0, 0, 0, 0);
  -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0);
  border-radius: 10px;
  background-color: #ffffff;
}

/*定义滑块 内阴影+圆角*/
::-webkit-scrollbar-thumb {
  opacity: 0;
  border-radius: 10px;
  box-shadow: inset 0 0 0px rgba(0, 0, 0, 0);
  -webkit-box-shadow: inset 0 0 10px #ffa6a8;
  background-color: rgba(0, 0, 0, 0);
}
</style>
