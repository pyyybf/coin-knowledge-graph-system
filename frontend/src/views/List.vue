<template>
  <a-row>
    <a-col :span="20" :offset="2">
      <a-list bordered :data-source="attrList">
        <a-list-item slot="renderItem" slot-scope="item, index">
          <a-row style="width: 100%">
            <a-col :span="1" style="text-align: center">
              {{ item[1] }}
            </a-col>
            <a-col :span="1" style="text-align: center">
              <a-divider type="vertical"/>
            </a-col>
            <a-col :span="22">
              <a :class="item[0]"
                 :id="item[0]+0"
                 @click="onclick"
                 style="margin-right: 15px;color:white;background-color: #ffa6a8;border: 5px solid #ffa6a8"
              >全部</a>
              <a v-for="attr in attrData[index]"
                 :class="item[0]"
                 :id="item[0]+attr.id"
                 style="margin-right: 15px;color: black;border: 5px solid transparent"
                 @click="onclick"
              >{{ attr.label }}</a>
            </a-col>
          </a-row>
        </a-list-item>
      </a-list>
      <br/><br/>
      <a-skeleton v-if="loading" active/>
      <a-list v-else :grid="{ gutter: 16, column: 4 }" :data-source="curCommodityList">
        <a-list-item slot="renderItem" slot-scope="commodity, index">
          <CommodityCard :commodity="commodity" style="margin-top: 20px"></CommodityCard>
        </a-list-item>
      </a-list>
      <br/>
      <div style="text-align: center">
        <a-button v-if="cur_idx<commodityList.length" type="link" size="large" @click="get12Commodities">显示更多...
        </a-button>
        <!--        <a-button v-else type="link" @click="get12Commodities" disabled="">No More</a-button>-->
        <a-divider v-else>没有更多</a-divider>
        <br/><br/>
      </div>
    </a-col>
  </a-row>
</template>

<script>
import CommodityCard from "./components/CommodityCard";
import {mapActions, mapGetters} from 'vuex'

