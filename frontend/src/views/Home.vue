<template>
  <a-row>
    <a-col :span="20" :offset="2">
      <el-carousel indicator-position="outside" trigger="click" height="80vh" arrow="never">
        <el-carousel-item v-for="item in 4" :key="item">
          <el-card :body-style="{ padding: 0,height:'80vh' }">
            <a-row type="flex" justify="center" align="middle" class="card-row">
              <a-col :span="15" style="height:80vh">
                <img class="image-popular" :src="popularRecommend[item-1].image"
                     @click="goGraph(popularRecommend[item-1])">
              </a-col>
              <a-col :span="8">
                <div class="brand-popular">
                  {{ popularRecommend[item - 1].brand }}
                </div>
                <br/>
                <div class="name-popular">
                  {{ popularRecommend[item - 1].name }}
                </div>
                <br/>
                <div class="shade-popular">
                  {{ popularRecommend[item - 1].shade }}
                </div>
                <br/><br/>
                <div class="tag">
                  <a-tag class="tag-style"
                         v-for="comment in commentList[item-1]"
                         :key="comment"
                         :color="COLOR_BOARD[Math.floor(Math.random() * 14)]"
                  >&nbsp;#{{ comment }}&nbsp;
                  </a-tag>
                </div>
              </a-col>
            </a-row>

          </el-card>
        </el-carousel-item>
      </el-carousel>
    </a-col>
    <a-col :span="20" :offset="2" class="divider">
      推荐列表
    </a-col>
    <a-col :span="20" :offset="2" class="tipList">
      <a-list :grid="{ gutter: 16, column: 4 }" :data-source="recommendList">
        <a-list-item slot="renderItem" slot-scope="commodity, index">
          <CommodityCard :commodity="commodity" style="margin-top: 20px"></CommodityCard>
        </a-list-item>
      </a-list>

    </a-col>
  </a-row>
</template>

<script>
import CommodityCard from "./components/CommodityCard";
import {mapActions} from "_vuex@3.6.2@vuex";
import {mapGetters} from "vuex";
import {getCommentByCommodityIdAPI} from "../api/commodity";

export default {
  name: "Home",
  data() {
    return {
      popularRecommend: [],
      userRecommend: [],
      recommendList: [],
      commentList: [],
      COLOR_BOARD: ['#a61d0d', '#965553', '#9e271f', '#df1d16', '#b12c1c', '#f75552', '#f07452', '#761041', '#7c0312', '#733d39', '#831f18', '#e96b6f', '#8c221b', '#a32921'],
    }
  },
  computed: {
    ...mapGetters([
      'curPopularRecommend',
      'curUserRecommend',
      'userId',
    ])
  },
  components: {
    CommodityCard,
  },
  methods: {
    ...mapActions([
      'getAllCommodities',
      'getPopularRecommend',
      'getUserRecommend',
      'getCommentByCommodityId',
      'userIndex',
    ]),
    goGraph(commodity) {
      // console.log(commodity)
      this.$router.push({
        name: 'knowledgeGraph',
        params: {
          keyCommodity: commodity
        }
      });
    },
  },
  async mounted() {

    this.userIndex = this.userId
    // console.log(this.userIndex)

    // await this.getAllSimilarity(191,0)
    // this.curCommodityList = this.commodityList.slice(0, 12)

    await this.getPopularRecommend().then(() => {
      this.popularRecommend = this.curPopularRecommend
      // console.log(this.popularRecommend)
    })
    this.recommendList = this.popularRecommend
    if (this.userIndex != 0) {
      await this.getUserRecommend(this.userIndex).then(() => {
        this.userRecommend = this.curUserRecommend
        // console.log(this.userRecommend)
      })
      this.recommendList = this.userRecommend
    }

    var commentList0 = await this.getCommentByCommodityId(this.popularRecommend[0].id)
    this.commentList.push(commentList0)
    var commentList1 = await this.getCommentByCommodityId(this.popularRecommend[1].id)
    this.commentList.push(commentList1)
    var commentList2 = await this.getCommentByCommodityId(this.popularRecommend[2].id)
    this.commentList.push(commentList2)
    var commentList3 = await this.getCommentByCommodityId(this.popularRecommend[3].id)
    this.commentList.push(commentList3)
  }
}
</script>

<style scoped>

.image-popular {
  display: block;
  height: 100%;
}

.image-popular:hover {
  cursor: pointer;
}

.el-carousel__item h3 {
  color: #ffffff;
  font-size: 18px;
  opacity: 0.75;
  line-height: 500px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #ffffff;
}

.el-carousel__item:nth-child(2n+1) {
  background-color: #ffffff;
}

.el-card {
  border: transparent;
}

.shade-popular {
  font-family: 幼圆;
  text-align: center;
  font-size: 18px;
  font-style: italic;
  color: #6a6969;
}

.brand-popular {
  font-family: "Palatino Linotype";
  font-size: 48px;
  text-align: center;
}

.name-popular {
  font-family: 幼圆;
  text-align: center;
  font-size: 20px;
}

.divider {
  font-family: 幼圆;
  padding-top: 10px;
  border-bottom: 2px solid #e89d9d;
  text-align: center;
  font-size: 20px;
}

.tag {
  height: 100px;
  text-align: center;
}

.tag-style {
  background-color: white;
  margin-left: 10px;
  margin-top: 10px;
}

.card-row {
  height: 80vh;
  padding: 0 5vh 0 5vh;
}
</style>
