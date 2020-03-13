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
              <el-input
                  autofocus
                  type='text'
                  placeholder="请输入原手机号"
                  v-model.number="oldPhone"
                  maxlength="11"
                  show-word-limit
                  clearable
                  prefix-icon="el-icon-mobile-phone"
                  style="width: 45%;margin-right: 5%"
              >
              </el-input>
              <el-button type="primary" @click="verificationPhone" :loading="verification_btn">
                {{verification_btn_content}}
              </el-button>
            </div>
            <div v-if="active==2">
              <el-input
                  autofocus
                  type='text'
                  placeholder="请输入短信验证码"
                  v-model.number="smsCode"
                  maxlength="4"
                  show-word-limit
                  clearable
                  prefix-icon="el-icon-mobile-phone"
                  style="width: 45%;margin-right: 5%"
              >
              </el-input>
              <el-button type="primary" @click="verificationSmsCode" :loading="verification_btn">
                {{verification_btn_content}}
              </el-button>
              <el-button type="primary" @click="getPhoneCode()" :disabled="!md_BtnStatus"
                         class="code_btn">
                {{md_BtnStatus?'获取验证码':`重新获取(${md_countDownTime})`}}
              </el-button>
            </div>
            <div v-if="active==3">
              <div style="margin-bottom: 10px"><el-input
                  autofocus
                  type='text'
                  placeholder="请输新手机号"
                  v-model.number="smsCode"
                  maxlength="4"
                  show-word-limit
                  clearable
                  prefix-icon="el-icon-mobile-phone"
                  style="width: 45%;margin-right: 5%"
              >
              </el-input>
              </div>
              <div  style="margin-bottom: 10px">
                <el-input
                    autofocus
                    type='text'
                    placeholder="请输入验证码"
                    v-model.number="smsCode"
                    maxlength="4"
                    show-word-limit
                    clearable
                    prefix-icon="el-icon-mobile-phone"
                    style="width: 45%;margin-right: 5%"
                >
                </el-input>
              </div>
              <div>
                <el-button type="primary" @click="verificationSmsCode" :loading="verification_btn">
                  {{verification_btn_content}}
                </el-button>
                <el-button type="primary" @click="getPhoneCode()" :disabled="!md_BtnStatus"
                           class="code_btn">
                  {{md_BtnStatus?'获取验证码':`重新获取(${md_countDownTime})`}}
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

  export default {
    name: "phoneModification",
    data() {
      return {
        //获取验证码的到计时
        md_BtnStatus: true,
        md_countDownTime: 60,
        timer: 0,
        //步骤条进度
        active: 1,
        //旧手机号
        oldPhone: '',
        //短信验证码
        smsCode: '',
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
        }
        this.verification_btn_content = '验证中..',
            this.verification_btn = true;
        setTimeout(() => {
          this.active = 2;
          this.verification_btn_content = '验证',
              this.verification_btn = false;
          this.GetCode();
        }, 3000);
      },
      //验证短信验证码
      verificationSmsCode() {
        if (this.smsCode == '' || this.smsCode.length <= 4) {
          this.$message.warning("请输入正确的验证码")
        }
        this.verification_btn_content = '验证中..',
            this.verification_btn = true;
        setTimeout(() => {
          this.active = 3;
          this.verification_btn_content = '验证',
              this.verification_btn = false;

        }, 3000);
      },
      //获取手机验证码
      getPhoneCode() {
        this.GetCode();
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
    },
    created() {
      let myEndTime = sessionStorage.getItem('md_myEndTime');
      if (myEndTime && this.codeCountDown(myEndTime)) {
        this.codeCountDown(myEndTime)
      }
    }
  }
</script>

<style scoped>

</style>