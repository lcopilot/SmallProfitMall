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
                  <el-button type="text" @click="passwordVisible=true">修改</el-button>
                  <el-dialog
                      title="修改密码"
                      :visible.sync="passwordVisible"
                      width="30%" center @close="accountForm.password=''">
                    <el-input placeholder="请输入新的密码" show-password
                              v-model="accountForm.password" maxlength="18"></el-input>
                    <span slot="footer" class="dialog-footer">
                      <el-button @click="passwordVisible = false">取 消</el-button>
                      <el-button type="primary" @click="changePassword">确 定</el-button>
                      </span>
                  </el-dialog>
                </el-form-item>
                <el-form-item label="支付密码">
                  {{paymentPasswordExists?'已设置':'未设置'}}
                  <el-button type="text" @click="paymentPasswordVisible=true">
                    {{paymentPasswordExists?'修改':'设置'}}
                  </el-button>
                  <el-dialog
                      title="修改密码"
                      :visible.sync="paymentPasswordVisible"
                      @close="accountForm.paymentPassword=''"
                      width="30%" center>
                    <el-input placeholder="请输入新的支付密码"
                              v-model="accountForm.paymentPassword" maxlength="6"
                              show-password></el-input>
                    <span slot="footer" class="dialog-footer">
                      <el-button @click="paymentPasswordVisible = false">取 消</el-button>
                      <el-button type="primary" @click="changePaymentPassword">确 定</el-button>
                    </span>
                  </el-dialog>
                </el-form-item>
                <el-form-item label="刷脸支付">
                  {{faceRecognition?'已开启':'未开启'}}
                  <el-button type="text" @click="callFace">{{faceRecognition?'更新人脸':'开启'}}
                  </el-button>
                  <el-button type="text" v-if="faceRecognition">关闭刷脸支付</el-button>
                </el-form-item>
                <Face @upload-face="uploadFace" ref="face"></Face>
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
    components: {personalPage, Face},
    data() {
      return {
        //密码对话框
        passwordVisible: false,
        paymentPasswordVisible: false,
        //是否设置支付密码
        paymentPasswordExists: false,
        //是否开启刷脸支付
        faceRecognition: false,
        accountForm: {
          password: '',
          paymentPassword: '',
        }
      }
    },
    methods: {
      //修改账户密码
      changePassword(code) {
        let regular = /^([a-z0-9\.\@\!\#\$\%\^\&\*\(\)]){6,20}$/i;
        if (!regular.test(this.accountForm.password)) {
          return this.$message.warning("请输入正确的密码格式,6-18位支持(!@#$%^&*())")
        }
        let params={
          userId:sessionStorage.getItem("uId"),
          password:encryption.encrypt(this.accountForm.password)
        };
        userApi.changePassword(params).then(res => {
          if (res.success) {
            this.$message.success("登录密码修改成功!")
            this.passwordVisible=false;
          }
        });
      },
      //修改设置支付密码
      changePaymentPassword() {
        let regular = /^\d{6}$/;
        if (!regular.test(this.accountForm.paymentPassword)) {
          return this.$message.warning("请输入正确的6位支付密码!")
        }
        let params={
          userId:sessionStorage.getItem("uId"),
          paymentPassword:encryption.encrypt(this.accountForm.paymentPassword)
        };
        userApi.changePaymentPassword(params).then(res => {
          if (res.success) {
            this.$message.success("支付密码修改成功!")
            this.paymentPasswordVisible=false;
          }
        });
      },
      //调用人脸采集
      callFace() {
        this.$refs.face.faceVisible = true;
        this.$refs.face.recognitionFailure();
      },
      //上传人脸
      uploadFace(videoFile,image) {
        if (videoFile && image) {
          let dataForm = new FormData();
          dataForm.append("userId", sessionStorage.getItem("uId"));
          //截取后端需要的Base64格式 并加密
          dataForm.append("image", image);
          dataForm.append("videoFile", videoFile);
          this.$refs.face.recognitionFailure(20190415);
          userApi.uploadFace(dataForm).then(res => {
            console.log(res);
            if (res.success) {
              this.$message({
                message: "人脸采集成功!已上传至服务器",
                type: "success"
              });
              this.$refs.face.faceVisible = false;
              this.$refs.face.faceLoading = false;
              this.$refs.face.faceBtnContent = '开始采集';
              this.$refs.face.collectionPrompt = '';
              this.$refs.face.stopNavigator();
            } else {
              this.$refs.face.faceLoading = false;
              this.$refs.face.faceBtnContent = '重新采集';
              this.$refs.face.recognitionFailure(res.faceRecognition.result.error_code);
            }
          }).catch(error=>{
            console.log(error);
            this.$refs.face.faceLoading = false;
            this.$refs.face.faceBtnContent = '重新采集';
            this.$refs.face.recognitionFailure(114);
          })
        }
      },
      //获取账户设置
      getAccountSetting() {
        userApi.getAccountSetting(sessionStorage.getItem("uId")).then(res => {
          if (res.success) {
            this.paymentPasswordExists = res.queryResult.list[0].paymentPasswordExists;
            this.faceRecognition = res.queryResult.list[0].faceRecognition;
          }
        })
      },
    },
    created() {
      this.getAccountSetting();
    }

  }
</script>

<style scoped>

</style>