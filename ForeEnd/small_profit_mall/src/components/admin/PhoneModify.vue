<template>
  <el-col :span="15" :push="3">
    <el-card>
      <div slot="header" style="text-align: left">
        <span style="font-weight: bold">修改手机号</span>
      </div>
      <div>
        <el-steps :active="active" simple :align-center="true">
          <el-step title="输入原手机号" icon="el-icon-edit"></el-step>
          <el-step title="短信验证码" icon="el-icon-mobile-phone"></el-step>
          <el-step title="验证新手机号" icon="el-icon-mobile-phone"></el-step>
        </el-steps>
        <el-row style="margin-top: 50px;margin-bottom: 50px">
          <el-col :span="15" :push="3">
            <div v-if="active==1">
              <div>
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入原手机号"
                    v-model.number="oldPhone"
                    maxlength="11"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    class="phone_active_1_input"
                >
                </el-input>
              </div>
              <div class="phone_active_1_div">
                <el-button type="primary" @click="verificationPhone" style="width: 120px"
                           :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
                <el-button type="primary" @click="cancelModifyPhone" style="width: 120px">
                  取消
                </el-button>
              </div>
            </div>
            <div v-if="active==2">
              <div>
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入短信验证码"
                    v-model="smsCode"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    class="phone_active_2_input"
                >
                </el-input>
                <el-button type="primary" @click="getPhoneCode()" :disabled="!md_BtnStatus"
                           style="width: 120px">
                  {{md_BtnStatus?'获取验证码':`重新获取(${md_countDownTime})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" class="phone_active_2_btn"
                           @click="verificationSmsCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" class="phone_active_2_btn"
                           @click="cancelModifyPhone">
                  取消
                </el-button>
              </div>
            </div>
            <div v-if="active==3">
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输新手机号"
                    v-model.number="newPhone"
                    maxlength="11"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    class="phone_active_3_input"
                >
                </el-input>
              </div>
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model="smsCode"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    class="phone_active_3_input_code"
                >
                </el-input>
                <el-button type="primary" @click="getPhoneCodeNew()" :disabled="!md_BtnStatusNew"
                           style="width: 120px">
                  {{md_BtnStatusNew ?'获取验证码':`重新获取(${md_countDownTimeNew})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" class="phone_active_2_btn"
                           @click="verificationNewSmsCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" class="phone_active_2_btn"
                           @click="cancelModifyPhone">
                  取消
                </el-button>
              </div>
            </div>
          </el-col>
        </el-row>
      </div>
    </el-card>
  </el-col>
</template>

<script>
  import * as userApi from "../../api/page/user";
  import encryption from "../../util/encryption";  //*as别名
  export default {
    inject: ["reload"],
    name: "phoneModification",
    data() {
      return {
        //获取验证码的到计时
        md_BtnStatus: true,
        md_countDownTime: 60,
        timer: 0,
        md_BtnStatusNew: true,
        md_countDownTimeNew: 60,
        timerNew: 0,
        //步骤条进度
        active: 1,
        //旧手机号
        oldPhone: '',
        //新手机
        newPhone: '',
        //短信验证码
        smsCode: '',
        //验证按钮
        verification_btn: false,
        verification_btn_content: '验证',
      }
    },
    methods: {
      //验证手机号
      verificationPhone() {
        let phone = /^1[0-9]{10}$/
        if (this.oldPhone == '' || this.oldPhone.length <= 11 || !phone.test(this.oldPhone)) {
          this.$message.warning("请输入正确的手机号")
        } else {
          let formData = new FormData();
          formData.append('phone', encryption.encrypt(this.oldPhone));
          formData.append('userId', sessionStorage.getItem('uId'));
          userApi.verifyPhone(formData).then(res => {
            this.verification_btn_content = '验证中..',
                this.verification_btn = true;
            if (res.success) {
              this.$message({
                message: "短信验证码已发送",
                type: "success",
              })
              this.active = 2;
              sessionStorage.setItem('phone_active', JSON.stringify(this.active));
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
              this.GetCode();
            } else {
              if (res.code==99999){
                this.$message({
                  message: "操作频繁,请稍后重试",
                  type: "warning",
                })
              }else{
                this.$message({
                  message: "手机号验证失败",
                  type: "error",
                })
              }
              this.active = 1;
              sessionStorage.setItem('phone_active', JSON.stringify(this.active));
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            }
          }).catch(error => {
            this.active = 1;
            sessionStorage.setItem('phone_active', JSON.stringify(this.active));
            this.verification_btn_content = '验证',
                this.verification_btn = false;
          })

        }

      },
      //验证短信验证码
      verificationSmsCode() {
        const code = /^[0-9]*$/
        if (this.smsCode == '' || this.smsCode.length < 4 || !code.test(this.smsCode)) {
          this.$message.warning("请输入正确的验证码")
        } else {
          let formData = new FormData()
          formData.append('phone', encryption.encrypt(this.oldPhone))
          formData.append('verification', this.smsCode)
          userApi.verifyPhoneCode(formData).then(res => {
            this.verification_btn_content = '验证中..',
                this.verification_btn = true;
            if (res.success) {
              this.$message({
                message: "验证成功!请验证新手机号",
                type: "success"
              })
              this.smsCode = "",
                  this.active = 3;
              sessionStorage.setItem('phone_active', JSON.stringify(this.active));
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            } else {
              this.$message({
                message: "验证码错误,请重试!",
                type: "error",
              })
              this.active = 2;
              sessionStorage.setItem('phone_active', JSON.stringify(this.active));
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            }
          }).catch(error => {
            this.active = 2;
            sessionStorage.setItem('phone_active', JSON.stringify(this.active));
            this.verification_btn_content = '验证',
                this.verification_btn = false;
          })
        }
      },
      //获取手机验证码
      getPhoneCode() {
        this.verificationPhone();
      },
      //获取新手机验证码
      getPhoneCodeNew() {
        let phone = /^1[0-9]{10}$/;
        if (this.newPhone == '' || this.newPhone.length <= 11 || !phone.test(this.newPhone)) {
          this.$message.warning("请输入正确的手机号")
        } else {
          let formData = new FormData();
          formData.append('phone', encryption.encrypt(this.newPhone));
          userApi.sendNewPhoneCode(formData).then(res => {
            if (res.success) {
              this.$message({
                message: "验证码已发送",
                type: "success",
              })
              this.GetCodeNew();
            } else {
              if(res.code==11211){
                this.$message({
                  message: "该手机号已被其他用户绑定",
                  type: "warning",
                })
              }else{
                this.$message({
                  message: "验证码发送失败,请稍后重试",
                  type: "error",
                })
              }
            }
          })
        }

      },
      //验证新手机
      verificationNewSmsCode() {
        let phone = /^1[0-9]{10}$/
        if (this.newPhone == '' || this.newPhone.length <= 11 || !phone.test(this.newPhone)) {
          this.$message.warning("请输入正确的手机号")
        } else if (this.smsCode == '' || this.smsCode.length <4) {
          this.$message.warning("请输入正确的验证码")
        } else {
          let formData = new FormData()
          formData.append('phone', encryption.encrypt(this.newPhone));
          formData.append('verification', this.smsCode)
          formData.append('userId', sessionStorage.getItem('uId'))
          userApi.verifyNewPhoneCode(formData).then(res => {
            this.verification_btn_content = '验证中..',
                this.verification_btn = true;
            if (res.success) {
              this.$message({
                message: "手机号修改成功!",
                type: "success"
              })
              this.cancelModifyPhone();
            } else {
              this.$message({
                message: "验证码错误,请重试!",
                type: "error",
              })
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            }
          }).catch(error => {
            this.verification_btn_content = '验证',
                this.verification_btn = false;
          })
        }
      },
      //到计时
      GetCode() {
        let endMsRes = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTime', JSON.stringify(endMsRes));
        this.codeCountDown(endMsRes)
      },
      codeCountDown(endMsRes) {
        this.md_BtnStatus = false;
        this.md_countDownTime = Math.ceil((endMsRes - new Date().getTime()) / 1000);
        this.timer = setTimeout(() => {
          this.md_countDownTime--
          if (this.md_countDownTime < 1) {
            this.md_BtnStatus = true
            this.md_countDownTime = 60
            clearTimeout(this.timer)
            sessionStorage.removeItem('md_myEndTime')
          } else {
            this.codeCountDown(endMsRes)
          }
        }, 1000)
      },
      GetCodeNew() {
        let endMsResNew = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTimeNew', JSON.stringify(endMsResNew));
        this.codeCountDownNew(endMsResNew)
      },
      codeCountDownNew(endMsResNew) {
        this.md_BtnStatusNew = false;
        this.md_countDownTimeNew = Math.ceil((endMsResNew - new Date().getTime()) / 1000);
        this.timerNew = setTimeout(() => {
          this.md_countDownTimeNew--
          if (this.md_countDownTimeNew < 1) {
            this.md_BtnStatusNew = true
            this.md_countDownTimeNew = 60
            clearTimeout(this.timerNew)
            sessionStorage.removeItem('md_myEndTimeNew')
          } else {
            this.codeCountDownNew(endMsResNew)
          }
        }, 1000)
      },
      //取消
      cancelModifyPhone() {
        sessionStorage.setItem('phone_active', JSON.stringify(1));
        sessionStorage.setItem("phoneSign", JSON.stringify(false));
        this.reload();
      }
    },
    created() {
      if (sessionStorage.getItem('phone_active') == "1") {
        this.active = 1;
      }
      if (sessionStorage.getItem('phone_active') == "2") {
        this.active = 2;
      }
      if (sessionStorage.getItem('phone_active') == "3") {
        this.active = 3;
      }
      let myEndTime = sessionStorage.getItem('md_myEndTime');
      if (myEndTime && this.codeCountDown(myEndTime)) {
        this.codeCountDown(myEndTime)
      }
      let myEndTimeNew = sessionStorage.getItem('md_myEndTimeNew');
      if (myEndTimeNew && this.codeCountDownNew(myEndTimeNew)) {
        this.codeCountDownNew(myEndTimeNew)
      }
    },
    beforeDestroy() {
      sessionStorage.setItem("phone_active", '1');
    }
  }
</script>

<style scoped>
  .phone_active_1_input {
    width: 46%;
    margin-right: 5%
  }

  .phone_active_1_div {
    margin-top: 10px;
    margin-left: -5%
  }

  .phone_active_2_input {
    width: 36%;
    margin-right: 2%;
    margin-left: -5%
  }

  .phone_active_2_btn {
    width: 60%;
    margin-left: -5%
  }

  .phone_active_3_input {
    width: 60%;
    margin-right: 5%
  }

  .phone_active_3_input_code {
    width: 35%;
    margin-right: 3%;
    margin-left: -5%;
  }
</style>