<template>
  <a-layout id="components-layout-demo-fixed" class="layout"
            :style="{height:'100vh'}">
    <a-layout-header>
      <div class="logo">
        <img :src="require('./assets/logo.png')" inline style="height: 100%"/>
      </div>
      <a-menu
        mode="horizontal"
        :style="{ lineHeight: '10vh' }"
        v-model="selectedKeys"
        @click="changeRouter"
        class="header"
      >
        <a-menu-item key="home">
          首页
        </a-menu-item>
        <a-menu-item key="knowledgeGraph">
          知识图谱
        </a-menu-item>
        <a-menu-item key="questionAnswering">
          智能问答
        </a-menu-item>
        <a-menu-item key="list">
          口红列表
        </a-menu-item>
        <a-dropdown v-if="this.userId>0" placement="bottomRight" style="float:right;margin-left:20px">
          <a class="ant-dropdown-link" @click="e => e.preventDefault()">
            <a-avatar icon="user" :src="this.userInfo.avatar"></a-avatar>
            <a-icon type="down"/>
          </a>
          <a-menu slot="overlay">
            <a-menu-item>
              <a href="javascript:;" @click="goMyHome()">我的主页</a>
            </a-menu-item>
            <a-menu-item>
              <a href="javascript:;" @click="logout()">退出登录</a>
            </a-menu-item>
          </a-menu>
        </a-dropdown>
        <a-button v-if="this.userId<=0" type="link" class="header-btn" style="margin-left:20px" @click="signIn">登录
        </a-button>
        <a-button v-if="this.userId<=0" type="primary" class="header-btn" ghost @click="signUp">注册</a-button>
      </a-menu>
    </a-layout-header>
    <br/><br/>
    <router-view/>
    <Login/>
    <Register/>
  </a-layout>
</template>

<script>
import Login from "./components/Login";
import Register from "./components/Register";
import {mapGetters, mapMutations, mapActions} from 'vuex'
import router from "./router";

export default {
  name: 'App',
  data() {
    return {
      clientHeight: document.body.clientHeight,
      selectedKeys: [],
    }
  },
  components: {
    Login,
    Register,
  },
  watch: {
    $route(to) {
      if (to.name === 'home') this.selectedKeys = ['home']
      if (to.name === 'knowledgeGraph') this.selectedKeys = ['knowledgeGraph']
      if (to.name === 'questionAnswering') this.selectedKeys = ['questionAnswering']
      if (to.name === 'list') this.selectedKeys = ['list']
      if (to.name === 'myHome') this.selectedKeys = []
    },
    userId(val) {
      router.go(0)
    }
  },
  mounted() {
    this.selectedKeys.push(this.$route.name)

    window.onresize = () => {
      this.clientHeight = document.documentElement.clientHeight;
    }
  },
  computed: {
    ...mapGetters([
      'userInfo',
      'userId',
    ]),
  },
  methods: {
    ...mapMutations([
      'set_loginModalVisible',
      'set_registerModalVisible',
    ]),
    ...mapActions([
      'logout',
    ]),
    changeRouter(menuItem) {
      switch (menuItem.key) {
        case "home":
          if (this.$route.path !== '/home') {
            this.$router.push('/home');
          }
          break;
        case "knowledgeGraph":
          if (this.$route.path !== '/knowledgeGraph') {
            this.$router.push('/knowledgeGraph');
          }
          break;
        case "questionAnswering":
          if (this.$route.path !== '/questionAnswering') {
            this.$router.push('/questionAnswering');
          }
          break;
        case "list":
          if (this.$route.path !== '/list') {
            this.$router.push('/list');
          }
          break;
      }
    },
    signOut() {
      this.logout()
    },
    goMyHome() {
      if (this.$route.path !== '/myHome') {
        this.$router.push({
          name: 'myHome',
          params: {selectedKey: 'userInfo'}
        });
      }
    },
    signIn() {
      this.set_loginModalVisible(true)
    },
    signUp() {
      this.set_registerModalVisible(true)
    }
  },
}
</script>

<style>
#components-layout-demo-fixed .logo {
  width: 180px;
  height: 45px;
  float: left;
}

a-menu-item {
  float: right;
}

.header {
  float: right;
  border-bottom-color: white;
  font-family: 幼圆;
  font-size: 11pt;
}

.header-btn {
  font-family: 幼圆;
  font-size: 11pt;
}
</style>
