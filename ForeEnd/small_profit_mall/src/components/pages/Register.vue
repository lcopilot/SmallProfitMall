<template>
  <div class="register">
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
              <el-form :model="registerForm" :rules="rules" ref="registerForm">
                <el-form-item>
                  <h1 class="header-title">
                    <router-link to="/">SmallProfit</router-link>
                  </h1>
                </el-form-item>
                <el-form-item prop="phone">
                  <svg-icon name="login" class="icon"></svg-icon>
                  <el-input placeholder="请输入手机号" v-model="registerForm.phone" clearable
                            class="username"></el-input>
                </el-form-item>
                <el-form-item prop="password">
                  <svg-icon name="password" class="icon"></svg-icon>
                  <el-input
                      placeholder="请输入密码"
                      v-model="registerForm.password"
                      show-password
                      class="username"
                      autocomplete="off"
                      @keyup.enter.native="login"></el-input>
                </el-form-item>
                <el-form-item prop="checkPass">
                  <svg-icon name="password" class="icon"></svg-icon>
                  <el-input
                      placeholder="请再次输入密码"
                      v-model="registerForm.checkPass"
                      show-password
                      class="username"
                      autocomplete="off"
                      @keyup.enter.native="login"></el-input>
                </el-form-item>
                <el-form-item prop="verificationCode">
                  <svg-icon name="verification_code" class="icon"></svg-icon>
                  <el-input placeholder="请输入手机验证码" v-model="registerForm.verificationCode" clearable
                            class="username" style="width: 210px;margin-right: 5px"></el-input>
                  <span v-show="show" @click="getCode" class="span">获取验证码</span>
                  <span v-show="!show" class="span">重新发送({{count}})</span>
                </el-form-item>
                <el-form-item>
                  <el-button class="login-btn" @click="register('registerForm')">注册</el-button>
                </el-form-item>
              </el-form>
              <router-link to="/login" style="margin: 7% 52% 0 0">已有账号,去登录</router-link>
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
  import Header from "./Header.vue";
  import Footer from "./Footer.vue";

  export default {
    components: {Header, Footer},
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
              callback(new Error('电话号码格式不正确'))
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
        verificationCode: "",
        show: true,
        count: '',
        timer: null,
        registerForm: {
          phone: '',
          password: '',
          checkPass: '',
          verificationCode: ''
        },
        rules: {
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
          verificationCode: [
            {required: true, message: '请输入手机验证码', trigger: 'blur'},
            {min: 4, max: 4, message: '手机验证码格式错误', trigger: 'blur'}
          ]
        }
      };
    },
    methods: {
      register(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.axios
            .post("/api/user/login", {
              userName: this.username,
              password: this.$md5(this.password)
            })
            .then(res => {
              if (res.data.success) {
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
        });
      },
      getCode() {
        const TIME_COUNT = 60;
        if (!this.timer) {
          this.count = TIME_COUNT;
          this.show = false;
          this.timer = setInterval(() => {
            if (this.count > 0 && this.count <= TIME_COUNT) {
              this.count--;
            } else {
              this.show = true;
              clearInterval(this.timer);
              this.timer = null;
            }
          }, 1000)
        }
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
  .login-btn:hover {
    background: #ECF5FF;
    color: #409EFF;
  }
  .span {
    color: #409EFF;
    display: inline-block;
    width: 90px
  }

  a {
    color: #42b983;
  }
  a:hover {
    color: #409EFF;
  }
</style>
