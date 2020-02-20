<template>
  <div class="home">
    <el-header height="150px">
      <Header></Header>
    </el-header>
    <el-main>
      <el-row type="flex" justify="" center>
        <el-col :span="10" :push="3">
          <div><img src="../assets/images/login-png.png"></div>
        </el-col>
        <el-col :span="14">
          <div class="login">
            <table>
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
                <el-input placeholder="请输入验证码" v-model="username" clearable
                          class="username"></el-input>
              </tr>
              <tr>
                <svg-icon name="login_btn" class="icon"></svg-icon>
                <el-button class="login-btn" @click="login">登录</el-button>
              </tr>
            </table>
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
    name: 'Home',

    components: {Header, Footer},
  }
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
    width: 350px;
  }

  .login-btn {
    margin-top: 30px;
    color: #fff;
    border: none;
    background-color: #42b983;
    width: 350px;
  }

  a {
    color: #42b983;
  }
</style>
