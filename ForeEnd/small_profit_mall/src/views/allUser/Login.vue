<template>
  <el-container class="login_div">
    <el-main>
      <el-card class="login_component">
        <transition enter-active-class="animated fadeInRightBig"
                    leave-active-class="animated fadeOut">
          <div class="login_div_left div_left" v-cloak v-show="!loginSwitch1">
            <div class="login_div_left_div ">
              <el-form :model="loginForm" :rules="rules" ref="loginForm" :status-icon="true">
                <el-form-item>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </el-form-item>
                <el-form-item prop="name">
                  <el-input placeholder="请输入手机号或用户名" v-model="loginForm.name" clearable
                            class="username"/>
                </el-form-item>
                <el-form-item prop="password">
                  <el-input
                      placeholder="请输入密码"
                      v-model="loginForm.password"
                      show-password
                      class="username"
                      @keyup.enter.native="login('loginForm')"/>
                </el-form-item>
                <el-form-item>
                  <el-button :loading="loginStatus" round @click="login('loginForm')"
                             class="login-btn" :key="login_btn"
                  >{{loginBtnContent}}
                  </el-button>
                </el-form-item>
              </el-form>
              <router-link to="/forgetPassword">忘记密码</router-link>
            </div>
          </div>
        </transition>
        <transition enter-active-class="animated fadeOut"
                    leave-active-class="animated fadeOutRightBig">
          <div class="login_div_right" v-cloak v-show="!loginSwitch2">
            <div class="login_div_right_div div_right_div">
              <h1>欢迎光临</h1>
              <p>输入您的个人资料，开始您的购物之旅</p>
              <el-button round class="login_div_right_btn" @click="switchLoginRegister(1)">注册
              </el-button>
            </div>
          </div>
        </transition>
        <transition enter-active-class="animated fadeInLeftBig"
                    leave-active-class="animated fadeOut">
          <div class="register_div_left div_left" v-cloak v-show="registerSwitch1">
            <div class="login_div_left_div">
              <el-form :status-icon="true" :model="registerForm" :rules="rulesRegister"
                       ref="registerForm">
                <el-form-item>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </el-form-item>
                <el-form-item prop="phone">
                  <el-input placeholder="请输入手机号" v-model="registerForm.phone" clearable
                            class="username"/>
                </el-form-item>
                <el-form-item prop="password">
                  <el-input placeholder="请输入密码" v-model="registerForm.password" show-password
                            class="username"
                            autocomplete="off" @keyup.enter.native="login"/>
                </el-form-item>
                <el-form-item prop="checkPass">
                  <el-input placeholder="请再次输入密码" v-model="registerForm.checkPass" show-password
                            class="username"
                            autocomplete="off" @keyup.enter.native="login"/>
                </el-form-item>
                <el-form-item prop="verify">
                  <el-input placeholder="请输入手机验证码" v-model="registerForm.verify" clearable
                            class="username"
                            style="width: 170px;margin-right: 5px"
                            @keyup.enter.native="register('registerForm')"/>
                  <el-button type="primary" @click="getPhoneCode()" round :disabled="!re_BtnStatus"
                             class="code_btn">
                    {{re_BtnStatus?'获取验证码':`重新获取(${re_countDownTime})`}}
                  </el-button>
                </el-form-item>
                <el-form-item>
                  <el-button class="login-btn" round @click="register('registerForm')">注册
                  </el-button>
                </el-form-item>
              </el-form>
              <router-link to="/forgetPassword">忘记密码</router-link>
            </div>
          </div>
        </transition>
        <transition enter-active-class="animated fadeIn" leave-active-class="animated fadeOut">
          <div class="register_div_right" v-cloak v-show="registerSwitch2">
            <div class="register_div_right_div div_right_div">
              <h1>欢迎回来</h1>
              <p>与我们保持联系请登录您的个人信息</p>
              <el-button round class="login_div_right_btn" @click="switchLoginRegister(2)">登录
              </el-button>
            </div>
          </div>
        </transition>
      </el-card>
    </el-main>
  </el-container>
</template>

