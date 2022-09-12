<template>
  <a-row>
    <a-col :span="16" style="padding-left:1%;height:83vh">
      <div id="container"
           :style="{ height: '83vh', background: '#f3f3f3', padding: 0, overflow:'hidden'}">
        <div class="graph-side">
          <!--          <a-icon class="graph-icon" type="fullscreen" size="large" @click="reset"/>-->
          <my-icon class="large-my-icon" type="icon-fuwei" @click="reset"/>
          <a-icon class="graph-icon" type="zoom-in" size="large" @click="graph.zoomTo(graph.getZoom()*1.1)"/>
          <a-icon class="graph-icon" type="zoom-out" size="large" @click="graph.zoomTo(graph.getZoom()*0.9)"/>
          <a-tooltip>
            <template slot="title">
              智能问答
            </template>
            <a-button class="graph-button" type="primary" shape="circle"
                      icon="question" size="large" :ghost="!ifShowDialogCard" @click="changeShowDialogCard"/>
          </a-tooltip>
        </div>
      </div>
    </a-col>
    <a-col :span="8">
      <DialogCard ref="DialogCard"
                  :visible="ifShowDialogCard"
                  :changeVisible="changeShowDialogCard"
                  :showGraph="showGraph"
      ></DialogCard>
      <CommodityDetail v-if="!ifShowDialogCard" :commodityInfo="curCommodity" :onCollect="handleCollect"/>
    </a-col>
  </a-row>
</template>

<script>
import DialogCard from "./components/DialogCard";
import CommodityDetail from './components/CommodityDetail';
import G6 from "@antv/g6";
import {mapGetters} from "vuex";

const entity_type_list = {
  'brand': {label: '品牌'},
  'name': {label: '商品名称'},
  'commodityType': {label: '种类'},
  'colorScheme': {label: '色系'},
  'originPlace': {label: '产地'},
  'effect': {label: '妆效'},
  'price': {label: '价格'},
}

const calBorderColor = function (color) {
  var r = parseInt(color.slice(1, 3), 16) - 40;
  var g = parseInt(color.slice(3, 5), 16) - 40;
  var b = parseInt(color.slice(5, 7), 16) - 40;
  var r_str = r >= 0 ? r.toString(16) : '00';
  var g_str = g >= 0 ? g.toString(16) : '00';
  var b_str = b >= 0 ? b.toString(16) : '00';
  r_str = r_str.length == 2 ? r_str : '0' + r_str
  g_str = g_str.length == 2 ? g_str : '0' + g_str
  b_str = b_str.length == 2 ? b_str : '0' + b_str
  return '#' + r_str + g_str + b_str;
};

const ATTR_COLOR = {
  brand: '#e3c9b2',
  name: '#f8eee2',
  price: '#faf4e7',
  commodityType: '#efdfd0',
  effect: '#fdecd2',
}

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
}

