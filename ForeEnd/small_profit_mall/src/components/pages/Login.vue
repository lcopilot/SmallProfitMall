<template>
  <div class="home">
    <el-header height="70px">
      <Header></Header>
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
                <el-form-item prop="username">
                  <svg-icon name="login" class="icon"></svg-icon>
                  <el-input placeholder="请输入手机号或用户名" v-model="loginForm.username" clearable
                            class="username"></el-input>
                </el-form-item>
                <el-form-item prop="password">
                  <svg-icon name="password" class="icon"></svg-icon>
                  <el-input
                      placeholder="请输入密码"
                      v-model="loginForm.password"
                      show-password
                      class="username"
                      autocomplete="off"
                      @keyup.enter.native="login"></el-input>
                </el-form-item>
                <el-form-item prop="verificationCode">
                  <svg-icon name="verification_code" class="icon"></svg-icon>
                  <el-input placeholder="请输入验证码(区分大小写)" v-model="loginForm.verificationCode"
                            clearable
                            class="username" style="width: 250px;"></el-input>
                  <span class="span" @click="createCode" v-model="checkCode">{{checkCode}}</span>
                </el-form-item>
                <el-form-item>
                  <el-button class="login-btn" @click="login('loginForm')">登录</el-button>
                </el-form-item>
              </el-form>
              <router-link to="/register" style="margin: 7% 52% 0 0">没有账号,去注册</router-link>
              <router-link to="/">忘记密码</router-link>
            </el-card>
          </div>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </div>
</template>

<script>
  // @ is an alias to /src
  import Header from "./Header.vue";
  import Footer from "./Footer.vue";

  export default {
    components: {Header, Footer},
    data() {
      return {
        Code: "",
        checkCode: "",
        loginForm: {
          username: '',
          password: '',
          verificationCode: '',
        },
        rules: {
          username: [
            {required: true, message: '请输入用户名或手机号', trigger: 'blur'},
            {min: 1, max: 15, message: '请输入正确的手机号或用户名', trigger: 'blur'},
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 6, max: 18, message: '请输入正确的密码格式', trigger: 'blur'},
          ],
          verificationCode: [
            {required: true, message: '请输入验证码', trigger: 'blur'},
            {min: 4, max: 4, message: '验证码格式错误', trigger: 'blur'}
          ]
        }
      };
    },
    methods: {
      login(formName) {
        this.$refs[formName].validate((valid) => {
              if (valid) {
                if (this.verificationCode != this.checkCode) {
                  this.$message({
                    message: "验证码错误",
                    type: "warning"
                  });
                } else {
                  {
                    this.axios
                    .post("/api/user/login", {
                      userName: this.username,
                      password: this.$md5(this.password)
                    })
                    .then(res => {
                      if (res.data.success) {
                        // this.list=res.data.queryResult.list;
                        this.$message({
                          message: "登录成功",
                          type: "success"
                        });
                        sessionStorage.setItem("username", this.username);
                        sessionStorage.setItem("uId", res.data.queryResult.list[0].uid);
                        sessionStorage.setItem("token", res.data.queryResult.list[0].token);
                        this.$router.push({
                          path: "/admin/newEssay" //跳转的路径
                        });
                      } else {
                        this.$message.error(res.data.msg);
                      }
                    })
                    .catch(error => {
                      this.$message.error("服务器错误");
                      console.log(error);
                    });
                  }
                }
              }
            }
        );
      },
      createCode() {
        let code = "";
        const codeLength = 4; //验证码的长度
        const random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G',
            'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
            'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数
        for (let i = 0; i < codeLength; i++) { //循环操作
          let index = Math.floor(Math.random() * 36); //取得随机数的索引（0~35）
          code += random[index]; //根据索引取得随机数加到code上
        }
        this.checkCode = code; //把code值赋给验证码
      }
    },
    mounted() {
      this.createCode();
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

  .span {
    color: #409EFF;
    display: inline-block;
    width: 50px
  }

  a {
    color: #42b983;
  }
</style>
