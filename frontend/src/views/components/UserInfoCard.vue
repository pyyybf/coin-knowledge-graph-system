<template>
  <a-card
    :style="cardStyle"
    :bodyStyle="{padding:'24px 0 24px 0'}"
  >
    <a-row id="user-card">
      <a-col :span="10" :offset="1" class="user-card-col">
        <!-- 用户头像 -->
        <a-row style="width:100%;margin-top: 50px">
          <a-col :span="6" :offset="9">
            <a-upload
              :multiple="false"
              @change="handleChange"
              :showUploadList="false"
              :before-upload="beforeUpload"
              :customRequest="customRequest"
            >
              <div style="width:100%;padding:100% 0 0">
                <a-button v-if="showUpload||!userInfo.avatar"
                          id="avatar-upload-button"
                          icon="edit"
                          @mouseleave="notHoverAvatar">上传头像
                </a-button>
                <img :src="userInfo.avatar?userInfo.avatar:require('../../assets/no-avatar.png')"
                     style="width: 100%;margin-top:-100%;border-radius: 100px"
                     @mouseover="hoverAvatar"
                />
              </div>
            </a-upload>
          </a-col>
        </a-row>
        <a-row v-if="!editing" class="userinfo-row">
          <a-col :span="24" class="userinfo-col">用户名：{{ userInfo.userName }}</a-col>
          <a-col :span="24" class="userinfo-col">密码：******</a-col>
          <a-col :span="24" class="userinfo-col">邮箱：{{ userInfo.email }}</a-col>
          <a-col :span="24" class="userinfo-col">
            <a-button icon="edit" type="primary" ghost @click="startEdit">编辑资料</a-button>
          </a-col>
        </a-row>
        <a-row v-else class="userinfo-row">
          <a-form :label-col="{ span: 5 }" :wrapper-col="{ span: 16 }">
            <a-form-item>
              <template slot="label">
                <span style="color: #f5222d;font-family: SimSun,sans-serif;margin-right: 2pt">*</span>用户名
              </template>
              <a-input
                v-model="curUserInfo.userName"
                placeholder="请输入新用户名"
              />
            </a-form-item>
            <a-form-item label="密码">
              <a-input
                type="password"
                v-model="curUserInfo.password"
                placeholder="请输入新密码，若为空则密码不变"
              >
              </a-input>
            </a-form-item>
            <a-form-item v-if="curUserInfo.password!=''" label="重复密码">
              <a-input
                type="password"
                v-model="rePassword"
                placeholder="请重复输入新密码"
              >
              </a-input>
            </a-form-item>
            <a-form-item label="邮箱">{{ userInfo.email }}</a-form-item>
          </a-form>
          <a-col :span="24" class="userinfo-col">
            <a-button icon="save" type="primary" ghost @click="endEdit">保存</a-button>
            <a-button type="primary" ghost @click="cancelEdit" style="margin-left: 1em">取消</a-button>
          </a-col>
        </a-row>
      </a-col>
      <a-col :span="1" :offset="1" class="user-card-col">
        <a-divider type="vertical" :dashed="true" style="height: 100%;margin:0"/>
      </a-col>
      <a-col :span="10" class="user-card-col">
        <a-row class="header" type="flex" justify="space-around" align="middle">
          <a-col :span="12">
            <p class="header-name">最近收藏</p>
          </a-col>
          <a-col :span="12">
            <a-button class="header-button" type="link" icon="unordered-list" @click="goToCollectList">全部收藏
            </a-button>
          </a-col>
        </a-row>
        <a-row style="margin-top: 20px">
          <a-col :span="8" v-for="item in newestCollectedCommodityList" :key="item.id" style="height:100%">
            <a-card class="collect-card" hoverable style="height:100%">
              <img :src="item.image" slot="cover" inline style="width: 100%">
            </a-card>
          </a-col>
        </a-row>
      </a-col>
    </a-row>
  </a-card>
</template>

<script>
import {mapGetters, mapActions} from 'vuex'
import OSS from "ali-oss";

