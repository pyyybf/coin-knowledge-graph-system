<template>
  <a-layout-content style="padding: 0 50px;overflow: auto">
    <br/>
    <a-row :gutter="16" style="height: 380px">
      <a-col class="gutter-row" :span="6" style="height:100%">
        <a-upload-dragger
          name="file"
          :multiple="false"
          :customRequest="customRequest"
          @change="handleChange"
          style="width:100%;height: 400px"
          :showUploadList="false"
        >
          <p class="ant-upload-drag-icon">
            <a-icon type="inbox" style="font-size: 120px"/>
          </p>
          <p class="ant-upload-text">
            Click or drag file to this area to upload
          </p>
          <p class="ant-upload-hint">
            Support for a single or bulk upload. Strictly prohibit from uploading company data or other
            band files
          </p>
        </a-upload-dragger>
      </a-col>
      <a-col class="gutter-row" :span="6" v-for="file in fileList" :key="file.id" style="height:100%">
        <a-card hoverable style="width: 100%;height: 100%">
          <img
            slot="cover"
            style="width: 100%"
            alt="example"
            src="src/assets/graph.png"
          />
          <a-row type="flex" align="middle">
            <a-col>
              <a-card-meta :title="file.fileName" style="float: left"/>
            </a-col>
            <a-col>
              <a-tag color="blue" style="float: left;margin-left: 10px">{{file.fileType}}</a-tag>
            </a-col>
          </a-row>
          <a-divider type="horizontal" style="margin-top: 15px;margin-bottom: 15px"></a-divider>
          <a-row type="flex" align="middle">
            <a-col :span="8" :offset="4" class="edit-icon" @click="editFile(file.id,file.fileName)"
                   style="font-size: 15px">
              <a-icon type="edit"/>
              编辑
            </a-col>
            <a-col :span="8" :offset="4" class="delete-icon" @click="deleteFile(file.id)"
                   style="font-size: 15px">
              <a-icon type="delete"/>
              删除
            </a-col>
          </a-row>
        </a-card>
      </a-col>
    </a-row>
  </a-layout-content>
</template>

<script>
  import OSS from 'ali-oss';
  import {uploadFileAPI, getAllFilesAPI, deleteFileByIdAPI} from '../api';
  import {mapGetters, mapMutations} from "vuex"

  const client = new OSS({
    bucket: 'pyyybf',
    region: 'oss-cn-shanghai',
    accessKeyId: 'LTAI4G3YDVKD453rLQRPeAQj',
    accessKeySecret: 'zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM',
  });

  export default {
    name: "MyFiles",
    data() {
      return {
        fileList: [],
      };
    },
    async mounted() {
      await this.getFileList()
    },
    computed: {
      ...mapGetters([
        'fileId'
      ])
    },
    methods: {
      ...mapMutations([
        'set_file',
      ]),
      handleChange(info) {
        if (info.file.status === 'done') {
          this.$message.success(`${info.file.name} file uploaded successfully`);
        } else if (info.file.status === 'error') {
          this.$message.error(`${info.file.name} file upload failed.`);
        }
      },
      async customRequest(info) {
        try {
          let result = await client.put(info.file.name.split('.')[0] + '/' + info.file.name, info.file);
          await uploadFileAPI({
            url: result.url,
            name: info.file.name.split('.')[0],
          })
          await this.getFileList();
        } catch (e) {
          console.log(e)
        }
      },
      async getFileList() {
        const res = await getAllFilesAPI();
        this.fileList = res.data.content;
      },
      editFile(id, name) {
        this.set_file({
          fileId: id,
          fileName: name
        })
        this.$router.push({
          name: 'editor',
          params: {
            fileId: id,
            fileName: name
          }
        })
      },
      async deleteFile(id) {
        deleteFileByIdAPI(id)
        this.fileList = this.fileList.filter(item => item.id != id)
      }
    },
  };
</script>

<style>
  .delete-icon:hover {
    color: #F56C6C
  }

  .edit-icon:hover {
    color: #409EFF
  }

  .gutter-row {
    margin-top: 20px;
  }

</style>
