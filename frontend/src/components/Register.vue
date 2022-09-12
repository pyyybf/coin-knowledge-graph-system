<template>
  <a-modal :visible="this.registerModalVisible"
           :footer="null"
           :closable="false"
           width="25%"
           :bodyStyle="{marginTop:'-50px'}"
  >
    <a-form
      id="components-form-demo-normal-login"
      class="login-form"
      layout="vertical"
      @submit="handleSubmit"
      style="margin-top:20px"
    >
      <h6 align="center">加入Rouge</h6>
      <h2 align="center">创建你的账号</h2>
      <a-row>
        <a-col :span="8" :offset="8">
          <a-upload
            name="avatar"
            list-type="picture-card"
            class="avatar-uploader"
            :show-upload-list="false"
            :before-upload="beforeUpload"
            :customRequest="customRequest"
            :multiple="false"
            @change="handleChange"
            width="100%"
          >
            <img v-if="avatar!==''" :src="this.avatar" alt="avatar" style="width: 100%"/>
            <div v-else style="font-size: 15px">
              <a-icon type="plus"/>
              <div class="ant-upload-text">
                上传
              </div>
            </div>
          </a-upload>
        </a-col>
      </a-row>
      <a-form-item label="用户名">
        <a-input
          v-decorator="['userName',{ rules: [{ required: true, message: '请输入用户名' }] },]"
          placeholder="用户名"
          v-model="userName"
        >
          <a-icon slot="prefix" type="user" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item class="up" label="密码">
        <a-input
          v-decorator="['password',{ rules: [{ required: true, message: '请输入密码' }] },]"
          type="password"
          placeholder="密码"
          v-model="password"
        >
          <a-icon slot="prefix" type="lock" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item class="up" label="重复密码">
        <a-input
          type="password"
          placeholder="重复密码"
          v-model="rePassword"
        >
          <a-icon slot="prefix" type="lock" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item class="up" label="邮箱">
        <a-input
          v-decorator="['email',{ rules: [{ required: true, message: '请输入邮箱' }] },]"
          type="email"
          placeholder="邮箱"
          v-model="email"
        >
          <a-icon slot="prefix" type="mail" style="color: rgba(0,0,0,.25)"/>
        </a-input>
      </a-form-item>
      <a-form-item>
        <a-button type="primary" html-type="submit" class="register-form-button">
          注册
        </a-button>
        <a-button type="primary" ghost @click="handleCancel" class="register-form-button" style="float:right">
          取消
        </a-button>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<script>
import OSS from 'ali-oss';
import {mapMutations, mapActions, mapGetters} from "vuex";

const client = new OSS({
  bucket: 'pyyybf',
  region: 'oss-cn-shanghai',
  accessKeyId: 'LTAI4G3YDVKD453rLQRPeAQj',
  accessKeySecret: 'zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM',
});

export default {
  name: "Register",
  data() {
    return {
      userName: '',
      password: '',
      email: '',
      avatar: '',
      rePassword: '',
    }
  },
  computed: {
    ...mapGetters([
      'registerModalVisible'
    ]),
  },
  methods: {
    ...mapMutations([
      'set_registerModalVisible',
    ]),
    ...mapActions([
      'register',
    ]),
    async handleSubmit() {
      var res = {
        url: ''
      };
      if (this.avatar) {
        var arr = this.avatar.split(','), mime = arr[0].match(/:(.*?);/)[1],
          bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
        while (n--) {
          u8arr[n] = bstr.charCodeAt(n);
        }
        var avatarFile = new File([u8arr], this.userName, {type: mime});
        res = await client.put('avatars/' + this.userName + '.jpg', avatarFile);
      }
      if (this.userName && this.password && this.email) {
        if (this.rePassword === this.password) {
          this.register({
            userName: this.userName,
            password: this.password,
            email: this.email,
            avatar: res.url,
          })
        } else {
          this.$message.error('两次输入密码不一致')
        }
      } else {
        this.$message.warn('请完整填写注册信息')
      }
    },
    handleCancel() {
      this.set_registerModalVisible(false)
    },
    handleChange(info) {
      if (info.file.status === 'done') {
        this.$message.success(`${info.file.name} file uploaded successfully`);
      } else if (info.file.status === 'error') {
        this.$message.error(`${info.file.name} file upload failed.`);
      }
    },
    beforeUpload(file) {
      const isJpgOrPng = file.type === 'image/jpeg' || file.type === 'image/png';
      if (!isJpgOrPng) {
        this.$message.error('只能上传图片！');
      }
      var _this = this
      var reader = new FileReader();
      reader.readAsDataURL(file)
      reader.onload = function () {
        var img = new Image();
        img.src = reader.result;
        img.onload = function () {
          var that = this;
          var w = that.width, h = that.height;
          var side = w > h ? h : w;
          var canvas = document.createElement('canvas');
          var ctx = canvas.getContext('2d');
          var createw = document.createAttribute('width');
          var createh = document.createAttribute('height');
          createw.nodeValue = side;
          createh.nodeValue = side;
          canvas.setAttributeNode(createw);
          canvas.setAttributeNode(createh);
          ctx.drawImage(that, (w - side) / 2, (h - side) / 2, side, side, 0, 0, side, side);
          _this.avatar = canvas.toDataURL('image/jpeg', 1);
        }
      }
    },
    customRequest() {
    },
  },
}
</script>

<style>
#components-form-demo-normal-login .register-form-button {
  width: 48%;
}

.up {
  margin-top: -20px;
}
</style>