const client = new OSS({
  bucket: 'pyyybf',
  region: 'oss-cn-shanghai',
  accessKeyId: 'LTAI4G3YDVKD453rLQRPeAQj',
  accessKeySecret: 'zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM',
});

export default {
  name: "UserInfoCard",
  data() {
    return {
      cardStyle: {
        background: `url(${require('../../assets/info-card-bg.png')}) no-repeat right bottom`,
        marginLeft: '7vw',
        height: '80vh',
        width: '70vw',
        padding: '0',
        borderRadius: '15px',
        borderColor: '#ffa6a8'
      },
      showUpload: false,
      avatar: '',
      editing: false,
      curUserInfo: {},
      rePassword: '',
    }
  },
  props: {
    toCollectList: Function,
  },
  computed: {
    ...mapGetters([
      'userInfo',
      'newestCollectedCommodityList',
    ])
  },
  mounted() {
    this.getNewestCollectedCommodityList()
  },
  methods: {
    ...mapActions([
      'getNewestCollectedCommodityList',
      'uploadAvatar',
      'updateUserInfo'
    ]),
    handleChange(info) {
      if (info.file.status === 'done') {
        this.$message.success(`${info.file.name} file uploaded successfully`);
      } else if (info.file.status === 'error') {
        this.$message.error(`${info.file.name} file upload failed.`);
      }
    },
    hoverAvatar() {
      this.showUpload = true
    },
    notHoverAvatar() {
      this.showUpload = false
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
          _this.upload()
        }
      }
    },
    customRequest() {
    },
    async upload() {
      if (this.avatar) {
        var arr = this.avatar.split(','), mime = arr[0].match(/:(.*?);/)[1],
          bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
        while (n--) {
          u8arr[n] = bstr.charCodeAt(n);
        }
        var avatarFile = new File([u8arr], this.userName, {type: mime});
        var res = await client.put('avatars/' + this.userName + '.jpg', avatarFile);
        this.uploadAvatar(res.url)
      }
    },
    startEdit() {
      this.curUserInfo = {
        userName: this.userInfo.userName,
        password: '',
        avatar: this.userInfo.avatar,
      }
      this.rePassword = ''
      this.editing = true
    },
    endEdit() {
      if (this.curUserInfo.userName && this.curUserInfo.email) {
        if (this.rePassword === this.curUserInfo.password) {
          this.updateUserInfo(this.curUserInfo)
          this.rePassword = ''
          this.editing = false
        } else {
          this.$message.error('两次密码输入不一致')
        }
      } else {
        this.$message.warn('请将信息填写完整')
      }
    },
    cancelEdit() {
      this.editing = false
    },
    goToCollectList() {
      this.$props.toCollectList()
    }
  },
}
</script>

<style scoped>
#user-card {
  height: calc(80vh - 48px);
  margin: 0;
  padding: 0;
}

.user-card-col {
  height: 100%;
  padding: 0;
  /*background-color: red;*/
}

.userinfo-row {
  margin-top: 30px;
}

.userinfo-col {
  text-align: center;
  margin-top: 20px;
}

#avatar-upload-button {
  position: absolute;
  width: 100%;
  height: calc(100% - 20px);
  margin-top: calc(12px - 100%);
  background-color: #00000066;
  border-radius: 100px;
}

.header {
  width: 100%;
  border-bottom: 0.5px dashed #ffa6a8;
  padding: 0;
  /*background-color: red;*/
}

.header-name {
  color: #ffa6a8;
  font-size: 18px;
  font-family: 幼圆;
  float: left;
  margin: 0;
}

.header-button {
  float: right;
  font-size: 15px;
  font-family: 幼圆;
  color: darkgrey;
}

.collect-card {
  /*width: 48%;*/
  margin: 0.5vh 1% 0.5vh 1%;
  width: 98%;
  float: left;
  border: 0.5px solid lightgrey;
}
</style>

<style>
.ant-upload {
  width: 100%;
  padding: 0;
  border-radius: 0;
}
</style>
