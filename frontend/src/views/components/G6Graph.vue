<template>
  <div id="container"
       :style="{ height: '100%', background: '#f3f3f3', padding: 0, overflow:'hidden'}">
    <!--        <slot/>-->
    <div class="graph-side">
      <!--          <a-icon class="graph-icon" type="fullscreen" size="large" @click="reset"/>-->

      <a-icon class="graph-icon" type="download" size="large" @click="downloadImage"/>
      <my-icon class="large-my-icon" type="icon-fuwei" @click="reset"/>
      <a-icon class="graph-icon" type="zoom-in" size="large" @click="graph.zoomTo(graph.getZoom()*1.1)"/>
      <a-icon class="graph-icon" type="zoom-out" size="large" @click="graph.zoomTo(graph.getZoom()*0.9)"/>
      <!--          <a-button class="graph-button" type="primary" shape="circle"-->
      <!--                    icon="customer-service" size="large" :ghost="!ifShowDialogCard" @click="changeShowDialogCard"/>-->
    </div>
  </div>
</template>

<script>
  import G6 from '@antv/g6';
  import {mapGetters} from 'vuex';

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

  export default {
    name: "G6Graph",
    data() {
      return {
        graph: {
          nodes: [],
          edges: [],
        },
      }
    },
    props: {
      nodes: [],
      edges: [],
      fetch: Function,
      changeFocus: Function,
    },
    mounted() {
      this.initG6()
    },
    computed: {
      ...mapGetters([
        'userInfo',
      ])
    },
    methods: {
      downloadImage() {
        this.graph.downloadFullImage(this.userInfo.userName + '的收藏图谱', 'image/png', {
          backgroundColor: '#ffffff',
          padding: 10
        })
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
            type: 'force',
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
          nodes: this.nodes.map(function (node, i) {
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
          edges: this.edges.map(function (edge, i) {
            edge.id = 'edge' + i;
            return Object.assign({}, edge);
          }),
        });
        this.graph.render();

        this.graph.on('node:dragstart', function (e) {
          _this.graph.layout();
          _this.refreshDragedNodePosition(e);
        });
        this.graph.on('node:drag', function (e) {
          const forceLayout = _this.graph.get('layoutController').layoutMethods[0];
          forceLayout.execute();
          _this.refreshDragedNodePosition(e);
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
          _this.curCommodity = e.item.get('model').commodityInfo
          _this.$props.changeFocus({..._this.curCommodity, collect: true})
        });
      },
      updateGraph() {

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
      refreshDragedNodePosition(e) {
        const model = e.item.get('model');
        model.fx = e.x;
        model.fy = e.y;
      },
      reset() {
        this.graph.zoomTo(1)
        this.graph.translate(-this.graph.getCanvasByPoint(0, 0).x, -this.graph.getCanvasByPoint(0, 0).y);
      },
    }
  }
</script>

<style scoped>
  #conversation-button {
    float: right;
    right: 1vw;
    top: 75vh;
    position: absolute;
  }

  .graph-icon {
    width: 100%;
    font-size: 25px;
    color: #ffa6a8;
    margin-bottom: 20px;
  }

  .graph-side {
    float: right;
    right: 0;
    bottom: 5vh;
    position: absolute;
    text-align: center;
  }

  .large-my-icon {
    font-size: 32px;
    margin-bottom: 18px;
  }
</style>
