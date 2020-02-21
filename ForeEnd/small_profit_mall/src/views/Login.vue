<template>
  <div class="home">
    <el-header height="110px">
      <Header></Header>
    </el-header>
    <el-main>
      <el-row type="flex" justify="" center>
        <el-col :span="12" :push="1">
          <div><img src="../assets/images/login-png.png"></div>
        </el-col>
        <el-col :span="12">
          <div class="login">
            <el-card class="box-card" shadow="hover">
              <table>
                <tr>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </tr>
                <tr>
                  <svg-icon name="login" class="icon"></svg-icon>
                  <el-input placeholder="请输入手机号或用户名" v-model="username" clearable
                            class="username"></el-input>
                </tr>
                <tr>
                  <svg-icon name="password" class="icon"></svg-icon>
                  <el-input
                      placeholder="请输入密码"
                      v-model="password"
                      show-password
                      class="username"
                      autocomplete="off"
                      @keyup.enter.native="login"></el-input>
                </tr>
                <tr>
                  <svg-icon name="verification_code" class="icon"></svg-icon>
                  <el-input placeholder="请输入验证码" v-model="verificationCode" clearable
                            class="username"></el-input>
                </tr>
                <tr>
                  <el-button class="login-btn" @click="login">登录</el-button>
                </tr>
              </table>
              <router-link to="/" style="margin: 7% 52% 0 0">没有账号,去注册</router-link>
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
    components: { Header, Footer },
    data() {
      return {
        username: "",
        password: "",
        verificationCode:"",
      };
    },
    methods: {
      login() {
        if (this.username == "") {
          this.$message({
            message: "账号不能为空",
            type: "warning"
          });
        } else if (this.password == "") {
          this.$message({
            message: "密码不能为空",
            type: "warning"
          });
        } else if (this.verificationCode == "") {
          this.$message({
            message: "验证码不能为空",
            type: "warning"
          });
        } else {
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
              sessionStorage.setItem("token",res.data.queryResult.list[0].token);
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
      },
    }
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
    margin:0 0 20px 30px;
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
