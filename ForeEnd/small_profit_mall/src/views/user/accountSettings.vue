<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="15" :push="3">
          <el-card>
            <div slot="header" style="text-align: left;font-size: 17px;font-weight:600;">账户设置</div>
            <div style="width: 80%;text-align: left;">
              <el-form label-position="right" label-width="100px" :model="accountForm">
                <el-form-item label="账户密码">
                  **********
                  <el-button type="text">修改</el-button>
                </el-form-item>
                <el-form-item label="支付密码">
                  未设置
                  <el-button type="text">
                    修改
                  </el-button>
                  <el-button type="text">
                    设置
                  </el-button>
                </el-form-item>
                <el-form-item label="刷脸支付">
                  已开启
                  <el-button type="text" @click="callFace">更新人脸</el-button>
                  <el-button type="text">关闭刷脸支付</el-button>
                </el-form-item>
                <Face @uploadFace="uploadFace()" ref="face"></Face>
              </el-form>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  const personalPage = () => import("../../components/admin/personalHubPage");
  const Face = () => import("../../components/admin/face");
  import *as userApi from '../../api/page/user';
  import encryption from "../../util/encryption";
  export default {
    name: "accountSettings",
    components: {personalPage,Face},
    data() {
      return {
        accountForm: {}
      }
    },
    methods: {
      //调用人脸采集
      callFace(){
        this.$refs.face.faceVisible=true;
      },
      //上传人脸
      uploadFace(image) {
        if (image) {
          let dataForm=new FormData();
          dataForm.append("userId",sessionStorage.getItem("uId"));
          //截取后端需要的Base64格式 并加密
          dataForm.append("img",encryption.encrypt(image.substring(22)));
          userApi.uploadFace().then(res => {
            if (res.success){
              this.$message({
                message:"人脸采集成功!已上传至服务器",
                type:"success"
              });
              this.$refs.face.faceVisible=false;
              this.$refs.face.faceLoading=false;
              this.$refs.face.faceBtnContent = '开始采集';
              this.$refs.face.collectionPrompt='';
              this.$refs.face.stopNavigator();
            }else {
              this.$refs.face.faceLoading=false;
              this.$refs.face.faceBtnContent = '重新采集';
              this.$refs.face.recognitionFailure();
            }
          })
        }
      },
      //关闭摄像头
      stopNavigator() {
        this.thisVideo.srcObject.getTracks()[0].stop();
        this.cameraStatus = false;
      }
    }
  }
</script>

<style scoped>

</style>