<template>
  <a-layout>
    <a-layout-sider width="10vw">
      <a-menu mode="inline" v-model="selectedKey" style="height: 100%">
        <a-menu-item key="userInfo">
          <a-icon type="user"/>
          <span class="nav-text">个人中心</span>
        </a-menu-item>
        <a-menu-item key="collectList">
          <a-icon type="heart"/>
          <span class="nav-text">我的收藏</span>
        </a-menu-item>
      </a-menu>
    </a-layout-sider>
    <a-layout style="padding: 0">
      <a-layout-content
        :style="{ padding: '0', margin: 0, minHeight: '280px' }"
      >
        <UserInfoCard v-if="selectedKey.includes('userInfo')" :toCollectList="changeToCollectList"/>
        <CollectInfo v-else/>
      </a-layout-content>
    </a-layout>
  </a-layout>
</template>

<script>
  import UserInfoCard from './components/UserInfoCard';
  import CollectInfo from './components/CollectInfo';

  export default {
    name: "MyHome",
    data() {
      return {
        selectedKey: []
      }
    },
    components: {
      UserInfoCard,
      CollectInfo,
    },
    async mounted() {
      this.selectedKey = [this.$route.params.selectedKey ? this.$route.params.selectedKey : 'userInfo']
    },
    methods: {
      changeToCollectList() {
        console.log('111111')
        this.selectedKey = ['collectList']
      }
    }
  };
</script>

<style>
</style>