<script>

  // @ is an alias to /src
  import *as userApi from '../../api/page/user'
  import encryption from "../../util/encryption";

  export default {
    data() {
      let checkPhone = (rule, value, callback) => {
        const phoneReg = /^1[3|4|5|6|7|8][0-9]{9}$/
        if (!value) {
          return callback(new Error('电话号码不能为空'))
        }
        setTimeout(() => {
          if (!Number.isInteger(+value)) {
            callback(new Error('请输入数字值'))
          } else {
            if (phoneReg.test(value)) {
              callback()
            } else {
              callback(new Error('手机号码格式不正确'))
            }
          }
        }, 100)
      };
      let validatePass2 = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请再次输入密码'));
        } else if (value !== this.registerForm.password) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      return {
        //登录页面切换相关的属性
        loginSwitch1: false,
        registerSwitch1: false,
        loginSwitch2: false,
        registerSwitch2: false,
        verificationCode: "",
        show: true,
        count: '',
        timer: 0,
        re_BtnStatus: true,
        re_countDownTime: 60,
        registerForm: {
          phone: '',
          password: '',
          checkPass: '',
          verify: ''
        },
        //传递的注册加密参数
        rulesRegister: {
          phone: [
            {required: true, validator: checkPhone, trigger: 'blur'}
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 6, max: 18, message: '长度在 6到 18个字符', trigger: 'blur'},
          ],
          checkPass: [
            {validator: validatePass2, trigger: 'blur'}
          ],
          verify: [
            {required: true, message: '请输入手机验证码', trigger: 'blur'},
            {min: 4, max: 4, message: '手机验证码格式错误', trigger: 'blur'}
          ]
        },
        loginForm: {
          name: '',
          password: '',
          ticket: '',
          randStr: '',
        },
        //重载登录按钮的key
        login_btn: 0,
        //登录按钮的状态
        loginStatus: false,
        //登录按钮的内容
        loginBtnContent: '登录',
        rules: {
          name: [
            {required: true, message: '请输入用户名或手机号', trigger: 'blur'},
            {min: 1, max: 15, message: '请输入正确的手机号或用户名', trigger: 'blur'},
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 6, max: 18, message: '请输入正确的密码格式', trigger: 'blur'},
          ],
        }
      };
    },
    methods: {
      //注册用户
      register(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let registerFormParameter = {
              phone: '',
              password: '',
              checkPass: '',
              verify: ''
            };
            registerFormParameter.password = encryption.encrypt(this.registerForm.password);
            registerFormParameter.checkPass = encryption.encrypt(this.registerForm.checkPass);
            registerFormParameter.phone = encryption.encrypt(this.registerForm.phone);
            registerFormParameter.verify = this.registerForm.verify;
            userApi.register(registerFormParameter)
            .then(res => {
              if (res.success) {
                this.$message({
                  message: "注册成功",
                  type: "success"
                });
                this.switchLoginRegister(2);
              } else {
                this.$message.error("注册失败,请稍后重试");
              }
            })
          }
        });
      },
      //获取手机验证码
      getPhoneCode() {
        if ((/^1[34578]\d{9}$/.test(this.registerForm.phone))) {
          this.GetCode();
          let phone = {
            "phone": encryption.encrypt(this.registerForm.phone),
          };
          userApi.getPhone_Code(phone).then(res => {
            if (res.success) {
              this.$message({
                message: "短信验证码已发送!",
                type: "success"
              });
            } else {
              if (res.code == 10003) {
                this.$message.error(res.message);
              } else {
                this.$message.error("手机号已经被注册或手机号不存在");
              }
            }
          })
        } else {
          this.$message({
            message: "请输入正确的手机号",
            type: "error"
          });
        }
      },
      //到计时
      GetCode() {
        let endMsRes = new Date().getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('re_myEndTime', JSON.stringify(endMsRes));
        this.codeCountDown(endMsRes)
      },
      codeCountDown(endMsRes) {
        this.re_BtnStatus = false;
        this.re_countDownTime = Math.ceil((endMsRes - new Date().getTime()) / 1000);
        this.timer = setTimeout(() => {
          this.re_countDownTime--
          if (this.re_countDownTime < 1) {
            this.re_BtnStatus = true
            this.re_countDownTime = 60
            clearTimeout(this.timer)
            sessionStorage.removeItem('re_myEndTime')
          } else {
            this.codeCountDown(endMsRes)
          }
        }, 1000)
      },
      login(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let vm = this;
            const tencentCode = new TencentCaptcha('2093846053', function (result) {
              if (result.ret === 0) {
                vm.loginForm.ticket = result.ticket;
                vm.loginForm.randStr = result.randstr;
                vm.loginStatus = true;
                vm.loginBtnContent = '登录中...';
                userApi.login(vm.loginForm)
                .then(res => {
                  if (res.success) {
                    vm.$message({
                      message: "登录成功",
                      type: "success"
                    });
                    sessionStorage.setItem("username", res.queryResult.list[0].name);
                    sessionStorage.setItem("uId", res.queryResult.list[0].uid);
                    sessionStorage.setItem("token", res.queryResult.list[0].tokens);
                    sessionStorage.setItem("avatar", res.queryResult.list[0].image);
                    vm.$router.push({
                      path: "/Home" //跳转的路径
                    });
                  } else {
                    if (res.code == 10009) {
                      vm.loginForm.ticket = '';
                      vm.loginForm.randStr = '';
                      vm.login_btn = new Date().getTime();
                      vm.$refs['loginForm'].resetFields();
                      vm.$message.error("人机验证二次失败,请稍后重试");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    } else if (res.code == 10008) {
                      vm.loginForm.ticket = '';
                      vm.loginForm.randStr = '';
                      vm.login_btn = new Date().getTime();
                      vm.$message.warning("此用户名为初始用户名不可用,请更换用户名");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    } else {
                      vm.loginForm.ticket = '';
                      vm.loginForm.randStr = '';
                      vm.login_btn = new Date().getTime();
                      vm.$message.warning("用户名或密码错误");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    }
                  }
                })
                .catch(error => {
                  vm.loginForm.ticket = '';
                  vm.loginForm.randStr = '';
                  vm.login_btn = new Date().getTime();
                  vm.resetForm('loginForm');
                  vm.loginStatus = false;
                  vm.loginBtnContent = '登录';
                });
              }
            });
            tencentCode.show(); // 显示验证码
          }
        });

      },
      //重置表单
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      //登录和注册切换
      switchLoginRegister(type) {
        if (type == 1) {
          this.loginSwitch2 = true;
          this.loginSwitch1 = true;
          setTimeout(() => {
            this.registerSwitch1 = true;
            setTimeout(() => {
              this.registerSwitch2 = true;
            }, 400)
          }, 400)
          this.resetForm('loginForm');
          this.resetForm('registerForm');
        } else {
          this.loginSwitch1 = false;
          this.loginSwitch2 = false;
          setTimeout(() => {
            this.registerSwitch1 = false;
            setTimeout(() => {
              this.registerSwitch2 = false;
            }, 400)
          }, 400)
          this.resetForm('loginForm');
          this.resetForm('registerForm');

        }
      }
    },
    created() {
      let myEndTime = sessionStorage.getItem('re_myEndTime')
      if (myEndTime && this.codeCountDown(myEndTime)) {
        this.codeCountDown(myEndTime)
      }
      //加载验证码
      if (window.TencentCaptcha === undefined) {
        let script = document.createElement('script');
        let head = document.getElementsByTagName('head')[0];
        script.type = "text/javascript";
        script.charset = "UTF-8";
        script.src = "https://ssl.captcha.qq.com/TCaptcha.js";
        head.appendChild(script);
      }
    }
  }
  ;
