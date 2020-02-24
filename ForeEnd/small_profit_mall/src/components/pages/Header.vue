<template>
  <div class="header-wraper">
    <header class="blog-header">
      <h1 class="header-title">
        <router-link to="/">SmallProfit</router-link>
      </h1>
      <nav class="header-nav">
        <ul style="margin-right: -15rem">
          <div v-if="!LoginStatus">
            <li v-if="(this.$route.path!='/login' && this.username==null) || !LoginStatus">
              <router-link to="/login">您好,请登录</router-link>
            </li>
          </div>
          <div v-if="LoginStatus">
            <li v-if="this.username!=null">
              <el-dropdown trigger="click">
              <span class="el-dropdown-link">
                <img :src="avatar" style="width: 35px; border-radius: 10%;margin-top: 6%">
                        您好,{{username}}
                <i class="el-icon-arrow-down el-icon--right"></i>
              </span>
                <el-dropdown-menu slot="dropdown">
                  <el-dropdown-item>
                    <router-link to="/">个人中心</router-link>
                  </el-dropdown-item>
                  <el-dropdown-item divided>
                    <router-link to="/">个人中心</router-link>
                  </el-dropdown-item>
                  <el-dropdown-item>
                    <router-link to="/">个人中心</router-link>
                  </el-dropdown-item>
                  <el-dropdown-item>
                    <router-link to="/">个人中心</router-link>
                  </el-dropdown-item>
                  <el-dropdown-item>
                    <router-link @click.native="exit" to="/">
                      <svg-icon name="exit" class="icon"></svg-icon> 退出
                    </router-link>
                  </el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </li>
          </div>
        </ul>
      </nav>
    </header>
  </div>
</template>
<script>
  import {mapActions} from "vuex";
  export default {
    name: "Header",
    data() {
      return {
        username: null,
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938'
      };
    },
    methods: {
      ...mapActions([
        "modifyLoginStatus"
      ]),
      exit() {
        sessionStorage.clear();
        this.modifyLoginStatus();
      }
    },
    computed:{
      //vuex
      LoginStatus(){
        return this.$store.state.LoginStatus;
      },
    },
    created() {
      this.username = sessionStorage.getItem("username");
    }
  };
</script>
<style scoped>
  .header-wraper {
    position: fixed;
    top: 0;
    display: flex;
    width: 100%;
    height: 50px;
    line-height: 50px;
    border-bottom: 1px solid #eee;
    z-index: 999;
    background-color: #fff;
  }

  .blog-header {
    display: flex;
    width: 960px;
    margin: 0 auto;
    justify-content: space-between;
    padding: 0 15px;
  }

  .header-title {
    font-size: 20px;
    font-weight: 700;
  }

  .header-nav {
    display: -webkit-box;
    margin-right: 13rem;
  }

  .blog-header .header-nav ul {
    list-style: none;
  }

  .blog-header .header-nav li {
    display: inline-block;
  }

  .blog-header .header-nav li a {
    padding: 0 15px;
  }
  .icon {
    width: 16px;
    height: 16px;
  }

</style>