export default {
  name: "List",
  data() {
    return {
      attrList: [
        ['brand', '品牌'],
        ['color-scheme', '色系'],
        ['origin-place', '产地'],
        ['commodityType', '类型'],
        ['effect', '妆效']
      ],
      attrData: [
        [
          {id: 1, label: 'colorkey'},
          {id: 2, label: 'MAC'},
          {id: 3, label: 'NARS'},
          {id: 4, label: 'YSL'},
          {id: 5, label: '兰蔻'},
          {id: 6, label: '卡姿兰'},
          {id: 7, label: '娇兰'},
          {id: 8, label: '完美日记'},
          {id: 9, label: '植村秀'},
          {id: 10, label: '欧莱雅'},
          {id: 11, label: '纪梵希'},
          {id: 12, label: '美宝莲'},
          {id: 13, label: '花西子'},
          {id: 14, label: '雅诗兰黛'},
          {id: 15, label: '露华浓'},
        ],
        [
          {id: 1, label: '砖红'},
          {id: 2, label: '豆沙'},
          {id: 3, label: '正红'},
          {id: 4, label: '橘红'},
          {id: 5, label: '番茄'},
          {id: 6, label: '珊瑚红'},
          {id: 7, label: '珊瑚橘'},
          {id: 8, label: '梅子'},
          {id: 9, label: '血浆'},
          {id: 10, label: '红棕'},
          {id: 11, label: '铁锈'},
          {id: 12, label: '西柚'},
          {id: 13, label: '草莓'},
          {id: 14, label: '复古'},
        ],
        [
          {id: 1, label: '中国'},
          {id: 2, label: '日本'},
          {id: 3, label: '韩国'},
          {id: 4, label: '美国'},
          {id: 5, label: '意大利'},
          {id: 6, label: '加拿大'},
          {id: 7, label: '比利时'},
          {id: 8, label: '法国'},
          {id: 9, label: '欧美'},
          {id: 10, label: '其它'},
        ],
        [
          {id: 1, label: '唇膏'},
          {id: 2, label: '口红'},
          {id: 3, label: '唇釉'},
          {id: 4, label: '唇霜'},
          {id: 5, label: '唇笔'},
          {id: 6, label: '染唇液'},
        ],
        [
          {id: 1, label: '哑光/雾面'},
          {id: 2, label: '润泽/镜面'},
          {id: 3, label: '丝绒'},
          {id: 4, label: '闪光/珠光'},
          {id: 5, label: '自然/裸妆'},
          {id: 6, label: '其它'},
        ]
      ],
      curCommodityList: [],
      condition: {
        'brand': '',
        'color-scheme': '',
        'origin-place': '',
        'commodityType': '',
        'effect': '',
      },
      cur_idx: 0,
      loading: false,
    }
  },
  components: {
    CommodityCard,
  },
  computed: {
    ...mapGetters([
      'commodityList',
      'collectedCommodityIdList',
    ])
  },
  methods: {
    ...mapActions([
      'getAllCommodities',
      'goMainGraph'
    ]),
    onclick(e) {
      if (this.condition[e.target.className] == (e.target.text == '全部' ? '' : e.target.text)) {
        return
      }
      this.cur_idx = 0
      this.curCommodityList = []
      const elements = document.getElementsByClassName(e.target.className);
      for (var i = 0; i < elements.length; i++) {
        elements[i].style.backgroundColor = 'transparent';
        elements[i].style.color = '#000000';
        elements[i].style.border = '5px solid transparent';
      }
      e.target.style.backgroundColor = '#ffa6a8';
      e.target.style.color = '#ffffff';
      e.target.style.border = '5px solid #ffa6a8';
      this.condition[e.target.className] = e.target.text == '全部' ? '' : e.target.text
      window.sessionStorage.setItem('condition', JSON.stringify(this.condition))
      this.get12Commodities()
    },
    get12Commodities() {
      // console.log(this.collectedCommodityIdList)
      this.loading = true
      var count = 0
      for (; this.cur_idx < this.commodityList.length; this.cur_idx++) {
        if (count == 12) {
          break
        }
        if (this.commodityList[this.cur_idx].brand.indexOf(this.condition['brand']) != -1 &&
          this.commodityList[this.cur_idx].colorScheme.indexOf(this.condition['color-scheme']) != -1 &&
          this.commodityList[this.cur_idx].originPlace.indexOf(this.condition['origin-place']) != -1 &&
          this.commodityList[this.cur_idx].commodityType.indexOf(this.condition['commodityType']) != -1 &&
          this.commodityList[this.cur_idx].effect.indexOf(this.condition['effect']) != -1) {
          count++;
          this.curCommodityList.push({
            ...this.commodityList[this.cur_idx],
            collect: this.collectedCommodityIdList.indexOf(this.commodityList[this.cur_idx].id) !== -1,
          })
        }
      }
      this.loading = false
    }
  },
  async mounted() {
    this.loading = true
    window.sessionStorage.getItem('condition') && (this.condition = JSON.parse(window.sessionStorage.getItem('condition')))
    // console.log(this.condition)
    for (let name in this.condition) {
      // console.log(name)
      if (this.condition[name] !== '') {
        let itemList = document.getElementsByClassName(name)
        // console.log(itemList)
        for (let item of itemList) {
          if (item.innerHTML === this.condition[name]) {
            item.style.backgroundColor = '#ffa6a8';
            item.style.color = '#ffffff';
            item.style.border = '5px solid #ffa6a8';
          } else {
            item.style.backgroundColor = 'transparent';
            item.style.color = '#000000';
            item.style.border = '5px solid transparent';
          }
        }
      }
    }
    await this.getAllCommodities()
    this.get12Commodities()
    // this.loading = false
  },
}
</script>

<style scoped>

</style>