export default {
  name: "QuestionAnswering",
  components: {DialogCard, CommodityDetail},
  data() {
    return {
      ifShowDialogCard: true,
      commodityList: [],
      graphData: {
        nodes: [],
        edges: [],
      },
      graph: {},
      showNum: 5,
      curCommodity: {},
      graphType: 'commodity',
    }
  },
  computed: {
    ...mapGetters([
      'collectedCommodityIdList',
    ]),
  },
  methods: {
    handleCollect(commodityId, num) {
      var _this = this
      this.graph.getNodes().forEach(node => {
        if (node.getID() == commodityId) {
          _this.graph.updateItem(node, {
            commodityInfo: {
              collectNum: node.getModel().commodityInfo.collectNum + num
            }
          })
        }
      })
    },
    reset() {
      this.graph.zoomTo(1)
      this.graph.translate(-this.graph.getCanvasByPoint(0, 0).x, -this.graph.getCanvasByPoint(0, 0).y);
    },
    initG6() {
      const tooltip = new G6.Tooltip({
        offsetX: 10,
        offsetY: 10,
        fixToNode: [1, 0.5],
        itemTypes: ['node'],
        getContent: (e) => {
          const outDiv = document.createElement('div');
          outDiv.style.width = 'fit-content';
          outDiv.style.height = 'fit-content';
          const model = e.item.getModel();
          outDiv.innerHTML = `${model.entityType === "commodity" ? model.shade : entity_type_list[model.entityType].label}`;
          return outDiv;
        },
      });

      var _this = this
      this.graph = new G6.Graph({
        container: 'container',
        width: document.getElementById('container').offsetWidth,
        height: document.getElementById('container').offsetHeight,
        plugins: [tooltip],
        layout: {
          type: "force",
          preventOverlap: true,
          // linkDistance: -15,
          // nodeDistance: -10,
          // edgeStrength: 1,
          nodeSpacing: 30,
        },
        defaultNode: {
          type: 'circle',
          labelCfg: {
            position: 'center',
            offset: 10,
            style: {
              fontSize: 12,
            }
          },
          style: {
            stroke: '#ffa6a8',
            fill: '#ffffff'
          }
        },
        edgeStateStyles: {
          highlight: {
            opacity: 1,
            stroke: '#ffa6a8',
            lineWidth: 2,
          },
          dark: {
            opacity: 0.1,
          },
        },
        modes: {
          default: ['zoom-canvas', 'drag-canvas', 'drag-node'],
        },
      });

      this.graph.data({
        nodes: this.graphData.nodes.map(function (node, i) {
          node.color = calBorderColor(node.style.fill);
          node.labelCfg = {
            style: {
              fill: node.entityType === 'commodity' || node.entityType === 'colorScheme' ? 'white' : 'black',
            }
          }
          node.stateStyles = {
            highlight: {
              stroke: '#ffa6a8',
              opacity: 1,
              color: '#ffa6a8',
              fill: node.style.fill,
            },
            dark: {
              opacity: 0.2,
            },
          }
          return Object.assign({}, node);
        }),
        edges: this.graphData.edges.map(function (edge, i) {
          edge.id = 'edge' + i;
          return Object.assign({}, edge);
        }),
      });
      this.graph.render();

      this.graph.on('node:dragstart', function (e) {
        _this.graph.layout();
        _this.refreshDraggedNodePosition(e);
      });
      this.graph.on('node:drag', function (e) {
        const forceLayout = _this.graph.get('layoutController').layoutMethods[0];
        forceLayout.execute();
        _this.refreshDraggedNodePosition(e);
      });
      this.graph.on('node:dragend', function (e) {
        e.item.get('model').fx = null;
        e.item.get('model').fy = null;
      });

      if (typeof window !== 'undefined')
        window.onresize = () => {
          if (!_this.graph || _this.graph.get('destroyed')) return;
          _this.graph.changeSize(document.getElementById('container').offsetWidth, document.getElementById('container').offsetHeight);
        };

      this.graph.on('node:mouseenter', function (e) {
        const item = e.item;
        _this.graph.setAutoPaint(false);
        _this.graph.getNodes().forEach(function (node) {
          _this.graph.clearItemStates(node);
          _this.graph.setItemState(node, 'dark', true);
        });
        _this.graph.setItemState(item, 'dark', false);
        _this.graph.setItemState(item, 'highlight', true);
        _this.graph.getEdges().forEach(function (edge) {
          if (edge.getSource() == item) {
            _this.graph.setItemState(edge.getTarget(), 'dark', false);
            _this.graph.setItemState(edge.getTarget(), 'highlight', true);
            _this.graph.setItemState(edge, 'highlight', true);
            edge.toFront();
          } else if (edge.getTarget() == item) {
            _this.graph.setItemState(edge.getSource(), 'dark', false);
            _this.graph.setItemState(edge.getSource(), 'highlight', true);
            _this.graph.setItemState(edge, 'highlight', true);
            edge.toFront();
          } else {
            _this.graph.setItemState(edge, 'highlight', false);
            _this.graph.setItemState(edge, 'dark', true);
          }
          if (item.getModel().entityType == 'commodity' && edge.getSource().getID() == item.getModel().brand && edge.getTarget().getID() == item.getModel().name) {
            _this.graph.setItemState(edge.getTarget(), 'dark', false);
            _this.graph.setItemState(edge.getTarget(), 'highlight', true);
            _this.graph.setItemState(edge.getSource(), 'dark', false);
            _this.graph.setItemState(edge.getSource(), 'highlight', true);
            _this.graph.setItemState(edge, 'highlight', true);
          }
        });
        _this.graph.paint();
        _this.graph.setAutoPaint(true);
      });
      this.graph.on('node:mouseleave', this.clearAllStats);

      this.graph.on('node:click', function (e) {
        if (e.item.get('model').commodityInfo) {
          _this.curCommodity = {
            ...e.item.get('model').commodityInfo,
            collect: _this.collectedCommodityIdList.indexOf(e.item.get('model').commodityInfo.id) !== -1
          }
          _this.ifShowDialogCard = false
        }
      });
    },
    refreshDraggedNodePosition(e) {
      const model = e.item.get('model');
      model.fx = e.x;
      model.fy = e.y;
    },
    changeShowDialogCard() {
      if (this.curCommodity.id) {
        this.ifShowDialogCard = !this.ifShowDialogCard
      }
    },
    clearAllStats() {
      var that = this
      this.graph.setAutoPaint(false);
      this.graph.getNodes().forEach(function (node) {
        that.graph.clearItemStates(node);
      });
      this.graph.getEdges().forEach(function (edge) {
        that.graph.setItemState(edge, 'highlight', false);
        that.graph.setItemState(edge, 'dark', false);
      });
      this.graph.paint();
      this.graph.setAutoPaint(true);
    },
    onSearch(val) {
      this.clearAllStats()
      if (!val) {
        return
      }
      var that = this
      this.graph.setAutoPaint(false);
      this.graph.getNodes().forEach(function (node) {
        that.graph.setItemState(node, 'dark', true);
        if (node.getID().indexOf(val) != -1 || node.getModel().label.indexOf(val) != -1) {
          that.graph.setItemState(node, 'dark', false);
          that.graph.setItemState(node, 'highlight', true);
        }
      });
      this.graph.paint();
      this.graph.setAutoPaint(true);
    },
    async reloadGraph() {
      var _this = this
      this.getAllCommodities().then(() => {
        _this.manageData()
        _this.graph.destroy()
        _this.initG6()
      })
    },
    manageData() {
      this.graphData = {
        nodes: [],
        edges: [],
      }
      var _this = this;
      var cur_price = 100;
      var attrs = [];
      this.commodityList.map(commodity => {
        //brand, name, commodityType, colorScheme, originPlace, effect, price
        var cur_attrs = [];
        if (!attrs.includes(commodity.brand)) {
          _this.graphData.nodes.push({
            entityType: 'brand',
            id: commodity.brand,
            label: commodity.brand,
            size: 60,
            style: {fill: ATTR_COLOR.brand},
          });
          attrs.push(commodity.brand);
        }
        if (!attrs.includes(commodity.name)) {
          _this.graphData.nodes.push({
            entityType: 'name',
            id: commodity.name,
            label: commodity.name,
            size: 60,
            style: {fill: ATTR_COLOR.name},
          });
          attrs.push(commodity.name);
          _this.graphData.edges.push({
            source: commodity.brand,
            target: commodity.name,
          });
        }
        if (!attrs.includes(commodity.commodityType)) {
          _this.graphData.nodes.push({
            entityType: 'commodityType',
            id: commodity.commodityType,
            label: commodity.commodityType,
            size: 60,
            style: {fill: ATTR_COLOR.commodityType},
          });
          attrs.push(commodity.commodityType);
          _this.graphData.edges.push({
            source: commodity.commodityType,
            target: commodity.id.toString(),
          });
        }
        if (!attrs.includes(commodity.colorScheme)) {
          _this.graphData.nodes.push({
            entityType: 'colorScheme',
            id: commodity.colorScheme,
            label: commodity.colorScheme,
            size: 60,
            style: {fill: COLOR_SCHEME_LIST[commodity.colorScheme]},
          });
          attrs.push(commodity.colorScheme);
          _this.graphData.edges.push({
            source: commodity.colorScheme,
            target: commodity.id.toString(),
          });
        }
        // if (!attrs.includes(commodity.originPlace)) {
        //   _this.graphData.nodes.push({
        //     entityType: 'originPlace',
        //     id: commodity.originPlace,
        //     label: commodity.originPlace,
        //     size: 60,
        //   })
        //   attrs.push(commodity.originPlace)
        //   _this.graphData.edges.push({
        //     source: commodity.originPlace,
        //     target: commodity.id.toString(),
        //   })
        // }
        if (!attrs.includes(commodity.effect)) {
          _this.graphData.nodes.push({
            entityType: 'effect',
            id: commodity.effect,
            label: commodity.effect,
            size: 60,
            style: {fill: ATTR_COLOR.effect},
          });
          attrs.push(commodity.effect);
          _this.graphData.edges.push({
            source: commodity.effect,
            target: commodity.id.toString(),
          });
        }
        cur_price = 100;
        while (commodity.price > cur_price) {
          cur_price = cur_price + 100;
        }
        var price_range = ''
        if (cur_price === 100) {
          price_range = '100元以下';
        } else {
          price_range = cur_price.toString() + '~' + (cur_price + 100).toString() + '元';
        }
        if (!attrs.includes(price_range)) {
          _this.graphData.nodes.push({
            entityType: 'price',
            id: price_range,
            label: price_range,
            size: 60,
            style: {fill: ATTR_COLOR.price},
          });
          attrs.push(price_range);
          _this.graphData.edges.push({
            source: price_range,
            target: commodity.id.toString(),
          });
        }
        cur_attrs.push(commodity.name);
        cur_attrs.push(commodity.commodityType);
        cur_attrs.push(commodity.colorScheme);
        // cur_attrs.push(commodity.originPlace);
        cur_attrs.push(commodity.effect);
        cur_attrs.push(price_range);

        _this.graphData.nodes.push({
          entityType: 'commodity',
          id: commodity.id.toString(),
          label: commodity.shade.split(" ")[0],
          shade: commodity.shade,
          style: {fill: commodity.color},
          commodityColor: commodity.color,
          size: 40,
          brand: commodity.brand,
          name: commodity.name,
          commodityType: commodity.commodityType,
          colorScheme: commodity.colorScheme,
          originPlace: commodity.originPlace,
          effect: commodity.effect,
          price: commodity.price,
          commodityInfo: commodity,
        });
        for (var attr of cur_attrs) {
          _this.graphData.edges.push({
            source: attr,
            target: commodity.id.toString(),
          });
        }
      })
    },
    showGraph(data) {
      console.log('showGraph', data)
      try {
        this.graph.destroy()
      } catch (e) {
        console.log('还没有图谱！')
      }
      if (data.commodityList.length) {
        this.commodityList = data.commodityList
        this.manageData()
        this.initG6()
      }
    }
  },
}
</script>

