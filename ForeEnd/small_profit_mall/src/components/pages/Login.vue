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
              <el-form :model="loginForm" :rules="rules" ref="loginForm">
                <el-form-item>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </el-form-item>
                <el-form-item prop="name">
                  <svg-icon name="login" class="icon"/>
                  <el-input placeholder="请输入手机号或用户名" v-model="loginForm.name" clearable
                            class="username"/>
                </el-form-item>
                <el-form-item prop="password">
                  <svg-icon name="password" class="icon"/>
                  <el-input
                      placeholder="请输入密码"
                      v-model="loginForm.password"
                      show-password
                      class="username"
                      autocomplete="off"
                      @keyup.enter.native="login"/>
                </el-form-item>
                <el-form-item>
                  <svg-icon name="verification_code" class="icon"
                            style="float: left;margin-left:30px "/>
                  <Verify @success="verifyToken"></Verify>
                </el-form-item>
                <el-form-item>
                  <el-button class="login-btn" @click="login('loginForm')">登录</el-button>
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
  const Header = () => import("./Header");
  const Footer = () => import("./Footer");
  const Verify = () => import("../UtilsComponent/vaptcha-code"); //验证码
  import *as userApi from '../../api/page/user'  //*as别名

  export default {
    components: {Header, Footer, Verify},
    data() {
      return {
        loginForm: {
          name: '',
          password: '',
          token: '',
        },
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
                if (this.loginForm.token==null) {
                  this.$message({
                    message: "请完成人机验证",
                    type: "warning"
                  });
                } else {
                  userApi.login(this.loginForm)
                  .then(res => {
                    if (res.success) {
                      this.$message({
                        message: "登录成功",
                        type: "success"
                      });
                      sessionStorage.setItem("username", res.queryResult.list[0].name);
                      sessionStorage.setItem("uId", res.queryResult.list[0].uid);
                      sessionStorage.setItem("token", res.queryResult.list[0].tokens);
                      this.$router.push({
                        path: "/Home" //跳转的路径
                      });
                    } else {
                      if (res.code=10009){
                        this.$message.error("人机验证二次失败,请稍后重试")
                        this.$router.go(0);
                      }else {
                        this.$message.error("账户或密码错误!")
                        this.$router.go(0);
                      }

                    }
                  })
                  .catch(error => {
                    this.$message.error("服务器错误");
                    console.log(error);
                    this.$router.go(0);

                  });
                }

              }
            }
        );
      },
      verifyToken(token) {
        this.loginForm.token=token;
      }
    },

  };
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


  a {
    color: #42b983;
  }
</style>
