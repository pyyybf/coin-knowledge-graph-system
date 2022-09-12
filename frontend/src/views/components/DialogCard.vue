<template>
  <a-card
    title="Rouge.智能问答"
    v-show="visible"
    class="dialog-modal"
    :headStyle="{'border-bottom-color':'#ffa8a6'}"
    :mask="false"
    style="width:94%;margin-left:3%;border-radius: 20px;border-color: #ffa6a8;height:83vh"
  >
    <a-icon type="close" slot="extra" @click="closeDialogCard"/>
    <div class="dialog-space" style="" id="conversation-space">
      <a-list :data-source="conversation" :split="false">
        <a-list-item slot="renderItem" slot-scope="item, index">
          <Dialog :content="item" :showGraph="getGraphData" :ask="onAsk"></Dialog>
        </a-list-item>
      </a-list>
    </div>
    <div>
      <a-input-search
        v-model="searchText"
        placeholder="请输入询问内容"
        enter-button="发送"
        @search="onAsk"
        allowClear
        style="position:absolute;bottom:24px;width:calc(100% - 48px)"
      />
    </div>
  </a-card>
</template>

<script>
  import Dialog from './Dialog'
  import {mapMutations, mapActions, mapGetters} from 'vuex'

  export default {
    name: "DialogCard",
    props: {
      visible: Boolean,
      changeVisible: Function,
      showGraph: Function,
    },
    data() {
      return {
        searchText: '',
        curScrollTop: 0,
      }
    },
    components: {
      Dialog,
    },
    computed: {
      ...mapGetters([
        'conversation',
      ])
    },
    updated() {
      if (this.visible) {
        var div = document.getElementById('conversation-space')
        div.scrollTop = div.scrollHeight;
      }
    },
    methods: {
      ...mapActions([
        'getAnswer',
      ]),
      ...mapMutations([
        'set_dialog',
      ]),
      async onAsk(val) {
        if (!val) return
        this.searchText = ''
        this.set_dialog({
          text: val,
          sender: 1
        })
        var div = document.getElementById('conversation-space')
        div.scrollTop = div.scrollHeight;
        await this.getAnswer(val)
        div.scrollTop = div.scrollHeight;
      },
      closeDialogCard() {
        this.changeVisible()
      },
      getGraphData(data) {
        this.$props.showGraph(data);
      },
    }
  }
</script>

<style scoped>
  .dialog-space {
    width: 100%;
    height: calc(83vh - 150px);
    padding: 0;
    margin-bottom: 24px;
    overflow: scroll
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

  .ant-input-group > .ant-input-affix-wrapper:not(:last-child) .ant-input {
    border-top: transparent;
  }
</style>