</script>

<style scoped>
  [v-cloak] {
    display: none
  }

  .login_div {
    height: 100%;
    width: 100%;
    background: url("http://img.fhxasdsada.xyz/d6c26a036dd39a31b85min.jpg") no-repeat;
    -moz-background-size: 100% 100%;
    background-size: 100% 100%;
  }

  .login_div /deep/ .el-card {
    box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
    border-radius: 10px;
    border: none;
    background-color: Transparent;
  }

  .login_div /deep/ .el-card__body {
    padding: 0;
  }

  .login_div /deep/ .el-form-item__error {
    color: #f5f5e1;
    margin-left: 10%;
  }

  .login_div /deep/ .el-form-item {
    margin-bottom: 2%;
  }

  .login_component {
    margin: 0 auto;
    height: 70%;
    width: 53%;
    position: relative;
    top: 50%;
    transform: translateY(-50%); /* 元素往下位移自身高度50%的距离 */
  }

  .header-title {
    font-size: 20px;
    font-weight: 700;
  }

  .div_left {
    padding: 2%;
    background: rgba(0, 0, 0, 0.4); /* r:red g:green b:blue a:alpha(半透明):0-1,1是不透明，0是全透明 */
    width: 50%;
    height: 480px;
  }

  .login_div_left {
    float: left;
  }

  .register_div_left {
    float: right;
  }

  .login_div_left_div {
    position: relative;
    top: 50%;
    transform: translateY(-50%);
  }

  .login_div_right {
    padding: 2%;
    width: 50%;
    height: 480px;
    float: left;
  }

  .register_div_right {
    padding: 2%;
    width: 50%;
    height: 480px;
    float: right;
  }

  .div_right_div {
    color: #f5f5e1;
    position: absolute;
    top: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 0 40px;
    height: 100%;
    width: 50%;
    text-align: center;
    /*transition: transform 0.6s ease-in-out;*/
    /*transform: translateX(0);*/
  }

  .login_div_right_div {
    right: 0;
  }

  .register_div_right_div {
    left: 0;
  }

  .username {
    margin: 3% 0;
    width: 300px;
  }

  .username /deep/ .el-input__inner {
    border-radius: 34px;
  }

  .login-btn {
    margin-top: 5%;
    color: #fff;
    border: none;
    background: rgba(253, 108, 83, 0.8);
    width: 300px;
  }

  .login-btn:hover {
    color: #409EFF;
    background-color: #ecf5ff;
  }

  .login_div_right_btn {
    margin-top: 5%;
    background: rgba(253, 108, 83, 0.8);
    border: none;
    color: white

  }

  .login_div_right_btn:hover {
    color: #409EFF;
    background-color: #ecf5ff;
  }

  a {
    color: #f5f5e1;
  }

  a:hover {
    color: #409EFF;
  }
</style>
