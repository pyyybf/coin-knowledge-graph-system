<template>
  <a-layout id="components-layout-demo-top-side-2" hasSider="true">
    <a-layout style="padding: 0;flex:1">
      <a-row type="flex" justify="space-between" align="middle"
             :style="{ width: '100%', height:'60px',background: 'rgba(255,255,255,0.8)', padding: '3px 24px', margin: 0, minHeight: '0px'}">
        <a-col span="3">
          <a-breadcrumb style="margin: 16px 0">
            <a-breadcrumb-item>我的文件</a-breadcrumb-item>
            <a-breadcrumb-item>{{ fileName }}</a-breadcrumb-item>
          </a-breadcrumb>
        </a-col>
        <a-col span="3">
          <a @click="savePosotion">
            <a-icon type="save"/>
            保存当前布局
          </a>
        </a-col>
        <a-col span="2">
          <a @click="restoreZoom">
            <a-icon type="rollback"/>
            恢复布局
          </a>
        </a-col>
        <a-col span="4" offset="1">
          <a-radio-group value="typeset" @change="handleModeChange">
            <a-radio-button value="force">
              力导向图
            </a-radio-button>
            <a-radio-button value="typeset">
              排版模式
            </a-radio-button>
          </a-radio-group>
        </a-col>
        <a-col span="10" offset="1">
          <a-input-search
            style="font-family: Arial, Hiragino Sans GB, Microsoft Yahei"
            placeholder="请输入实体或关系名"
            enter-button
            @search="onSearch"
            v-model="curSearchText"
            allow-clear
          />
        </a-col>
        <!--                <a-col>-->
        <!--                    <a-button @click="test">TEST</a-button>-->
        <!--                </a-col>-->
      </a-row>
      <a-layout-content id="container"
                        :style="{ width: '100%', height:'580px',background: 'rgba(255,0,0,0)', padding: '0', margin: 0, minHeight: '280px'}"
      ></a-layout-content>
    </a-layout>
    <a-layout-sider theme="light"
                    width="350px"
                    style="background: white;border-left: gray"
                    v-model="collapsed"
                    :reverseArrow="true"
                    collapsible
    >
      <!--修改节点、关系属性-->
      <a-menu mode="inline" :open-keys="openKeys" style="width: 100%" @openChange="onOpenChange">
        <a-sub-menu key="add" @mousemove="collapsed=false">
          <span slot="title"><a-icon type="plus"/><span>添加</span></span>
          <a-tabs default-active-key="1" v-model="addKey" style="width: 86%;margin-left: 7%">
            <a-tab-pane key="1" tab="实体">
              <a-form-model :model="currentNodeData"
                            :label-col="{span:3,offset:1}"
                            :wrapper-col="{span:19}">
                <a-form-model-item label="名字">
                  <a-input v-model="currentNodeData.name"/>
                </a-form-model-item>
                <a-form-model-item label="类型">
                  <!--                  <a-input v-model="currentNodeData.entityType"/>-->
                  <a-auto-complete
                    :dataSource="nodeType"
                    v-model="currentNodeData.entityType"
                    placeholder="输入新类型/选择现有类型"
                    :filterOption="filterOptionEntity"
                    :allowClear=true
                  />
                </a-form-model-item>
                <a-form-model-item :wrapper-col="{ span: 20,offset:2}">
                  <a-button block @click="addNode">
                    插入新的实体
                  </a-button>
                </a-form-model-item>
              </a-form-model>
            </a-tab-pane>
            <a-tab-pane key="2" tab="关系">
              <a-form-model :model="currentLinkData"
                            :label-col="{span:3,offset:1}"
                            :wrapper-col="{span:19}">
                <!--修改关系-->
                <a-form-model-item label="标签">
                  <a-input v-model="currentLinkData.label"/>
                </a-form-model-item>
                <a-form-model-item label="起点">
                  <a-input v-model="currentLinkData.source"/>
                </a-form-model-item>
                <a-form-model-item label="终点">
                  <a-input v-model="currentLinkData.target"/>
                </a-form-model-item>
                <a-form-model-item label="类型">
                  <a-input v-model="currentLinkData.relationType"/>
                </a-form-model-item>
                <a-form-model-item label="线型">
                  <a-radio-group v-model="currentLinkData.lineType">
                    <a-radio value="0">
                      实线
                    </a-radio>
                    <a-radio value="1">
                      虚线
                    </a-radio>
                  </a-radio-group>
                </a-form-model-item>
                <a-form-model-item :wrapper-col="{ span: 19, offset: 4 }">
                  <a-button type="primary" @click="addLink">
                    确认
                  </a-button>
                  <a-button style="margin-left: 5%" @click="cancelAddLink">
                    取消
                  </a-button>
                </a-form-model-item>
              </a-form-model>
            </a-tab-pane>
          </a-tabs>
        </a-sub-menu>
        <!--修改现有实体/关系-->
        <a-sub-menu key="change" @mousemove="collapsed=false">
          <span slot="title"><a-icon type="edit"/><span>修改</span></span>
          <a-tabs default-active-key="1" v-model="changeKey" style="width: 86%;margin-left: 7%">
            <a-tab-pane key="1" tab="实体">
              <a-form-model :model="currentNodeData"
                            :label-col="{span:3,offset:1}"
                            :wrapper-col="{span:19}">
                <a-form-model-item label="名称">
                  <a-input v-model="currentNodeData.name"/>
                </a-form-model-item>

                <a-form-model-item label="颜色">
                  <div class="block">
                    <span class="demonstration"></span>
                    <el-color-picker v-model="currentNodeData.color"></el-color-picker>
                  </div>
                  <!--                                    <a-input v-model="currentNodeData.color"/>-->
                </a-form-model-item>
                <!--增加修改实体Type和实体形状-->
                <a-form-model-item label="类型">
                  <!--                                    <a-input v-model="currentNodeData.entityType"/>-->
                  <a-auto-complete
                    :dataSource="nodeType"
                    v-model="currentNodeData.entityType"
                    placeholder="输入新类型/选择现有类型"
                    :filterOption="filterOptionEntity"
                    :allowClear=true
                  />
                </a-form-model-item>
                <a-form-model-item label="形状">
                  <!--                                    <a-input v-model="currentNodeData.shape"/>-->
                  <a-select default-value="circle" @change="onChangeShape">
                    <a-select-option value="circle">
                      圆形
                    </a-select-option>
                    <a-select-option value="triangle">
                      三角形
                    </a-select-option>
                    <a-select-option value="rect">
                      矩形
                    </a-select-option>
                    <a-select-option value="star">
                      星形
                    </a-select-option>
                  </a-select>
                </a-form-model-item>

                <a-form-model-item label="大小">
                  <div class="block">
                    <span class="demonstration"></span>
                    <el-slider v-model="currentNodeData.entitySize"></el-slider>
                  </div>
                </a-form-model-item>

                <a-form-model-item label="字体">
                  <div class="block">
                    <span class="demonstration"></span>
                    <el-slider v-model="currentNodeData.fontSize"></el-slider>
                  </div>
                </a-form-model-item>

                <a-form-model-item :wrapper-col="{ span: 19,offset:4}">
                  <a-button type="primary" @click="changeNode">
                    确认修改
                  </a-button>
                  <a-button type="danger" style="margin-left: 5%" @click="deleteNode">
                    删除实体
                  </a-button>
                </a-form-model-item>
              </a-form-model>
            </a-tab-pane>
            <a-tab-pane key="2" tab="关系">
              <a-form-model :model="currentLinkData"
                            :label-col="{span:3,offset:1}"
                            :wrapper-col="{span:19}">
                <!--修改关系-->
                <a-form-model-item label="标签">
                  <a-input v-model="currentLinkData.label"/>
                </a-form-model-item>
                <a-form-model-item label="起点">
                  <a-input v-model="currentLinkData.source"/>
                </a-form-model-item>
                <a-form-model-item label="终点">
                  <a-input v-model="currentLinkData.target"/>
                </a-form-model-item>
                <a-form-model-item label="类型">
                  <!--                                    <a-input v-model="currentLinkData.relationType"/>-->
                  <a-auto-complete
                    :dataSource="linkType"
                    v-model="currentLinkData.relationType"
                    placeholder="输入新类型/选择现有类型"
                    :filterOption="filterOptionRelation"
                    :allowClear=true
                  />
                </a-form-model-item>
                <a-form-model-item label="线型">
                  <!--                                    type和lineType打混了...难怪改不了-->
                  <a-radio-group v-model="currentLinkData.lineType">
                    <a-radio value="0">
                      实线
                    </a-radio>
                    <a-radio value="1">
                      虚线
                    </a-radio>
                  </a-radio-group>
                </a-form-model-item>

                <a-form-model-item :wrapper-col="{ span: 19, offset: 4 }">
                  <a-button type="primary" @click="changeLink">
                    确认修改
                  </a-button>
                  <a-button type="danger" style="margin-left: 5%" @click="deleteLink">
                    删除关系
                  </a-button>
                </a-form-model-item>
              </a-form-model>
            </a-tab-pane>
          </a-tabs>
        </a-sub-menu>
        <!--导出图片，xml或json-->
        <a-sub-menu key="download">
          <span slot="title"><a-icon type="download"/><span>导出知识图谱</span></span>
          <a-menu-item key="9" @click="handleMenuClickDownload('1')">
            导出png文件
          </a-menu-item>
          <a-menu-item key="10" @click="handleMenuClickDownload('2')">
            导出xml文件
          </a-menu-item>
          <a-menu-item key="11" @click="handleMenuClickDownload('3')">
            导出json文件
          </a-menu-item>
        </a-sub-menu>
        <a-sub-menu key="history">
          <span slot="title"><a-icon type="history"/><span>搜索历史</span></span>
          <a-table :columns="searchHisColumn" :dataSource="searchHistory">
                        <span slot="action" slot-scope="record">
                            <a @click="searchNode(record.content)">搜索</a>
                            <a-divider type="vertical"/>
                            <a @click="deleteSearchHistory(record.id)">删除</a>
                        </span>
          </a-table>
        </a-sub-menu>
      </a-menu>
    </a-layout-sider>
  </a-layout>
