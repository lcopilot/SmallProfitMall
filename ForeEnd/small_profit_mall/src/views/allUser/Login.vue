<template>
  <div class="home">
    <el-header height="70px">
      <Header/>
    </el-header>
    <el-main>
      <el-row type="flex" justify="" center>
        <el-col :span="12" :push="1">
          <div><img src="../../assets/images/login-png.png"></div>
        </el-col>
        <el-col :span="12">
          <div class="login">
            <el-card shadow="hover">
              <el-form :model="loginForm" :rules="rules" ref="loginForm" :status-icon="true">
                <el-form-item>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </el-form-item>
                <el-form-item prop="name">
                  <svg-icon name="login" class="icon"/>
                  <el-input placeholder="请输入手机号或用户名" v-model="loginForm.name" clearable
                            class="username" @blur="CheckLoginBtn"/>
                </el-form-item>
                <el-form-item prop="password">
                  <svg-icon name="password" class="icon"/>
                  <el-input
                      placeholder="请输入密码"
                      v-model="loginForm.password"
                      show-password
                      class="username"
                      @blur="CheckLoginBtn"/>
                </el-form-item>
                <!--       <el-form-item>
                         <svg-icon name="verification_code" class="icon"
                                   style="float: left;margin-left:30px "/>
                         <Verify @success="verifyToken" :key="verify"></Verify>
                       </el-form-item> -->
                <el-form-item>
                  <el-button :loading="loginStatus" @click="login('loginForm')"
                             class="login-btn" :key="login_btn"
                  >{{loginBtnContent}}
                  </el-button>
                </el-form-item>
              </el-form>
              <router-link to="/register" style="margin: 7% 52% 0 0">没有账号,去注册</router-link>
              <router-link to="/forgetPassword">忘记密码</router-link>
            </el-card>
          </div>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </div>
</template>

<script>

  // @ is an alias to /src
  const Header = () => import("../../components/pages/Header");
  const Footer = () => import("../../components/pages/Footer");
  const Verify = () => import("../../components/UtilsComponent/vaptcha-code"); //验证码
  import *as userApi from '../../api/page/user'  //*as别名

  export default {
    components: {Header, Footer, Verify},
    data() {
      return {
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
      login(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            let vm=this;
            const tencentCode = new TencentCaptcha('2093846053', function (result) {
              if (result.ret === 0) {
                vm.loginForm.ticket=result.ticket;
                vm.loginForm.randStr=result.randstr;
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
                      vm.loginForm.ticket='';
                      vm.loginForm.randStr='';
                      vm.login_btn = new Date().getTime();
                      vm.$refs['loginForm'].resetFields();
                      vm.$message.error("人机验证二次失败,请稍后重试");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    } else if (res.code == 10008) {
                      vm.loginForm.ticket='';
                      vm.loginForm.randStr='';
                      vm.login_btn = new Date().getTime();
                      vm.$message.warning("此用户名为初始用户名不可用,请更换用户名");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    } else {
                      vm.loginForm.ticket='';
                      vm.loginForm.randStr='';
                      vm.login_btn = new Date().getTime();
                      vm.$message.warning("用户名或密码错误");
                      vm.loginStatus = false;
                      vm.loginBtnContent = '登录';
                    }
                  }
                })
                .catch(error => {
                  vm.loginForm.ticket='';
                  vm.loginForm.randStr='';
                  vm.login_btn = new Date().getTime();
                  vm.resetForm('loginForm');
                  vm.$message.error("服务器错误");
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
    },
    created() {
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
  .icon {
    width: 32px;
    height: 32px;
    vertical-align: -0.5em;
    fill: currentColor;
    overflow: hidden;
    margin-right: 7px;
  }

  .header-title {
    font-size: 20px;
    font-weight: 700;
    margin: 0 0 20px 30px;
  }

  .login {
    max-width: 470px;
    margin: 0 auto 5px;
    position: relative;
    padding-left: 15px;
    padding-right: 15px;
    text-align: center;
  }

  .username {
    margin: 10px 0;
    width: 300px;
  }

  .login-btn {
    margin: 25px 0 0 40px;
    color: #fff;
    border: none;
    background-color: #42b983;
    width: 300px;
  }

  .login-btn:hover {
    color: #409EFF;
    background-color: #ecf5ff;
  }

  a {
    color: #42b983;
  }

  a:hover {
    color: #409EFF;
  }
</style>
