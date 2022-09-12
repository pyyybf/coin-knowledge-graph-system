<template>
  <a-layout id="components-layout-demo-top-side-2" hasSider="true">
    <a-layout style="padding: 0;flex:1">
      <a-row type="flex" justify="space-between" align="middle"
             :style="{ width: '100%', height:'60px',background: 'rgba(255,255,255,0.8)', padding: '3px 24px', margin: 0, minHeight: '0px'}">
        <a-col span="3">
          <a-breadcrumb style="margin: 16px 0">
            <a-breadcrumb-item>我的文件</a-breadcrumb-item>
            <a-breadcrumb-item>{{fileName}}</a-breadcrumb-item>
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
          <a-radio-group value="force" @change="handleModeChange">
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
        <!--        <a-col>-->
        <!--          <a-button @click="test">TEST</a-button>-->
        <!--        </a-col>-->
      </a-row>

      <a-modal width="560px" v-model="visible1" title="实体与关系的数量" :footer="null">
        <div class="righttop" ref="charts" :style="{width:'100%',height:'280px',background: 'rgba(255,0,0,0)'}"></div>
        <div class="explain" :style="{width:'100%',height:'50px'}">图例展示了在此知识图谱中实体与关系的数量分布，即实体和关系的数目</div>
      </a-modal>
      <a-modal width="560px" v-model="visible2" title="实体类型与实体类型数量" :footer="null">
        <div class="righttop" ref="charts2"
             :style="{width:'100%',height:'280px',background: 'rgba(255,0,0,0)'}"></div>
        <div class="explain" :style="{width:'100%',height:'50px'}">图例展示了在此知识图谱中实体类型与实体类型数量分布，即每个实体类型的数量</div>
      </a-modal>
      <a-modal width="560px" v-model="visible3" title="关系类型与关系类型数量" :footer="null">
        <div class="righttop" ref="charts3"
             :style="{width:'100%',height:'280px',background: 'rgba(255,0,0,0)'}"></div>
        <div class="explain" :style="{width:'100%',height:'50px'}">图例展示了在此知识图谱中关系类型与关系类型数量分布，即每个关系类型的数量</div>
      </a-modal>
      <a-modal width="560px" v-model="visible4" title="实体包含的关系数量" :footer="null">
        <div class="righttop" ref="charts4"
             :style="{width:'100%',height:'280px',background: 'rgba(255,0,0,0)'}"></div>
        <div class="explain" :style="{width:'100%',height:'50px'}">图例展示了在此知识图谱中实体包含关系数，即每个实体含有的关系数量</div>
      </a-modal>
      <a-layout style="height: 600px">
        <a-layout-sider width="230px" style="height:100%;background: #ffffff;padding:24px 0 0 24px;overflow:auto">
          <a-button :type="ifAddLine?'danger':'primary'" @click="ifAddLine=!ifAddLine">
            {{ifAddLine?'关闭连线模式':'开启连线模式'}}
          </a-button>
          <br/><br/>
          <a-checkbox :default-checked="true" :checked="labelVisible" @change="changeRelationLabel">
            显示关系标签
          </a-checkbox>
          <br/><br/>
          <h2>统计数据表</h2>
          <a @click="showModal1">实体与关系的数量</a><br/>
          <a @click="showModal2">实体类型与实体类型数量</a><br/>
          <a @click="showModal3">关系类型与关系类型数量</a><br/>
          <a @click="showModal4">实体包含的关系数量</a><br/><br/>
          <a-checkbox-group v-model="checkedListNode" @change="onChangeGraph">
            <a-row>
              <a-col span="24"><h2>实体类型</h2></a-col>
              <a-col v-for="nodeTypeItem in nodeType" :key="nodeTypeItem" :span="24">
                <a-checkbox :value="nodeTypeItem">
                  {{nodeTypeItem}}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
          <br/><br/>
          <a-checkbox-group v-model="checkedListLink" @change="onChangeGraph">
            <a-row>
              <a-col span="24"><h2>关系类型</h2></a-col>
              <a-col v-for="linkTypeItem in linkType" :key="linkTypeItem" :span="24">
                <a-checkbox :value="linkTypeItem">
                  {{linkTypeItem}}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
        </a-layout-sider>
        <a-layout-content id="container"
                          :style="{ height:'100%',background: 'rgba(0,255,0,0)', padding: 0, margin: 0, minHeight: '280px',overflow:'hidden'}">
        </a-layout-content>
      </a-layout>
    </a-layout>
    <a-layout-sider theme="light"
                    width="350px"
                    :style="{overflow: 'auto'}"
                    v-model="collapsed"
                    :reverseArrow="true"
                    collapsible
    >
      <!--修改节点、关系属性-->
      <a-menu mode="inline" :open-keys="openKeys" style="width: 100%" @openChange="onOpenChange">
        <!--添加新的实体/关系-->
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
                  <a-auto-complete
                    :dataSource="linkType"
                    v-model="currentLinkData.relationType"
                    placeholder="输入新类型/选择现有类型"
                    :filterOption="filterOptionRelation"
                    :allowClear=true
                  />
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
        <!--统计数据mxl-->

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
  import {
    getEntitiesAPI,
    getRelationsAPI,
    addEntityAPI,
    addRelationAPI,
    deleteEntityAPI,
    deleteRelationAPI,
    updateEntityAPI,
    updateRelationAPI,
    exportXMLFileAPI,
    getAllEntityTypesAPI,
    getEntityNumByTypeAPI,
    getAllRelationTypesAPI,
    getRelationNumByTypeAPI,
    getRelationNumByEntityAPI,
    updateEntityPositionAPI,
    updateCanvasPositionAPI,
    getCanvasZoomAPI,
    getCanvasPointXAPI,
    getCanvasPointYAPI,
    setRelationLabelVisibleOrNotAPI
  } from '../api'
  import {
    getSearchHistoryAPI,
    addSearchAPI,
    deleteSearchAPI,
  } from '../api/searchHistory'

  let echarts = require('echarts/lib/echarts')
  require('echarts/lib/chart/bar') //柱状图
  require('echarts/lib/chart/pie') //饼图
  require('echarts/lib/component/tooltip')
  require('echarts/lib/component/title')
  require("echarts/lib/component/grid")

  const COLOR_BOARD = ['#2474bf', '#184E80', '#309BFF', '#486e9e', '#2C8CE6']; //默认色卡
  const client = new OSS({
    bucket: 'pyyybf',
    region: 'oss-cn-shanghai',
    accessKeyId: 'LTAI4G3YDVKD453rLQRPeAQj',
    accessKeySecret: 'zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM',
  });

  export default {
    name: "Editor",
    data() {
      return {
        checkedListNode: [],
        checkedListLink: [],
        color_default: '#409EFF',
        color_current: '',
        size_default: 30,
        size_current: 0,
        fontSize_default: 16,
        fontSize_current: 0,
        shape_current: 'circle',
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
        nodesData: [],
        linksData: [],
        nodeType: [],
        nodeTypeNum: [6, 3],
        nodeStatistics: [],
        linkType: [],
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
          entitySize: 0,
          x: 0.5,
          y: 0.5,
          //迭代二新增
          fontSize: 10,
          shape: '',
          entityType: '',
        },
        currentLinkData: {
          id: -1,
          backId: -1,
          label: '',
          source: '',
          target: '',
          lineType: 0,
          relationType: ''
        },
        data: {},
        temp: [],
        lastZoom: 1,
        //lastZoom:0.43046721000000016,
        //lastPoint: {x : 67.44361059999999,y : 42.14262319999999},
        lastPoint: {x: 0, y: 0},
        newPoint: {x: 0, y: 0},
        graphType: 'force',
        visible1: false,
        visible2: false,
        visible3: false,
        visible4: false,
        paradeNum: 0,
        ifAddLine: false,
        labelVisible: true,
      }
    },
    computed: {
      ...mapGetters([
        'fileId',
        'fileName',
      ])
    },
    async mounted() {
      console.log('editor')
      await this.set_file({
        fileId: Number(this.$route.params.fileId),
        fileName: this.$route.params.fileName,
      })
      var res = await getSearchHistoryAPI(this.fileId)
      this.searchHistory = res.data.content
      console.log(this.searchHistory)
      await this.getData(this.fileId)
      await this.getStatistic(this.fileId)
      this.nodeIdx = this.nodesData.length
      this.linkIdx = this.linksData.length
      this.initGraph();

      this.initBarChart1()
      this.initBarChart2()
      this.initBarChart3()
      this.initBarChart4()
    },
    watch: {
      collapsed: function (val) {
        if (val) {
          this.openKeys = []
        }
      },
      visible1: function (val) {
        if (val) {
          this.initBarChart1()
        }
      },
      visible2: function (val) {
        if (val) {
          this.initBarChart2()
        }
      },
      visible3: function (val) {
        if (val) {
          this.initBarChart3()
        }
      },
      visible4: function (val) {
        if (val) {
          this.initBarChart4()
        }
      },
      ifAddLine: function (val) {
        if (val) {
          this.graph.setMode('clickAddEdge')
        } else {
          this.graph.setMode('default')
        }
      }
    },
    methods: {
      ...mapMutations([
        'set_file',
      ]),

      handleModeChange(e) {
        if (e.target.value == 'typeset') {
          this.changeToParade()
        }
      },
      //切换为排版模式
      changeToParade() {
        this.$router.push({name: 'typeset', params: {fileId: this.fileId, fileName: this.fileName}})
      },

      //pyy
      filterOptionEntity(input, option) {
        // console.log(input)
        this.currentInputEntity = input
        // console.log(this.currentInputEntity)

        // if (this.nodeType.indexOf(this.currentInputEntity) == -1) {
        //   this.nodeType.push(this.currentInputEntity)
        // }

        if (this.nodeType)
          console.log(this.nodeType)
        return (
          parseInt(option.componentOptions.children[0].text) >= parseInt(input)
        );
      },
      filterOptionRelation(input, option) {
        // console.log(input)
        this.currentInputRelation = input
        // console.log(this.currentInputRelation)

        // if (this.linkType.indexOf(this.currentInputRelation) == -1) {
        //   this.linkType.push(this.currentInputRelation)
        // }

        return (
          parseInt(option.componentOptions.children[0].text) >= parseInt(input)
        );
      },

      //筛选功能中改变图案显示
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
              // that.graph.setItemState(edge, 'highlight', true);
              edge.toFront();
              // if (selectedNode.indexOf(edge.getModel().source) == -1) {
              //   selectedNode.push(edge.getModel().source);
              // }
              // if (selectedNode.indexOf(edge.getModel().target) == -1) {
              //   selectedNode.push(edge.getModel().target);
              // }
            }
          }
        });

        // console.log(this.checkedListNode)
        // console.log(selectedNode)
        this.graph.getNodes().forEach(function (node) {
          that.graph.clearItemStates(node);
          // console.log(node.getModel())
          // console.log('oneNode')
          that.graph.setItemState(node, 'dark', true);
          for (let i = 0; i < selectedNode.length; i++) {
            // console.log(this.dataSelect.content[i])
            // console.log(that.checkedListNode[i])
            if (node.getID() == selectedNode[i]) {
              console.log('in')
              that.graph.setItemState(node, 'dark', false);
              // that.graph.setItemState(node, 'highlight', true);
            }
          }
          for (let i = 0; i < that.checkedListNode.length; i++) {
            if (node.getModel().entityType == that.checkedListNode[i]) {
              that.graph.setItemState(node, 'dark', false);
              // that.graph.setItemState(node, 'highlight', true);
            }
          }
        });

        that.graph.paint();
        that.graph.setAutoPaint(true);
      },
      //形状
      onChangeShape(value) {
        this.currentNodeData.shape = value
      },

      onOpenChange(openKeys) {
        // console.log(this.openKeys)
        const latestOpenKey = openKeys.find(key => this.openKeys.indexOf(key) == -1);
        if (this.rootSubmenuKeys.indexOf(latestOpenKey) == -1) {
          this.openKeys = openKeys;
        } else {
          this.openKeys = latestOpenKey ? [latestOpenKey] : [];
        }
      },
      test() {
        // console.log(this.data)
        // console.log(this.nodesData)
        // console.log(this.linksData)
        console.log(this.currentNodeData)
        console.log(this.currentLinkData)
        // console.log(this.filter)
      },
      //mxl
      async getStatistic(fileId) {
        var res1 = await getAllEntityTypesAPI(fileId);
        this.nodeType = res1.data.content;
        this.nodeTypeNum = []
        this.nodeStatistics = []
        for (let i = 0; i < res1.data.content.length; i++) {
          var res2 = await getEntityNumByTypeAPI({fileId: fileId, entityType: this.nodeType[i]});
          this.nodeTypeNum[i] = res2.data.content;
          this.nodeStatistics.push({
            value: this.nodeTypeNum[i],
            name: this.nodeType[i]
          })
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
        var resZoom = await getCanvasZoomAPI(this.fileId);
        var resX = await getCanvasPointXAPI(this.fileId);
        var resY = await getCanvasPointYAPI(this.fileId);
        this.lastPoint.x = resX.data.content;
        this.lastPoint.y = resY.data.content;
        this.lastZoom = resZoom.data.content;
        this.nodesData = []

        this.nodeType = []
        this.linkType = []

        var mark = 0;
        for (let i = 0; i < res1.data.content.length; i++) {
          var aa = res1.data.content[i].x;
          var bb = res1.data.content[i].y;
          if (aa == 0.5 || bb == 0.5) {
            mark = mark + 1;
          }
          this.nodesData.push({
            //改变形状
            type: res1.data.content[i].shape,
            label: res1.data.content[i].name,
            style: {fill: res1.data.content[i].color},
            // id: res1.data.content[i].id,
            id: res1.data.content[i].name,
            //
            size: [res1.data.content[i].entitySize * 1.5, res1.data.content[i].entitySize * 1.5],
            backId: res1.data.content[i].id,
            exist: true,
            x: aa,
            y: bb,
            entityType: res1.data.content[i].entityType,
            fontSize: res1.data.content[i].fontSize,
            //字体改变
            labelCfg: {style: {fontSize: res1.data.content[i].fontSize}},
          })

          if (this.nodeType.indexOf(res1.data.content[i].entityType) == -1 && res1.data.content[i].entityType != '') {
            this.nodeType.push(res1.data.content[i].entityType)
            this.checkedListNode.push(res1.data.content[i].entityType)
          }
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
            exist: true,
            // labelVisible: res2.data.content[i].labelVisible,
            relationType: res2.data.content[i].relationType,
          })
          if (this.linkType.indexOf(res2.data.content[i].relationType) == -1 && res2.data.content[i].relationType != '') {
            this.linkType.push(res2.data.content[i].relationType)
            this.checkedListLink.push(res2.data.content[i].relationType)
          }
        }

        this.data = {
          nodes: this.nodesData,
          edges: this.linksData
        };
      },
      initGraph() {
        var that = this

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
            preventOverlap: true,
            linkDistance: -30,
            nodeDistance: -50,
            edgeStrength: 1,
            nodeSpacing: 45,
          },
          defaultNode: {
            type: 'circle',
            color: '#cccccc',
            size: 60,
            anchorPoints: [0, 0],
            labelCfg: {
              position: 'center',
              offset: 10,
              style: {
                fontSize: 20
              }
            },
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
            default: ['zoom-canvas', 'drag-canvas', 'drag-node'],
            addNode: ['click-add-node'],
            addLink: ['click-add-edge'],
            clickAddEdge: ['create-edge']
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
        this.newPoint.x = this.graph.getCanvasByPoint(0, 0).x;
        this.newPoint.y = this.graph.getCanvasByPoint(0, 0).y;
        this.graph.translate(this.lastPoint.x - this.newPoint.x, this.lastPoint.y - this.newPoint.y);

        this.graph.on('node:mouseenter', function (e) {
          const item = e.item;
          that.graph.setAutoPaint(false);
          that.graph.getNodes().forEach(function (node) {
            that.graph.clearItemStates(node);
            that.graph.setItemState(node, 'dark', true);
          });
          that.graph.setItemState(item, 'dark', false);
          that.graph.setItemState(item, 'highlight', true);
          that.graph.getEdges().forEach(function (edge) {
            if (edge.getSource() == item) {
              that.graph.setItemState(edge.getTarget(), 'dark', false);
              that.graph.setItemState(edge.getTarget(), 'highlight', true);
              that.graph.setItemState(edge, 'highlight', true);
              edge.toFront();
            } else if (edge.getTarget() == item) {
              that.graph.setItemState(edge.getSource(), 'dark', false);
              that.graph.setItemState(edge.getSource(), 'highlight', true);
              that.graph.setItemState(edge, 'highlight', true);
              edge.toFront();
            } else {
              that.graph.setItemState(edge, 'highlight', false);
              that.graph.setItemState(edge, 'dark', true);
            }
          });
          that.graph.paint();
          that.graph.setAutoPaint(true);
        });

        this.graph.on('node:mouseleave', this.clearAllStats);

        this.graph.on('edge:mouseenter', function (e) {
          const item = e.item;
          that.graph.setAutoPaint(false);
          that.graph.setItemState(item.getSource(), 'highlight', true);
          that.graph.setItemState(item.getTarget(), 'highlight', true);
          that.graph.setItemState(item, 'highlight', true);
          that.graph.paint();
          that.graph.setAutoPaint(true);
        });

        this.graph.on('edge:mouseleave', this.clearAllStats);

        this.graph.on('aftercreateedge', async (e) => {
          // console.log('q',e.edge.getModel())
          // console.log('p',that.graph.getEdges()[0])
          //TODO
          that.currentLinkData = {
            id: e.edge.getModel().id,
            // backId: -1,
            // label: e.edge.getModel().label,
            source: e.edge.getModel().source,
            target: e.edge.getModel().target,
            lineType: 0,
            relationType: ''
          }
          // var source = undefined, target = undefined;
          // for (let i = 0; i < that.nodesData.length; i++) {
          //   if (that.nodesData[i].exist && (that.nodesData[i].id == that.currentLinkData.source)) {
          //     source = that.nodesData[i];
          //   }
          //   if (that.nodesData[i].exist && (that.nodesData[i].id == that.currentLinkData.target)) {
          //     target = that.nodesData[i];
          //   }
          // }

          var newLink = {
            //index: this.linkIdx+1,
            label: '',
            relationType: '',
            lineType: 0,
            source: that.currentLinkData.source,
            target: that.currentLinkData.target,
            exist: true,
          }

          var res = await addRelationAPI({
            ...newLink,
            fileId: this.fileId
          })
          newLink['backId'] = res.data.content
          this.currentLinkData.backId = res.data.content
          this.linksData.push(newLink)
          //
          const edges = that.graph.save().edges;
          G6.Util.processParallelEdges(edges);
          that.graph.getEdges().forEach((edge, i) => {
            if (edge.getID() == that.currentLinkData.id) {
              that.graph.updateItem(edge, {
                backId: that.currentLinkData.backId,
              });
            }
            that.graph.updateItem(edge, {
              curveOffset: edges[i].curveOffset,
              curvePosition: edges[i].curvePosition,
            });
            if (edge.getSource() == edge.getTarget()) {
              that.graph.setItemState(edge, 'toself', true);
            }
          });
        });

        this.graph.on('node:dragstart', function (e) {
          that.graph.layout();
          that.refreshDragedNodePosition(e);
        });
        this.graph.on('node:drag', function (e) {
          that.refreshDragedNodePosition(e);
          that.graph.updateLayout({
            type: 'froceddd'
          })
        });
        this.graph.on('node:dragend', function (e) {
          e.item.get('model').fx = null;
          e.item.get('model').fy = null;
        });
        this.graph.on('edge:click', function (e) {
          console.log('click edge')
          const edge = e.item.get('model')
          console.log(edge)
          that.currentLinkData = {
            id: edge.id,
            backId: edge.backId,
            label: edge.label,
            source: edge.source,
            target: edge.target,
            lineType: edge.style.lineDash == undefined || edge.style.lineDash[0] == 1 ? '0' : '1',
            relationType: edge.relationType
          }
          console.log(that.currentLinkData)
          that.openKeys = ['change']
          that.changeKey = '2'
          that.collapsed = false
        });
        this.graph.on('node:click', function (e) {
          const node = e.item.get('model')
          that.currentNodeData = {
            id: node.id,
            backId: node.backId,
            color: node.style.fill,
            name: node.id,
            entitySize: node.size[0] / 1.5,
            fontSize: node.fontSize,
            shape: node.type,
            entityType: node.entityType,
            x: 0.5,
            y: 0.5,
          }
          that.openKeys = ['change']
          that.changeKey = '1'
          that.collapsed = false
        });

        //addnode
        G6.registerBehavior('click-add-node', {
          getEvents() {
            return {
              'canvas:click': 'onClick'
            };
          },
          onClick(ev) {
            that.graph.addItem('node', {
              x: ev.canvasX,
              y: ev.canvasY,
              id: that.currentNodeData.name, // 生成唯一的 id
              label: that.currentNodeData.name,
              style: {fill: that.currentNodeData.color},
              //
              labelCfg: {style: {fontSize: that.currentNodeData.fontSize}},
              backId: that.currentNodeData.backId,
              exist: true,
            });
            that.currentNodeData.x = ev.canvasX;
            that.currentNodeData.y = ev.canvasY;
            that.updateGraph()
          },
        });

        // add edge
        G6.registerBehavior('click-add-edge', {
          getEvents() {
            return {
              'canvas:click': 'onClick'
            };
          },
          onClick() {
            // that.graph.addItem('edge', {
            //   source: that.currentLinkData.source,
            //   target: that.currentLinkData.target,
            //   label: that.currentLinkData.label,
            //   style: {lineDash: that.currentLinkData.type == 0 ? [1, 0] : [5, 4]},
            //   backId: that.currentLinkData.backId,
            //   type: 'quadratic',
            //   exist: true
            // });
            // const edges = that.graph.save().edges;
            // G6.Util.processParallelEdges(edges);
            // that.graph.getEdges().forEach((edge, i) => {
            //   that.graph.updateItem(edge, {
            //     curveOffset: edges[i].curveOffset,
            //     curvePosition: edges[i].curvePosition,
            //   });
            //   if (edge.getSource() == edge.getTarget()) {
            //     that.graph.setItemState(edge, 'toself', true);
            //   }
            // });
            // that.currentLinkData = {
            //   id: '',
            //   backId: -1,
            //   label: '',
            //   source: '',
            //   target: '',
            //   relationType: '',
            //   lineType: 0
            // }
          },
        });

        this.graph.on('afteradditem', function () {
          if (that.graph.getCurrentMode() == 'addNode') {
            that.graph.setMode('default');
          }
          if (that.graph.getCurrentMode() == 'addLink') {
            that.graph.setMode('default')
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
          // that.graph.clearItemStates(edge);
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
      //添加或修改图上内容后，刷新知识图谱，跟initGraph差不多，改init的时候记得改这里！！！
      updateGraph() {
        // eslint-disable-next-line no-unused-vars
        //console.log(this.currentNodeData)
        updateEntityPositionAPI(this.currentNodeData)
        this.currentNodeData = {
          id: -1,
          backId: -1,
          color: '',
          name: '',
          entityType: '',
          entitySize: 40,
          x: 0.5,
          y: 0.5,
        }
      },
      changeNode() {
        // 通知后端修改了一个实体
        // 修改this.nodesData中的信息
        var inv = 0;

        for (let i = 0; i < this.nodesData.length; i++) {
          if (this.nodesData[i].id == this.currentNodeData.name) {
            this.currentNodeData.backId = this.nodesData[i].backId
            this.nodesData[i].shape = this.currentNodeData.shape
            this.nodesData[i].entityType = this.currentNodeData.entityType
            this.nodesData[i].entitySize = this.currentNodeData.entitySize
            this.nodesData[i].fontSize = this.currentNodeData.fontSize
            inv = i
            break;
          }
        }
        updateEntityAPI({
          ...this.currentNodeData,
        })
        // 修改图上显示的内容

        this.graph.updateItem(this.graph.getNodes()[inv], {
          type: this.currentNodeData.shape,
          style: {fill: this.currentNodeData.color},
          color: '#cccccc',
          labelCfg: {style: {fontSize: this.currentNodeData.fontSize}},
          size: [this.currentNodeData.entitySize * 1.5, this.currentNodeData.entitySize * 1.5],
        })
      },
      deleteNode() {
        var inv = 0;
        //找到nodesData里的要删除的节点
        for (let i = 0; i < this.nodesData.length; i++) {
          if (this.nodesData[i].id == this.currentNodeData.name) {
            this.currentNodeData.backId = this.nodesData[i].backId
            this.nodesData[i].color = this.currentNodeData.color
            inv = i
            break;
          }
        }
        //temp用来储存删除节点连接关系的索引  在linksData里的索引
        this.temp = []
        for (let i = 0; i < this.linksData.length; i++) {
          if (this.linksData[i].exist && (this.linksData[i].source == this.currentNodeData.name || this.linksData[i].target == this.currentNodeData.name)) {
            deleteRelationAPI(this.linksData[i].backId)
            this.temp.push(i);
          }
        }
        deleteEntityAPI(this.currentNodeData.backId)
        for (let i = 0; i < this.temp.length; i++) {
          this.graph.removeItem(this.graph.getEdges()[this.temp[i]])
        }
        //修改图中显示
        this.graph.removeItem(this.graph.getNodes()[inv])

        this.currentNodeData = {
          id: -1,
          backId: -1,
          color: '',
          name: '',
          type: '',
          entitySize: 40,
          x: 0.5,
          y: 0.5,
        }
        this.collapsed = true
      },
      async addNode() {
        var newNode = {
          name: this.currentNodeData.name,
          entityType: this.currentNodeData.entityType,
          color: COLOR_BOARD[Math.floor(Math.random() * 5)],
          exist: true,
        };
        var res = await addEntityAPI({
          ...newNode,
          fileId: this.fileId
        })
        if (res.data.success) { //后端添加成功
          //newNode['id'] = res.data.content
          this.currentNodeData.backId = res.data.content;
          this.currentNodeData.color = newNode['color'];
          this.nodesData.push({
            label: this.currentNodeData.name,
            style: {fill: this.currentNodeData.color},
            id: this.currentNodeData.name,
            size: this.currentNodeData.entitySize * 1.5,
            backId: this.currentNodeData.backId,
            exist: true
          })
          this.graph.setMode('addNode');
        } else {
          this.$message.error('实体已存在，请勿重复添加！')
        }
        if (this.nodeType.indexOf(this.currentNodeData.entityType) == -1) {
          this.nodeTypeNum.push(1)
          this.nodeType.push(this.currentNodeData.entityType)
        }
      },
      changeLink() {
        // if (this.currentLinkData.source == this.currentLinkData.target) {
        //   alert('修改失败：起点与终点不能相同！')
        //   return
        // }
        //获取端点实体的对象
        var source = undefined, target = undefined;
        for (let i = 0; i < this.nodesData.length; i++) {
          if (this.nodesData[i].exist && (this.nodesData[i].id == this.currentLinkData.source)) {
            source = this.nodesData[i].id;
          }
          if (this.nodesData[i].exist && (this.nodesData[i].id == this.currentLinkData.target)) {
            target = this.nodesData[i].id;
          }
        }
        if (source == undefined || target == undefined) {
          this.$message.error('修改失败：请确认输入的实体名称正确！')
          return
        }


        var inv = 0;
        // console.log(this.linksData)
        // console.log("current")
        // console.log(this.currentLinkData)
        for (let i = 0; i < this.linksData.length; i++) {
          if (this.linksData[i].backId == this.currentLinkData.backId) {
            this.linksData[i].source = source
            this.linksData[i].target = target
            this.linksData[i].label = this.currentLinkData.label
            this.linksData[i].lineType = this.currentLinkData.lineType == 0 ? [1, 0] : [5, 4]
            this.linksData[i].relationType = this.currentLinkData.relationType
            inv = i
            console.log(this.currentLinkData)
            console.log(this.linksData[i])
            break
          }
        }

        updateRelationAPI({
          ...this.currentLinkData,
        })

        this.graph.updateItem(this.graph.getEdges()[inv], {
          source: source,
          target: target,
          label: this.currentLinkData.label,
          style: {lineDash: this.currentLinkData.lineType == 0 ? [1, 0] : [5, 4]},
          relationType: this.currentLinkData.relationType
        })
        this.currentLinkData = {
          id: -1,
          backId: -1,
          label: '',
          source: '',
          target: '',
          lineType: 0,
          relationType: ''
        }

      },
      deleteLink() {
        deleteRelationAPI(this.currentLinkData.backId)
        var inv = 0;
        for (let i = 0; i < this.linksData.length; i++) {
          if (this.linksData[i].exist && (this.linksData[i].backId == this.currentLinkData.backId)) {
            this.linksData[i].exist = false
            inv = i;
            break;

          }
        }

        this.graph.removeItem(this.graph.getEdges()[inv])

        this.currentLinkData = {
          id: -1,
          backId: -1,
          label: '',
          source: '',
          target: '',
          relationType: '',
          lineType: 0
        }
        this.collapsed = true
      },
      async addLink() {
        var that = this
        var source = undefined, target = undefined;
        for (let i = 0; i < this.nodesData.length; i++) {
          if (this.nodesData[i].exist && (this.nodesData[i].id == this.currentLinkData.source)) {
            source = this.nodesData[i];
          }
          if (this.nodesData[i].exist && (this.nodesData[i].id == this.currentLinkData.target)) {
            target = this.nodesData[i];
          }
        }
        if (source == undefined || target == undefined) {
          this.$message.error('添加失败：请确认输入的实体名称正确！')
          return
        }

        var newLink = {
          //index: this.linkIdx+1,
          label: this.currentLinkData.label,
          relationType: this.currentLinkData.relationType,
          lineType: this.currentLinkData.lineType,
          source: source.id,
          target: target.id,
          exist: true,
        }

        var res = await addRelationAPI({
          ...newLink,
          fileId: this.fileId
        })
        newLink.lineType = newLink.lineType == 0 ? [1, 0] : [5, 4]
        newLink['backId'] = res.data.content
        this.currentLinkData.backId = res.data.content
        this.linksData.push(newLink)
        // this.graph.setMode('addLink')
        that.graph.addItem('edge', {
          source: that.currentLinkData.source,
          target: that.currentLinkData.target,
          label: that.currentLinkData.label,
          style: {lineDash: that.currentLinkData.lineType == 0 ? [1, 0] : [5, 4]},
          backId: that.currentLinkData.backId,
          type: 'quadratic',
          exist: true,
          relationType: that.currentLinkData.relationType,
        });
        const edges = that.graph.save().edges;
        G6.Util.processParallelEdges(edges);
        this.graph.getEdges().forEach((edge, i) => {
          that.graph.updateItem(edge, {
            curveOffset: edges[i].curveOffset,
            curvePosition: edges[i].curvePosition,
          });
          if (edge.getSource() == edge.getTarget()) {
            that.graph.setItemState(edge, 'toself', true);
          }
        });
        that.currentLinkData = {
          id: '',
          backId: -1,
          label: '',
          source: '',
          target: '',
          relationType: '',
          lineType: 0
        }
      },
      cancelAddLink() {
        this.onOpenChange([])
        this.collapsed = true
        this.currentLinkData = {
          id: '',
          label: '',
          source: '',
          target: '',
          lineType: 0,
          relationType: ''
        }
      },
      changeRelationLabel() {
        // console.log(this.graph.getEdges())
        // console.log(this.linksData)
        this.labelVisible = !this.labelVisible
        if (!this.labelVisible) {
          console.log('hide')
          for (let i = 0; i < this.linksData.length; i++) {
            this.linksData[i].labelVisible = false;
            setRelationLabelVisibleOrNotAPI({
              relationId: this.linksData[i].backId,
              labelVisible: this.linksData[i].labelVisible
            });
            this.graph.updateItem(this.graph.getEdges()[i], {
              labelVisible: this.linksData[i].labelVisible,
              labelCfg: {
                style: {
                  opacity: 0
                }
              },
            })
          }
        } else {
          console.log('present')
          for (let i = 0; i < this.linksData.length; i++) {
            this.linksData[i].labelVisible = true;
            this.linksData[i].label = this.linksData[i].log
            setRelationLabelVisibleOrNotAPI({
              relationId: this.linksData[i].backId,
              labelVisible: this.linksData[i].labelVisible
            });
            this.graph.updateItem(this.graph.getEdges()[i], {
              labelVisible: this.linksData[i].labelVisible,
              labelCfg: {
                style: {
                  opacity: 1
                }
              },
            })
          }
        }
      },
      //统计图
      handleMenuClick(e) {
        console.log(e)
      },
      showModal1() {
        this.visible1 = true;
      },
      showModal2() {
        this.visible2 = true;
      },
      showModal3() {
        this.visible3 = true;
      },
      showModal4() {
        this.visible4 = true;
      },
      initBarChart1() {
        let newPromise = new Promise((resolve) => {
          resolve()
        })
        newPromise.then(() => {
          let myChart = echarts.init(this.$refs.charts);

          // 绘制图表
          myChart.setOption({
            title: {
              text: '实体关系数量',
              // subtext: '图例表示了在此知识图谱中，实体与关系的数量分布情况'
            },
            grid: {
              top: 90
            },
            tooltip: {},
            xAxis: {
              data: ['实体', '关系']
            },
            yAxis: {},
            series: [{
              name: '数量',
              type: 'bar',
              data: [this.nodesData.length, this.linksData.length]
            }]
          });
        })

      },
      initBarChart2() {
        let newPromise = new Promise((resolve) => {
          resolve()
        })
        newPromise.then(() => {
          let myChart2 = echarts.init(this.$refs.charts2);
          myChart2.setOption({
            title: {
              text: '实体类型数量',
              // subtext:'图例表示了在此知识图谱中，实体的类型与实体类型的占比情况'
            },
            grid: {
              top: 90
            },
            tooltip: {
              trigger: 'item'
            },
            series: [
              {
                name: '实体类型',
                type: 'pie',    // 设置图表类型为饼图
                radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                data: this.nodeStatistics,
              }
            ]
          });
        })
      },
      initBarChart3() {
        let newPromise = new Promise((resolve) => {
          resolve()
        })
        newPromise.then(() => {
          let myChart3 = echarts.init(this.$refs.charts3);
          myChart3.setOption({
            title: {
              text: '关系类型分布',
              // subtext:'图例表示了在此知识图谱中，关系的类型与关系类型的分布情况'
            },
            grid: {
              top: 90
            },
            tooltip: {},
            xAxis: {
              data: this.linkType
            },
            yAxis: {},
            series: [{
              name: '数量',
              type: 'bar',
              data: this.linkTypeNum
            }]
          });
        })
      },
      initBarChart4() {
        let newPromise = new Promise((resolve) => {
          resolve()
        })
        newPromise.then(() => {
          let myChart4 = echarts.init(this.$refs.charts4); //,"macarons"
          myChart4.setOption({
            title: {
              text: '实体含关系数量',
              // subtext: '图例表示了在此知识图谱中，每个实体内部含关系数量分布情况'
            },
            grid: {
              top: 90
            },
            tooltip: {
              trigger: 'item'
            },
            series: [
              {
                name: '实体',
                type: 'pie',    // 设置图表类型为饼图
                radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                data: this.nodeLink,
              }
            ]
          });
        })
      },
      //导出，可以不看
      async handleMenuClickDownload(key) {
        // console.log(menuItem)
        if (key == 1) {
          this.graph.downloadFullImage(this.fileName, 'image/png', {
            backgroundColor: '#ffffff',
            padding: 10
          })
        } else if (key == 2) {
          const filename = this.fileName + '-data.xml' // filename为自定义下载后的文件名
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
      savePosotion() {
        this.lastZoom = this.graph.getZoom()
        this.lastPoint.x = this.graph.getCanvasByPoint(0, 0).x;
        this.lastPoint.y = this.graph.getCanvasByPoint(0, 0).y;
        //console.log(this.lastPoint)
        var x = 0
        var y = 0
        for (let i = 0; i < this.nodesData.length; i++) {
          x = this.graph.getNodes()[i]._cfg.bboxCache.centerX;
          y = this.graph.getNodes()[i]._cfg.bboxCache.centerY;
          this.currentNodeData.backId = this.nodesData[i].backId;
          this.currentNodeData.x = x;
          this.currentNodeData.y = y;
          //console.log(this.currentNodeData);
          updateEntityPositionAPI(this.currentNodeData);
        }
        updateCanvasPositionAPI({
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
          // console.log(node.getModel())
          if (node.getID().indexOf(searchText) != -1) {
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
    }
  }
</script>

<style scoped>
  .righttop {
    width: 100%;
    height: 100%;
  }

  .explain {
    width: 100%;
    height: 100%;
    text-align: center;
  }

  .wrapper {
    width: 80%;
    height: auto;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
  }
</style>
