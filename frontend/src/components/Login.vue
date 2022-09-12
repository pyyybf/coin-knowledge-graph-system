<template>
  <a-modal :visible="this.loginModalVisible"
           :footer="null"
           :closable="false"
           width="25%"
  >
<!--    <img src="../assets/login-logo.png" style="margin-left:10%;margin-top:30px;width:80%">-->
    <h1 align="center" style="margin-top:28px;font-family: 幼圆">登录Rouge<span style="color: #ffa6a8">.</span></h1>
    <a-form
      id="components-form-demo-normal-login"
      class="login-form"
      layout="vertical"
      style="margin-top:20px"
    >
      <a-form-item label="邮箱">
        <a-input
          v-decorator="['email',{ rules: [{ required: true, message: '请输入邮箱' }] },]"
          placeholder="邮箱"
          v-model="email"
        >
          <a-icon slot="prefix" type="user" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item label="密码">
        <a-input
          v-decorator="['password',{ rules: [{ required: true, message: '请输入密码' }] },]"
          type="password"
          placeholder="密码"
          v-model="password"
        >
          <a-icon slot="prefix" type="lock" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item>
        <a-button type="primary" @click="handleSubmit" class="login-form-button" style="float: left">
          登录
        </a-button>
        <a-button type="primary" ghost @click="handleCancel" class="login-form-button" style="float: right">
          取消
        </a-button>
      </a-form-item>
<!--      <a-form-item>-->
<!--      </a-form-item>-->
    </a-form>
  </a-modal>
</template>

<script>
  import {mapMutations, mapActions, mapGetters} from "vuex";

  export default {
    name: "Login",
    data() {
      return {
        email: '',
        password: '',
      }
    },
    computed: {
      ...mapGetters([
        'loginModalVisible'
      ]),
    },
    methods: {
      ...mapMutations([
        'set_loginModalVisible',
      ]),
      ...mapActions([
        'login',
      ]),
      handleSubmit() {
        this.login({
          email: this.email,
          password: this.password,
        })
      },
      handleCancel() {
        this.set_loginModalVisible(false)
      }
    },
  }
</script>

<style scoped>
  #components-form-demo-normal-login .login-form-button {
    width: 48%;
    margin-top: 1em;
  }
</style>