</template>

<script>
  import G6 from '@antv/g6';
  import {mapGetters, mapMutations} from 'vuex';
  import OSS from 'ali-oss';
  import insertCss from 'insert-css';
  import {
    getEntitiesAPI,
    getRelationsAPI,
    // exportXMLFileAPI,
    getAllEntityTypesAPI,
    getEntityNumByTypeAPI,
    getAllRelationTypesAPI,
    getRelationNumByTypeAPI,
    getRelationNumByEntityAPI,
    updateEntityParadeAPI,
    updateCanvasParadeAPI,
    getCanvasParadeAPI, exportXMLFileAPI
  } from '../api'
  import {
    getSearchHistoryAPI,
    addSearchAPI,
    deleteSearchAPI,
  } from '../api/searchHistory'

  const COLOR_BOARD = ['#2474bf', '#184E80', '#309BFF', '#486e9e', '#2C8CE6'];
  const client = new OSS({
    bucket: 'pyyybf',
    region: 'oss-cn-shanghai',
    accessKeyId: 'LTAI4G3YDVKD453rLQRPeAQj',
    accessKeySecret: 'zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM',
  });

  export default {
    name: "Typeset",
    data() {
      return {
        checkedListNode: [],
        checkedListLink: [],
        color_default: '#409EFF',
        color_current: '',
        size_default: 30,
        size_current: 0,
        //用于存储要筛选的内容
        currentInputEntity: '',
        currentInputRelation: '',
        //存储多选框的内容
        dataSelect: {},
        curSearchText: '',
        searchHistory: [],
        searchHisColumn: [
          {
            title: '搜索内容',
            dataIndex: 'content',
            key: 'content',
          },
          {
            title: '操作',
            key: 'action',
            scopedSlots: {customRender: 'action'},
          },
        ],
        addKey: '1',
        changeKey: '1',
        rootSubmenuKeys: ['add', 'change', 'download', 'total', 'history'],
        openKeys: [],
        collapsed: true,
        nodesData: [
          {'name': 'Ada', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '未成年人'},
          {'name': 'Antonia', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '未成年人'},
          {'name': 'Caroline', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
          {'name': 'Cynthia', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
          {'name': 'Helen', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '未成年人'},
          {'name': 'Jamie', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
          {'name': 'Daniel', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
          {'name': 'Roy', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
          {'name': 'Stella', 'color': COLOR_BOARD[Math.floor(Math.random() * 5)], 'entityType': '成年人'},
        ],
        linksData: [
          {'source': 'Caroline', 'target': 'Antonia', 'label': 'couple', 'type': 0},
          {'source': 'Caroline', 'target': 'Ada', 'label': 'companion', 'type': 1},
          {'source': 'Caroline', 'target': 'Cynthia', 'label': 'penpal', 'type': 1},
          {'source': 'Caroline', 'target': 'Jamie', 'label': 'mentor', 'type': 1},
          {'source': 'Caroline', 'target': 'Helen', 'label': 'partner', 'type': 0},
          {'source': 'Helen', 'target': 'Antonia', 'label': 'confidante', 'type': 0},
          {'source': 'Cynthia', 'target': 'Ada', 'label': 'confidante', 'type': 1},
          {'source': 'Stella', 'target': 'Daniel', 'label': 'couple', 'type': 0},
          {'source': 'Stella', 'target': 'Roy', 'label': 'intimate', 'type': 1},
          {'source': 'Stella', 'target': 'Helen', 'label': 'aunt', 'type': 0},
        ],
        nodeType: ['成年人', '未成年人'],
        // nodeType: ['Ada', 'Helen'],
        nodeTypeNum: [6, 3],
        nodeStatistics: [],
        linkType: ['家庭关系', '工作关系', '朋友关系', '师生关系'],
        // linkType: ['couple', 'confidante', 'partner', 'aunt'],
        linkTypeNum: [3, 2, 4, 1],
        nodeLink: [
          {value: 2, name: 'Ada'},
          {value: 2, name: 'Antonia'},
          {value: 5, name: 'Caroline'},
          {value: 2, name: 'Cynthia'},
          {value: 3, name: 'Helen'},
          {value: 1, name: 'Jamie'},
          {value: 1, name: 'Daniel'},
          {value: 1, name: 'Roy'},
          {value: 3, name: 'Stella'}
        ],
        // 绘制
        g6Width: 0,
        g6Height: 540,
        graph: {},
        simulation: {},
        node: {},
        link: {},
        nodeTexts: {},
        linkTexts: {},
        arrowMarker: {},
        filter: {},
        curK: 1,
        // 增删改
        tabListNoTitle: [
          {
            key: 'node',
            tab: '实体',
          },
          {
            key: 'link',
            tab: '关系',
          },
        ],
        noTitleKey: 'node',
        nodeIdx: 0,
        linkIdx: 0,
        currentNodeData: {
          id: -1,
          backId: -1,
          color: '',
          name: '',
          type: '',
          index: -1,
          entitySize: 40,
          x: 0.5,
          y: 0.5,
          //迭代二新增
          shape: '',
          entityType: '',
        },
        currentLinkData: {
          id: -1,
          type: '',  //线形状的类型
          backId: -1,  //后端数据库中id
          label: '',
          source: '',
          target: '',
          index: -1,
          //
          relationType: '',
          color: '',
          lineType: -1,  //实线or虚线
        },
        data: {},
        temp: [],
        lastZoom: 1,
        //lastZoom:0.43046721000000016,
        //lastPoint: {x : 67.44361059999999,y : 42.14262319999999},
        lastPoint: {x: 0, y: 0},
        newPoint: {x: 0, y: 0},
        graphType: 'grid',
        visible1: false,
        visible2: false,
        visible3: false,
        visible4: false,
        paradeNum: 0,
        distance: 100,

      }
    },
    computed: {
      ...mapGetters([
        'fileId',
        'fileName',
      ])
    },
    async mounted() {
      await this.set_file({
        fileId: Number(this.$route.params.fileId),
        fileName: this.$route.params.fileName,
      })
      var res = await getSearchHistoryAPI(this.fileId)
      this.searchHistory = res.data.content
      await this.getData(this.fileId)
      await this.getStatistic(this.fileId)
      this.nodeIdx = this.nodesData.length
      this.linkIdx = this.linksData.length
      this.initGraph();
      this.getDistance();
    },
    watch: {
      collapsed: function (val) {
        if (val) {
          this.openKeys = []
        }
      },
    },
    methods: {
      ...mapMutations([
        'set_file',
      ]),

      handleModeChange(e) {
        if (e.target.value == 'force') {
          this.changeToParade()
        }
      },
      changeToParade() {
        this.$router.push({name: 'editor', params: {fileId: this.fileId, fileName: this.fileName}})
      },

      onOpenChange(openKeys) {
        // console.log(openKeys)
        const latestOpenKey = openKeys.find(key => this.openKeys.indexOf(key) === -1);
        if (this.rootSubmenuKeys.indexOf(latestOpenKey) === -1) {
          this.openKeys = openKeys;
        } else {
          this.openKeys = latestOpenKey ? [latestOpenKey] : [];
        }
      },
      async getStatistic(fileId) {
        var res1 = await getAllEntityTypesAPI(fileId);
        this.nodeType = res1.data.content;
        this.nodeTypeNum = []
        for (let i = 0; i < res1.data.content.length; i++) {
          var res2 = await getEntityNumByTypeAPI({fileId: fileId, entityType: this.nodeType[i]});
          this.nodeTypeNum[i] = res2.data.content;
        }
        var res3 = await getAllRelationTypesAPI(fileId);
        this.linkType = res3.data.content;
        this.linkTypeNum = [];
        for (let i = 0; i < res3.data.content.length; i++) {
          var res4 = await getRelationNumByTypeAPI({fileId: fileId, relationType: this.linkType[i]});
          this.linkTypeNum[i] = res4.data.content;
        }
        this.nodeLink = [];
        for (let i = 0; i < this.nodesData.length; i++) {
          var res5 = await getRelationNumByEntityAPI({fileId: fileId, entityName: this.nodesData[i].id});
          this.nodeLink.push({
            value: res5.data.content,
            name: this.nodesData[i].id
          })
        }
      },
      async getData(fileId) {
        var res1 = await getEntitiesAPI(fileId);
        // console.log(res1.data.content)
        var res2 = await getRelationsAPI(fileId);
        var resZoom = await getCanvasParadeAPI(this.fileId);
        console.log(resZoom)
        this.lastPoint.x = resZoom.data.content[1];
        this.lastPoint.y = resZoom.data.content[2];
        this.lastZoom = resZoom.data.content[0];
        this.nodesData = []
        var mark = 0;
        for (let i = 0; i < res1.data.content.length; i++) {
          var aa = res1.data.content[i].x2;
          var bb = res1.data.content[i].y2;
          if (aa == 0.5 || bb == 0.5) {
            mark = mark + 1;
          }
          this.nodesData.push({
            label: res1.data.content[i].name,
            style: {fill: res1.data.content[i].color},
            // id: res1.data.content[i].id,
            id: res1.data.content[i].name,
            size: 40 * 1.5,
            backId: res1.data.content[i].id,
            exist: true,
            x: aa,
            y: bb,
          })
        }
        if (mark <= 2) {
          this.graphType = 'forcedddd'
        }
        this.linksData = []
        for (let i = 0; i < res2.data.content.length; i++) {
          this.linksData.push({
            source: res2.data.content[i].e1,
            target: res2.data.content[i].e2,
            label: res2.data.content[i].name,
            style: {
              lineDash: res2.data.content[i].lineType == 0 ? [1, 0] : [5, 4]
            },
            backId: res2.data.content[i].id,
            lineType: res2.data.content[i].lineType,
            exist: true
          })
        }
        this.data = {
          nodes: this.nodesData,
          edges: this.linksData
        };
        // console.log(this.nodesData)
        // console.log(this.linksData)
      },
      onChangeGraph() {
        console.log(this.checkedListNode)
        console.log(this.checkedListLink)
        // console.log(searchText)
        this.clearAllStats()

        var that = this
        for (let i = 0; i < this.checkedListNode.length; i++) {
          console.log('in')
          console.log(this.checkedListNode[i])
        }

        //用于暂存边导致需要显示的节点类型
        var selectedNode = []

        that.graph.getEdges().forEach(function (edge) {
          that.graph.clearItemStates(edge);
          // console.log('edge in')
          // console.log(edge.getModel())

          that.graph.setItemState(edge, 'dark', true);
          for (let i = 0; i < that.checkedListLink.length; i++) {
            if (edge.getModel().relationType == that.checkedListLink[i]) {
              that.graph.setItemState(edge, 'dark', false);
              that.graph.setItemState(edge, 'highlight', true);
              edge.toFront();
              if (selectedNode.indexOf(edge.getModel().source) == -1) {
                selectedNode.push(edge.getModel().source);
              }
              if (selectedNode.indexOf(edge.getModel().target) == -1) {
                selectedNode.push(edge.getModel().target);
              }
            }

            console.log(selectedNode);
            // that.graph.setItemState(edge, 'highlight', false);
          }
        });

        this.graph.getNodes().forEach(function (node) {
          that.graph.clearItemStates(node);
          // console.log(node.getModel())
          // console.log('oneNode')
          that.graph.setItemState(node, 'dark', true);
          for (let i = 0; i < selectedNode.length; i++) {
            // console.log(this.dataSelect.content[i])
            // console.log(that.checkedListNode[i])
            if (node.getID() == selectedNode[i]) {
              that.graph.setItemState(node, 'dark', false);
              that.graph.setItemState(node, 'highlight', true);
            }
          }
          for (let i = 0; i < that.checkedListNode.length; i++) {
            if (node.getModel().entityType == that.checkedListNode[i]) {
              that.graph.setItemState(node, 'dark', false);
              that.graph.setItemState(node, 'highlight', true);
            }
          }
          // console.log(node.getModel())
          // console.log(node.getID())
        });

        that.graph.paint();
        that.graph.setAutoPaint(true);
      },
      initGraph() {
        var that = this

        insertCss(`
  .tmp {
    background-color: rgba(255, 255,255, 0.8);
    padding: 0px 10px 24px 10px;
    border-radius: 50px;
    font-color:'#ff0000';
  }
`);

        const tooltip1 = new G6.Menu({
          offsetX: -25,
          offsetY: 45,
          className: 'tmp',
          // fixToNode: [0, 1.1],
          // v4.2.1 起支持配置 trigger，click 代表点击后出现 tooltip。默认为 mouseenter
          trigger: 'click',
          // the types of items that allow the tooltip show up
          // 允许出现 tooltip 的 item 类型
          itemTypes: ['node'],
          // custom the tooltip's content
          // 自定义 tooltip 内容
          getContent: () => {
            const outDiv = document.createElement('div');
            outDiv.align = 'center'
            outDiv.style.width = '30px';
            outDiv.style.height = '30px';
            outDiv.style.padding = '0 0 0 0';
            outDiv.innerHTML = `
            <a style="font-size: 25px">D</a>
`;
            return outDiv;
          },
          handleMenuClick: (target, item) => {
            // console.log('in')
            // console.log(target)
            // console.log(item)
            that.currentNodeData = item.get('model')
            that.downPosition()
          }

        });
        const tooltip2 = new G6.Menu({
          offsetX: -25,
          offsetY: -90,
          className: 'tmp',
          // fixToNode: [0, 1.1],
          // v4.2.1 起支持配置 trigger，click 代表点击后出现 tooltip。默认为 mouseenter
          trigger: 'click',
          // the types of items that allow the tooltip show up
          // 允许出现 tooltip 的 item 类型
          itemTypes: ['node'],
          // custom the tooltip's content
          // 自定义 tooltip 内容
          getContent: () => {
            const outDiv = document.createElement('div');
            outDiv.align = 'center'
            outDiv.style.width = '30px';
            outDiv.style.height = '30px';
            outDiv.style.padding = '0 0 0 0';
            outDiv.innerHTML = `
            <a style="font-size: 25px">U</a>
`;
            return outDiv;
          },
          handleMenuClick: (target, item) => {
            // console.log('in')
            // console.log(target)
            // console.log(item)
            that.currentNodeData = item.get('model')
            that.upPosition()
          }

        });
        const tooltip3 = new G6.Menu({
          offsetX: -90,
          offsetY: -25,
          className: 'tmp',
          // fixToNode: [0, 1.1],
          // v4.2.1 起支持配置 trigger，click 代表点击后出现 tooltip。默认为 mouseenter
          trigger: 'click',
          // the types of items that allow the tooltip show up
          // 允许出现 tooltip 的 item 类型
          itemTypes: ['node'],
          // custom the tooltip's content
          // 自定义 tooltip 内容
          getContent: () => {
            const outDiv = document.createElement('div');
            outDiv.align = 'center'
            outDiv.style.width = '30px';
            outDiv.style.height = '30px';
            outDiv.style.padding = '0 0 0 0';
            outDiv.innerHTML = `
            <a style="font-size: 25px">L</a>
`;
            return outDiv;
          },
          handleMenuClick: (target, item) => {
            // console.log('in')
            // console.log(target)
            // console.log(item)
            className: 'tmp',
              that.currentNodeData = item.get('model')
            that.leftPosition()
          }

        });
        const tooltip4 = new G6.Menu({
          offsetX: 45,
          offsetY: -25,
          className: 'tmp',
          // fixToNode: [0, 1.1],
          // v4.2.1 起支持配置 trigger，click 代表点击后出现 tooltip。默认为 mouseenter
          trigger: 'click',
          // the types of items that allow the tooltip show up
          // 允许出现 tooltip 的 item 类型
          itemTypes: ['node'],
          // custom the tooltip's content
          // 自定义 tooltip 内容
          getContent: () => {
            const outDiv = document.createElement('div');
            outDiv.align = 'center'
            outDiv.style.width = '30px';
            outDiv.style.height = '30px';
            outDiv.style.padding = '0 0 0 0';
            outDiv.innerHTML = `
            <a style="font-size: 25px">R</a>
`;
            return outDiv;
          },
          handleMenuClick: (target, item) => {
            that.currentNodeData = item.get('model')
            that.rightPosition()
          }

        });

        // 准备画布
        this.g6Width = document.getElementById('container').offsetWidth;
        this.g6Height = document.getElementById('container').offsetHeight;
        this.graph = new G6.Graph({
          container: 'container',
          width: this.g6Width,
          height: this.g6Height,
          linkCenter: true,
          animate: true,
          layout: {
            type: this.graphType,
            width: this.g6Width - 20,
            height: this.g6Height - 20,
            sortBy: 'entityType',
          },
          plugins: [tooltip1, tooltip2, tooltip3, tooltip4],
          defaultNode: {
            color: '#cccccc',
            size: 60,
            anchorPoints: [0, 0]
          },
          defaultEdge: {
            type: 'quadratic',
            style: {
              stroke: '#486E9E',
              lineWidth: 1,
              lineAppendWidth: 4,
              endArrow: {
                path: G6.Arrow.triangle(10, 15, 30), // 使用内置箭头路径函数，参数为箭头的 宽度、长度、偏移量（默认为 0，与 d 对应）
                d: 30,
                lineDash: [1, 0],
                fill: '#486E9E',
              },
            },
            labelCfg: {
              autoRotate: true,
              refY: 10,
            },
          },
          nodeStateStyles: {
            highlight: {
              opacity: 1,
            },
            dark: {
              opacity: 0.3,
            },
          },
          edgeStateStyles: {
            highlight: {
              opacity: 1,
            },
            dark: {
              opacity: 0.1,
              stroke: '#486E9E',
            },
            toself: {
              endArrow: {
                path: G6.Arrow.triangle(10, 15, 0), // 使用内置箭头路径函数，参数为箭头的 宽度、长度、偏移量（默认为 0，与 d 对应）
                d: 0,
                lineDash: [1, 0],
                fill: '#486E9E',
              },
            }
          },
          modes: {
            default: ['zoom-canvas', 'drag-canvas', 'activate-relations'],
            addNode: ['click-add-node'],
            addLink: ['click-add-edge'],
            changeLight: ['click-to-dark'],
          },
        });

        G6.Util.processParallelEdges(this.data.edges);
        const nodes = this.data.nodes;
        this.graph.data({
          nodes,
          edges: this.data.edges.map(function (edge, i) {
            edge.id = 'edge' + i;
            return Object.assign({}, edge);
          }),
        });
        this.graph.render();
        //将画布比例恢复为上次的比例 以及画布中心的坐标恢复
        this.graph.zoomTo(this.lastZoom)
        console.log(this.lastZoom)
        this.newPoint.x = this.graph.getCanvasByPoint(0, 0).x;
        this.newPoint.y = this.graph.getCanvasByPoint(0, 0).y;
        this.graph.translate(this.lastPoint.x - this.newPoint.x, this.lastPoint.y - this.newPoint.y);

        this.graph.on('node:contextmenu', function (e) {
          that.currentNodeData = e.item.get('model');
          console.log(that.currentNodeData)
          const item = e.item;
          that.graph.setAutoPaint(false);
          that.graph.getNodes().forEach(function (node) {
            // console.log(node.getID())
            that.graph.clearItemStates(node);
            that.graph.setItemState(node, 'dark', true);
          });
          that.graph.setItemState(item, 'dark', false);
          that.graph.setItemState(item, 'highlight', true);
          that.graph.getEdges().forEach(function (edge) {
            that.graph.setItemState(edge, 'highlight', false);
            that.graph.setItemState(edge, 'dark', true);
            edge.toFront();
          });
          that.graph.paint();
          that.graph.setAutoPaint(true);
          that.graph.setMode('changeLight')
          that.graph.off('node:mouseleave', this.clearAllStats)
        })

        G6.registerBehavior('click-to-dark', {
          getEvents() {
            return {
              'canvas:click': 'onClick',
              'node:mouseleave': 'mouseleave'
            };
          },
          // mouseleave(){
          //   that.graph.off('node:mouseleave', this.clearAllStats)
          // },
          onClick() {
            console.log('sfs')
            that.clearAllStats()
            that.graph.setMode('default')
            //that.graph.on('node:mouseleave', this.clearAllStats);
            that.currentNodeData = {
              id: -1,
              backId: -1,
              color: '',
              name: '',
              type: '',
              index: -1,
              entitySize: 40,
              x: 0.5,
              y: 0.5,
            }
          }
        });
      },
      clearAllStats() {
        var that = this
        this.graph.setAutoPaint(false);
        this.graph.getNodes().forEach(function (node) {
          that.graph.clearItemStates(node);
        });
        this.graph.getEdges().forEach(function (edge) {
          that.graph.clearItemStates(edge);
        });
        this.graph.paint();
        this.graph.setAutoPaint(true);
      },


      changeToPower() {
        var that = this;
        that.$router.push({name: 'editor', params: {fileId: this.fileId, fileName: this.fileName}})
      },

      getDistance() {
        for (let i = 0; i < this.nodesData.length; i++) {
          for (let j = i + 1; j < this.nodesData.length; j++) {
            if (this.nodesData[i].y === this.nodesData[j].y) {
              if (this.nodesData[i].x > this.nodesData[j].x) {
                this.distance = this.nodesData[i].x - this.nodesData[j].x
                break;
              }
              if (this.nodesData[j].x > this.nodesData[i].x) {
                this.distance = this.nodesData[j].x - this.nodesData[i].x
                break;
              }
            }
          }
        }
        if (this.distance > 400) {
          this.distance = 200
        }
        //console.log(this.distance)
      },

      upPosition() {
        console.log('up')
        if (this.currentNodeData.backId == -1) {
          console.log('no node')
        } else {
          var inv = 0;
          //this.currentNodeData.x=this.currentNodeData.x+this.distance
          this.currentNodeData.y = this.currentNodeData.y - this.distance
          for (let i = 0; i < this.nodesData.length; i++) {
            if (this.nodesData[i].id == this.currentNodeData.id) {
              this.currentNodeData.backId = this.nodesData[i].backId
              //this.nodesData[i].x = this.currentNodeData.x
              this.nodesData[i].y = this.currentNodeData.y
              inv = i
              break;
            }
          }

          //updateEntityPositionAPI(this.currentNodeData.backId)
          this.graph.updateItem(this.graph.getNodes()[inv], {
            //x: this.currentNodeData.x,
            y: this.currentNodeData.y
          })
        }

      },
      downPosition() {
        console.log('down')
        if (this.currentNodeData.backId == -1) {
          console.log('no node')
        } else {
          var inv = 0;
          //console.log(this.currentNodeData)
          //this.currentNodeData.x=this.currentNodeData.x+this.distance
          this.currentNodeData.y = this.currentNodeData.y + this.distance
          for (let i = 0; i < this.nodesData.length; i++) {
            if (this.nodesData[i].id == this.currentNodeData.id) {
              this.currentNodeData.backId = this.nodesData[i].backId
              //this.nodesData[i].x = this.currentNodeData.x
              this.nodesData[i].y = this.currentNodeData.y
              inv = i
              break;
            }
          }

          //updateEntityPositionAPI(this.currentNodeData.backId)
          this.graph.updateItem(this.graph.getNodes()[inv], {
            //x: this.currentNodeData.x,
            y: this.currentNodeData.y
          })
        }
      },
      leftPosition() {
        console.log('left')
        if (this.currentNodeData.backId == -1) {
          console.log('no node')
        } else {
          var inv = 0;
          //console.log(this.currentNodeData)
          this.currentNodeData.x = this.currentNodeData.x - this.distance
          //this.currentNodeData.y=this.currentNodeData.y-this.distance
          for (let i = 0; i < this.nodesData.length; i++) {
            if (this.nodesData[i].id == this.currentNodeData.id) {
              this.currentNodeData.backId = this.nodesData[i].backId
              this.nodesData[i].x = this.currentNodeData.x
              //this.nodesData[i].y = this.currentNodeData.y
              inv = i
              break;
            }
          }

          //updateEntityPositionAPI(this.currentNodeData.backId)
          this.graph.updateItem(this.graph.getNodes()[inv], {
            x: this.currentNodeData.x,
            //y: this.currentNodeData.y
          })
        }
      },
      rightPosition() {
        console.log('right')
        if (this.currentNodeData.backId == -1) {
          console.log('no node')
        } else {
          var inv = 0;
          //console.log(this.currentNodeData)
          this.currentNodeData.x = this.currentNodeData.x + this.distance
          //this.currentNodeData.y=this.currentNodeData.y-this.distance
          for (let i = 0; i < this.nodesData.length; i++) {
            if (this.nodesData[i].id == this.currentNodeData.id) {
              this.currentNodeData.backId = this.nodesData[i].backId
              this.nodesData[i].x = this.currentNodeData.x
              //this.nodesData[i].y = this.currentNodeData.y
              inv = i
              break;
            }
          }

          //updateEntityPositionAPI(this.currentNodeData.backId)
          this.graph.updateItem(this.graph.getNodes()[inv], {
            x: this.currentNodeData.x,
            //y: this.currentNodeData.y
          })
        }
      },

      savePosotion() {
        //alert("保存成功")
        //console.log(this.graph.getNodes())
        //console.log(this.graph.getZoom())
        this.lastZoom = this.graph.getZoom()
        this.lastPoint.x = this.graph.getCanvasByPoint(0, 0).x;
        this.lastPoint.y = this.graph.getCanvasByPoint(0, 0).y;
        //console.log(this.lastPoint)
        for (let i = 0; i < this.graph.getNodes().length; i++) {
          console.log(this.graph.getNodes()[i]._cfg.model.backId)
          updateEntityParadeAPI({
            backId: this.graph.getNodes()[i]._cfg.model.backId,
            x: this.graph.getNodes()[i]._cfg.bboxCache.centerX,
            y: this.graph.getNodes()[i]._cfg.bboxCache.centerY
          });
        }
        updateCanvasParadeAPI({
            fileId: this.fileId,
            zoom: this.lastZoom,
            x: this.lastPoint.x,
            y: this.lastPoint.y
          }
        )
        this.$message.success("保存成功")

      },
      restoreZoom() {
        this.graph.render();
        this.graph.zoomTo(this.lastZoom)
        console.log(this.lastZoom)
        this.newPoint.x = this.graph.getCanvasByPoint(0, 0).x;
        this.newPoint.y = this.graph.getCanvasByPoint(0, 0).y;
        this.graph.translate(this.lastPoint.x - this.newPoint.x, this.lastPoint.y - this.newPoint.y);
      },

      async onSearch(searchText) {
        if (searchText == '') {
          this.clearAllStats()
          return
        }
        await addSearchAPI({
          fileId: this.fileId,
          searchText: searchText,
        });
        this.searchNode(searchText)
        var res = await getSearchHistoryAPI(this.fileId)
        this.searchHistory = res.data.content
      },
      searchNode(searchText) {
        this.curSearchText = searchText;
        this.clearAllStats()
        if (searchText == '') {
          return
        }
        var that = this
        this.graph.setAutoPaint(false);
        this.graph.getNodes().forEach(function (node) {
          // that.graph.clearItemStates(node);
          that.graph.setItemState(node, 'dark', true);
          console.log(node.getModel())
          if (node.getID().indexOf(searchText) != -1 || node.getModel().type.indexOf(searchText) != -1) {
            that.graph.setItemState(node, 'dark', false);
            that.graph.setItemState(node, 'highlight', true);
          }
        });
        this.graph.getEdges().forEach(function (edge) {
          that.graph.clearItemStates(edge)
          if (edge.getModel().label.indexOf(searchText) != -1) {
            that.graph.setItemState(edge, 'highlight', true);
            that.graph.setItemState(edge, 'dark', false);
            edge.toFront();
          } else {
            that.graph.setItemState(edge, 'highlight', false);
            that.graph.setItemState(edge, 'dark', true);
          }
        });
        this.graph.paint();
        this.graph.setAutoPaint(true);
      },
      async deleteSearchHistory(searchId) {
        await deleteSearchAPI(searchId)
        var res = await getSearchHistoryAPI(this.fileId)
        this.searchHistory = res.data.content
      },
      async handleMenuClickDownload(key) {
        // console.log(menuItem)
        if (key == 1) {
          this.graph.downloadFullImage(this.fileName, 'image/png', {
            backgroundColor: '#ffffff',
            padding: 10
          })
        } else if (key == 2) {
          const filename = this.fileName + '.xml' // filename为自定义下载后的文件名
          const response = {
            'content-disposition': `attachment; filename=${encodeURIComponent(filename)}`
          }
          var res = await exportXMLFileAPI(this.fileId)
          console.log(res)
          const url = client.signatureUrl(this.fileName + '/' + filename, {response});
          let a = document.createElement("a");
          a.href = url;
          a.click();
        } else if (key == 3) {
          let jsonContent = this.graph.save();
          let el = document.createElement('a');
          el.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(JSON.stringify(jsonContent)));
          el.setAttribute('download', this.fileName + '.json');
          el.click()
        }
      },
    }
  }

</script>

<style scoped>

</style>
