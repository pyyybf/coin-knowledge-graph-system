<template>
  <a-row style="width: 100%">
    <a-col :span="2" :push="content.sender===0?0:22">
      <a-avatar
        :src="content.sender?(userInfo.avatar?userInfo.avatar:''):'https://pyyybf.oss-cn-shanghai.aliyuncs.com/avatars/customer-service.png'"
        :style="{float: content.sender?'right':'left',margin:'0 2px 0 2px'}"
      >{{this.userId>0?'用户':'游客'}}
      </a-avatar>
    </a-col>
    <a-col :span="20">
      <div :class="content.sender?'triangle-right':'triangle-left'" :style="{float:content.sender?'right':'left'}"/>
      <div class="tooltip"
           :style="{float:content.sender?'right':'left','background-color':content.sender?'#ffa6a8':'#f3f3f3'}">
        {{content.text}}
        <a href="javascript:;" v-if="content.commodityList&&content.commodityList.length>0" @click="showGraphInCard">点击查看图谱</a>
        <div v-if="content.sender===0&&content.text==='请开始提问：'" v-for="questionExample in questionList">
          {{questionExample.type}}
          <a href="javascript:;"
             v-for="question in questionExample.examples"
             @click="askExample(question)"
          ><br/>{{question}}
          </a>
        </div>
      </div>
    </a-col>
  </a-row>
</template>

<script>
  import {mapGetters} from 'vuex'

  const questionList = [
    {
      type: '1. 介绍一个/若干个商品',
      examples: [
        '介绍一下MAC限定尤雾弹316',
        '介绍一下colorkey丝绒唇釉人间樱桃、YSL圆管12和YSL方管N°1'
      ]
    },
    {
      type: '2. 回答某个商品的若干条属性（色系/产地/品牌/色号/价格/妆效）',
      examples: [
        'MAC限定尤雾弹927的色系和产地是什么？'
      ]
    },
    {
      type: '3. 回答符合若干条属性的所有商品',
      examples: [
        '豆沙色或正红色的MAC口红有哪些？',
        '150元左右的MAC口红有哪些？',
        '质地润泽的MAC口红有哪些？'
      ]
    },
    {
      type: '4. 询问和某个商品若干属性值相同/类似的商品',
      examples: [
        '和YSL细管N204妆效相同的MAC口红有哪些？',
        '和YSL细管N204价格类似的哑光的纪梵希口红有哪些？'
      ]
    }
  ]

  export default {
    name: "Dialog",
    data() {
      return {
        questionList,
      }
    },
    props: {
      content: Object,
      showGraph: Function,
      ask: Function,
    },
    computed: {
      ...mapGetters([
        'userId',
        'userInfo',
      ])
    },
    methods: {
      showGraphInCard() {
        this.$props.showGraph(this.content)
      },
      askExample(question) {
        this.$props.ask(question)
      }
    },
    mounted() {
      if (this.$props.content.sender == 0)
        this.showGraphInCard()
    }
  }
</script>

<style scoped>
  .triangle-left {
    float: left;
    margin-top: 10px;
    width: 0;
    height: 0;
    border-top: 6px solid transparent;
    border-left: 9px solid transparent;
    border-right: 9px solid #f3f3f3;
    border-bottom: 6px solid transparent;
  }

  .triangle-right {
    float: right;
    margin-top: 10px;
    width: 0;
    height: 0;
    border-top: 6px solid transparent;
    border-left: 9px solid #ffa6a8;
    border-right: 9px solid transparent;
    border-bottom: 6px solid transparent;
  }

  .tooltip {
    overflow: hidden;
    max-width: calc(100% - 40px);
    border-radius: 10px;
    padding: 10px 10px 10px 10px;
  }
</style>