<style scoped>
.graph-side {
  float: right;
  right: 0;
  bottom: 5vh;
  position: absolute;
  text-align: center;
}

.graph-button {
  margin-bottom: 1vh;
}

.graph-icon {
  width: 100%;
  font-size: 25px;
  color: #ffa6a8;
  margin-bottom: 20px;
}

.search-area {
  width: 40%;
  float: right;
}

.graph-header {
  width: 100%;
  height: 3vh;
  text-align: center;
}

.count-area {
  width: 15vw;
}

.commodity-card-img {
  width: 100%;
}

.commodity-card-basicinfo {
  float: left;
}

.commodity-card-price {
  /*vertical-align: top;*/
  /*background-color: green;*/
  float: left;
  width: 100%;
}

.commodity-card-price-sym {
  color: #ffa6a8;
  font-size: 30px;
  /*background-color: red;*/
  float: left;
  margin-top: 10px;
}

.commodity-card-price-int {
  color: #ffa6a8;
  font-size: 40px;
  /*background-color: blue;*/
  float: left;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
}

.commodity-card-price-dig {
  color: #ffa6a8;
  font-size: 20px;
  /*background-color: red;*/
  float: left;
  margin-top: 10px;
  font-family: "Adobe 楷体 Std R";
  font-style: italic;
  margin-left: 5px;
}

.commodity-card-brand-name {
  width: 100%;
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

.large-my-icon {
  font-size: 32px;
  margin-bottom: 18px;
}

</style>
