<template>
  <el-col :span="15" :push="3">
    <el-card v-if="emailTypeM==1">
      <div slot="header" style="text-align: left">
        <span style="font-weight: bold">绑定邮箱</span>
      </div>
      <div>
        <el-row style="margin-top: 50px;margin-bottom: 50px">
          <el-col :span="15" :push="4">
            <div>
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输邮箱"
                    v-model="email"
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 60%;margin-right: 5%"
                >
                </el-input>
              </div>
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model.number="emailCode"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 35%;margin-right: 3%;margin-left: -5%;"
                >
                </el-input>
                <el-button type="primary" @click="getEmailCode()" :disabled="!emailBtnStatus"
                           style="width: 120px">
                  {{emailBtnStatus ?'获取验证码':`重新获取(${emailCountDownTime})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="verificationEmailCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="cancelModifyEmail">
                  取消
                </el-button>
              </div>
            </div>
          </el-col>
        </el-row>
      </div>
    </el-card>
    <el-card v-if="emailTypeM==2">
      <div slot="header" style="text-align: left">
        <span style="font-weight: bold">修改邮箱</span>
      </div>
      <div>
        <el-steps :active="activeEmail" simple :align-center="true">
          <el-step title="选择验证方式" icon="el-icon-edit"></el-step>
          <el-step title="验证码" icon="el-icon-mobile-phone"></el-step>
          <el-step title="验证新邮箱" icon="el-icon-mobile-phone"></el-step>
        </el-steps>
        <el-row style="margin-top: 50px;margin-bottom: 50px">
          <el-col :span="15" :push="3">
            <div v-if="activeEmail==1">
              <h3 style="margin-right: 32%">请选择校验方式</h3>
              <div style="margin: 5% 21% 5% 0">
                <template>
                  <el-radio v-model="verificationType" label="1">
                    <svg-icon name="phone" style="margin-bottom: -8%"/>
                    手机
                  </el-radio>
                  <el-radio v-model="verificationType" label="2">
                    <svg-icon name="email" style="margin-bottom: -8%"/>
                    邮箱
                  </el-radio>
                </template>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" class="ver_btn"
                           @click="getCode()" :loading="sendCode_btn">
                  {{sendCode_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" class="ver_btn"
                           @click="cancelModifyEmail">
                  取消
                </el-button>
              </div>
            </div>
            <div v-if="activeEmail==2">
              <div>
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model.number="code"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 36%;margin-right: 2%;margin-left: -5%"
                >
                </el-input>
                <el-button type="primary" @click="getCode()" :disabled="!mdEmailBtnStatus"
                           style="width: 120px">
                  {{mdEmailBtnStatus?'获取验证码':`重新获取(${mdEmailCountDownTime})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="verificationMdCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="cancelModifyEmail">
                  取消
                </el-button>
              </div>
            </div>
            <div v-if="activeEmail==3">
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入新邮箱"
                    v-model="email"
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 60%;margin-right: 5%"
                >
                </el-input>
              </div>
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model.number="emailCode"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 35%;margin-right: 3%;margin-left: -5%;"
                >
                </el-input>
                <el-button type="primary" @click="getEmailCode()"
                           :disabled="!mdNewEmailBtnStatus"
                           style="width: 120px">
                  {{mdNewEmailBtnStatus ?'获取验证码':`重新获取(${mdNewEmailCountDownTime})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="verificationEmailCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="cancelModifyEmail">
                  取消
                </el-button>
              </div>
            </div>
          </el-col>
        </el-row>
      </div>
    </el-card>
    <el-card v-if="emailTypeM==3">
      <div slot="header" style="text-align: left">
        <span style="font-weight: bold">解绑邮箱</span>
      </div>
      <div>
        <el-row style="margin-top: 50px;margin-bottom: 50px">
          <el-col :span="15" :push="4">
            <div>
              <h3 style="margin-right: 38%">请选择校验方式</h3>
              <div style="margin: 5% 28% 8% 0">
                <template>
                  <el-radio v-model="verificationType" label="1">
                    <svg-icon name="phone" style="margin-bottom: -8%"/>
                    手机
                  </el-radio>
                  <el-radio v-model="verificationType" label="2">
                    <svg-icon name="email" style="margin-bottom: -8%"/>
                    邮箱
                  </el-radio>
                </template>
              </div>
              <div style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model.number="code"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 35%;margin-right: 3%;margin-left: -5%;"
                >
                </el-input>
                <el-button type="primary" @click="getUntieEmailCode()"
                           :disabled="!untieEmailBtnStatus"
                           style="width: 120px">
                  {{untieEmailBtnStatus ?'获取验证码':`重新获取(${untieEmailCountDownTime})`}}
                </el-button>
              </div>
              <div style="margin: 3% 0 3% 0;">
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="verificationUntieEmail" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
              </div>
              <div>
                <el-button type="primary" style="width: 60%;margin-left: -5%"
                           @click="cancelModifyEmail">
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
  import *as userApi from '../../api/page/user'  //*as别名
  export default {
    inject: ["reload"],
    name: "emailModify",
    data() {
      return {
        //校验方式
        verificationType: "2",
        //获取邮箱验证码的到计时
        emailBtnStatus: true,
        emailCountDownTime: 60,
        emailTimer: 0,
        //修改邮时验证码的倒计时
        mdEmailBtnStatus: true,
        mdEmailCountDownTime: 60,
        mdEmailTimer: 0,
        //验证新邮箱的倒计时
        mdNewEmailBtnStatus: true,
        mdNewEmailCountDownTime: 60,
        mdNewEmailTimer: 0,
        //解绑邮箱的倒计时
        untieEmailBtnStatus: true,
        untieEmailCountDownTime: 60,
        untieEmailTimer: 0,
        //邮箱
        email: '',
        //绑定时邮箱验证码
        emailCode: '',
        //验证按钮
        verification_btn: false,
        verification_btn_content: '验证',
        //发送验证码按钮
        sendCode_btn: false,
        sendCode_btn_content: "获取验证码",
        //邮箱验步数
        activeEmail: 1,
        emailTypeM: this.emailType,
        //修改邮箱时的验证码
        code: "",
      }
    },
    props: {
      //邮箱变更类型
      emailType: {
        type: Number,
        required: false,
        default: 1
      }
    },
    methods: {
      //取消
      cancelModifyEmail() {
        sessionStorage.setItem('email_active', "1");
        sessionStorage.setItem("emailSign", JSON.stringify(false));
        this.reload();
      },
      //绑定邮箱时校验邮箱验证码
      verificationEmailCode() {
        const mailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/
        if (!this.email) {
          this.$message({
            message: "请输入邮箱",
            type: "warning"
          });
        } else if (!mailReg.test(this.email)) {
          this.$message({
            message: "请输入正确的邮箱格式",
            type: "warning"
          });
        } else if (this.emailCode == "" || this.emailCode <= 4) {
          this.$message({
            message: "请输入正确格式的验证码",
            type: "warning"
          });
        } else {
          this.verification_btn_content = '验证中..',
              this.verification_btn = true;
          let formData = new FormData()
          formData.append('userId', sessionStorage.getItem("uId"))
          formData.append('email', this.email);
          formData.append('verification', this.emailCode);
          userApi.validationEmail(formData).then(res => {
            if (res.success) {
              this.$message({
                message: "邮箱验证成功!",
                type: "success",
              })
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
              this.cancelModifyEmail();
            } else {
              this.$message({
                message: "邮箱绑定失败!",
                type: "error",
              })
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            }
          })

        }
      },
      //绑定邮箱时发送邮箱验证码
      getEmailCode() {
        const mailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/
        if (!this.email) {
          this.$message({
            message: "请输入邮箱",
            type: "warning"
          });
        } else if (!mailReg.test(this.email)) {
          this.$message({
            message: "请输入正确的邮箱格式",
            type: "warning"
          });
        } else {
          this.GetCodeEmail();
          let formData = new FormData()
          formData.append('uId', sessionStorage.getItem("uId"))
          formData.append('email', this.email)
          userApi.getEmailCode(formData).then(res => {
            if (res.success) {
              this.$message({
                message: "邮箱验证码已发送",
                type: "success",
              })
            } else {
              this.$message({
                message: "邮箱验证码发送失败,请检查邮箱",
                type: "error",
              })
            }
          })
        }

      },
      //修改邮箱时获取验证码
      getCode() {
        this.sendCode_btn = true;
        this.sendCode_btn_content = "发送中";
        let formData = new FormData()
        formData.append('userId', sessionStorage.getItem("uId"))
        formData.append('verificationType', this.verificationType);
        userApi.getCode(formData).then(res => {
          if (res.success) {
            this.$message({
              message: "验证码发送成功",
              type: "success",
            })
            this.sendCode_btn = false;
            this.sendCode_btn_content = "获取验证码";
            this.GetCodeMdEmail();
            this.activeEmail = 2;
            sessionStorage.setItem("UpdateMailingCode", res.queryResult.list[0]);
            sessionStorage.setItem('email_active', JSON.stringify(this.activeEmail));
          } else {
            this.$message({
              message: "验证码发送失败,请稍后重试",
              type: "error",
            })
            this.sendCode_btn = false;
            this.sendCode_btn_content = "获取验证码";
          }
        })
      },
      //验证修改邮箱时的验证码
      verificationMdCode() {
        if (this.code == '' || this.code.length <= 4) {
          this.$message({
            message: "请输入正确格式的验证码",
            type: "warning"
          });
        } else {
          this.verification_btn_content = '验证中..',
              this.verification_btn = true;
          let formData = new FormData()
          formData.append('userId', sessionStorage.getItem("uId"))
          formData.append('account', sessionStorage.getItem("UpdateMailingCode"));
          formData.append('verificationType', this.verificationType);
          formData.append('verification', this.code);
          userApi.verificationModifyEmailCode(formData).then(res => {
            if (res.success) {
              this.$message({
                message: "验证成功",
                type: "success",
              })
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
              this.activeEmail = 3;
              sessionStorage.setItem('email_active', JSON.stringify(this.activeEmail));
            } else {
              this.$message({
                message: "验证失败,请重试",
                type: "error",
              })
              this.verification_btn_content = '验证',
                  this.verification_btn = false;
            }
          })
        }
      },
      //获取解绑邮箱的验证码
      getUntieEmailCode() {
        this.GetCodeUntieEmail();
      },
      //验证解绑邮箱
      verificationUntieEmail() {
        if (this.code == '' || this.code.length <= 4) {
          this.$message({
            message: "请输入正确格式的验证码",
            type: "warning"
          });
        } else {
          this.verification_btn_content = '验证中..',
              this.verification_btn = true;
          setTimeout(() => {
            this.verification_btn_content = '验证',
                this.verification_btn = false;

          }, 3000);
        }
      },
      //绑定邮箱的到计时
      GetCodeEmail() {
        let endMsResNew = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTimeEmail', JSON.stringify(endMsResNew));
        this.codeCountDownEmail(endMsResNew)
      },
      codeCountDownEmail(endMsResNew) {
        this.emailBtnStatus = false;
        this.emailCountDownTime = Math.ceil((endMsResNew - new Date().getTime()) / 1000);
        this.emailTimer = setTimeout(() => {
          this.emailCountDownTime--
          if (this.emailCountDownTime < 1) {
            this.emailBtnStatus = true
            this.emailCountDownTime = 60
            clearTimeout(this.emailTimer)
            sessionStorage.removeItem('md_myEndTimeEmail')
          } else {
            this.codeCountDownEmail(endMsResNew)
          }
        }, 1000)
      },
      //验证旧邮箱的到计时
      GetCodeMdEmail() {
        let endMsResNew = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTimeMdEmail', JSON.stringify(endMsResNew));
        this.codeCountDownMdEmail(endMsResNew)
      },
      codeCountDownMdEmail(endMsResNew) {
        this.mdEmailBtnStatus = false;
        this.mdEmailCountDownTime = Math.ceil((endMsResNew - new Date().getTime()) / 1000);
        this.mdEmailTimer = setTimeout(() => {
          this.mdEmailCountDownTime--
          if (this.mdEmailCountDownTime < 1) {
            this.mdEmailBtnStatus = true
            this.mdEmailCountDownTime = 60
            clearTimeout(this.mdEmailTimer)
            sessionStorage.removeItem('md_myEndTimeMdEmail')
          } else {
            this.codeCountDownMdEmail(endMsResNew)
          }
        }, 1000)
      },
      //验证新邮箱的到计时
      GetCodeMdNewEmail() {
        let endMsResNew = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTimeMdNewEmail', JSON.stringify(endMsResNew));
        this.codeCountDownMdNewEmail(endMsResNew)
      },
      codeCountDownMdNewEmail(endMsResNew) {
        this.mdNewEmailBtnStatus = false;
        this.mdNewEmailCountDownTime = Math.ceil((endMsResNew - new Date().getTime()) / 1000);
        this.mdNewEmailTimer = setTimeout(() => {
          this.mdNewEmailCountDownTime--
          if (this.mdNewEmailCountDownTime < 1) {
            this.mdNewEmailBtnStatus = true
            this.mdNewEmailCountDownTime = 60
            clearTimeout(this.mdNewEmailTimer)
            sessionStorage.removeItem('md_myEndTimeMdNewEmail')
          } else {
            this.codeCountDownMdNewEmail(endMsResNew)
          }
        }, 1000)
      },
      //验证解绑邮箱的到计时
      GetCodeUntieEmail() {
        let endMsResNew = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('md_myEndTimeUntieEmail', JSON.stringify(endMsResNew));
        this.codeCountDownUntieEmail(endMsResNew)
      },
      codeCountDownUntieEmail(endMsResNew) {
        this.untieEmailBtnStatus = false;
        this.untieEmailCountDownTime = Math.ceil((endMsResNew - new Date().getTime()) / 1000);
        this.untieEmailTimer = setTimeout(() => {
          this.untieEmailCountDownTime--
          if (this.untieEmailCountDownTime < 1) {
            this.untieEmailBtnStatus = true
            this.untieEmailCountDownTime = 60
            clearTimeout(this.untieEmailTimer)
            sessionStorage.removeItem('md_myEndTimeUntieEmail')
          } else {
            this.codeCountDownUntieEmail(endMsResNew)
          }
        }, 1000)
      },

    },
    created() {
      if (sessionStorage.getItem('email_active') == "1") {
        this.activeEmail = 1;
      }
      if (sessionStorage.getItem('email_active') == "2") {
        this.activeEmail = 2;
      }
      if (sessionStorage.getItem('email_active') == "3") {
        this.activeEmail = 3;
      }
      this.emailTypeM = sessionStorage.getItem('emailType');

      let myEndTimeEmail = sessionStorage.getItem('md_myEndTimeEmail');
      if (myEndTimeEmail && this.codeCountDownEmail(myEndTimeEmail)) {
        this.codeCountDownEmail(myEndTimeEmail)
      }
      let myEndTimeMdEmail = sessionStorage.getItem('md_myEndTimeMdEmail');
      if (myEndTimeMdEmail && this.codeCountDownMdEmail(myEndTimeMdEmail)) {
        this.codeCountDownMdEmail(myEndTimeMdEmail)
      }
      let myEndTimeMdNewEmail = sessionStorage.getItem('md_myEndTimeMdNewEmail');
      if (myEndTimeMdNewEmail && this.codeCountDownMdNewEmail(myEndTimeMdNewEmail)) {
        this.codeCountDownMdNewEmail(myEndTimeMdNewEmail)
      }
      let myEndTimeUntieEmail = sessionStorage.getItem('md_myEndTimeUntieEmail');
      if (myEndTimeUntieEmail && this.codeCountDownUntieEmail(myEndTimeUntieEmail)) {
        this.codeCountDownUntieEmail(myEndTimeUntieEmail)
      }
    }
  }
</script>

<style scoped>
  .ver_btn {
    width: 35%;
    margin-left: -20%
  }
</style>