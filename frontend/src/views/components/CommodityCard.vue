<template>
  <a-card hoverable>
    <img
      id="show-img"
      slot="cover"
      alt="example"
      :src=commodity.image
      :lay-src="require('../../assets/tmp-image.png')"
      @error="handleError"
      @click="goGraph"
    />
    <template slot="actions" class="ant-card-actions">
      <a-popconfirm
        v-if="collected"
        title="确认取消收藏吗？"
        ok-text="确认"
        cancel-text="取消"
        @confirm="cancelCollectCommodity"
        @cancel="cancel"
      >
        <div>
          <a-icon key="setting" type="heart" theme="filled" class="icon-collect"/>
          {{ commodity.collectNum }}人收藏
        </div>
      </a-popconfirm>
      <div v-else @click="collectCommodity">
        <a-icon key="setting" type="heart" class="icon-collect"/>
        {{ commodity.collectNum }}人收藏
      </div>
      <div @click="goGraph">
        <a-icon key="file-search" type="file-search" class="icon-detail"/>
        查看详情
      </div>
    </template>
    <a-card-meta :title="commodity.brand+' '+commodity.name">
      <template slot="description">
        {{ commodity.shade }}<br/>
        <div class="price">{{
            commodity.price ? commodity.price.toString().split('.')[0] : ''
          }}{{
            commodity.price ? (commodity.price.toString().split('.')[1] ? commodity.price.toString().split('.')[1] : ".00") : ''
          }}元(来源：京东)
        </div>
      </template>
    </a-card-meta>
  </a-card>
</template>

<script>
import {mapGetters, mapMutations, mapActions} from 'vuex'

export default {
  name: "CommodityCard",
  props: {
    commodity: {},
  },
  data() {
    return {
      collected: false
    }
  },
  computed: {
    ...mapGetters([
      'userId',
      'collectedCommodityIdList',
    ]),
  },
  methods: {
    ...mapMutations([
      'set_curKeyCommodity',
    ]),
    ...mapActions([
      'goMainGraph',
      'addCollect',
      'delCollect',
    ]),
    collectCommodity() {
      if (this.userId < 1) {
        this.$message.warn('请先登录')
        return
      }
      this.commodity.collectNum++;
      this.collected = true
      this.addCollect(this.commodity.id)
    },
    cancelCollectCommodity() {
      this.commodity.collectNum--;
      this.collected = false
      this.delCollect(this.commodity.id)
    },
    goGraph() {
      this.$router.push({
        name: 'knowledgeGraph',
        params: {
          keyCommodity: this.commodity
        }
      });
    },
    handleError(e) {
      e.target.src = require('../../assets/default-image.png')
    },
    cancel() {

    }
  },
  mounted() {
    // console.log(this.collectedCommodityIdList)
    this.collected = this.collectedCommodityIdList.indexOf(this.commodity.id) !== -1
  },
}
</script>

<style scoped>
.price {
  float: right;
  font-family: Cambria;
}

.icon-collect {
  color: #ffa6a8;
}

.icon-detail {
  color: #1890ff;
}
</style>
