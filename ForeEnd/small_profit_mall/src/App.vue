<template>
  <div id="app">
    <el-backtop target="#app" :right="70" :bottom="200">
      <div class="backTop">
        <el-tooltip class="item" effect="dark" content="回到顶部" placement="left">
          <div style="margin-top: 5px">
            <svg-icon name="backTop"/>
          </div>
        </el-tooltip>
        <el-tooltip class="item" effect="dark" content="首页" placement="left">
          <div>
            <router-link to="/">
              <svg-icon name="home"/>
            </router-link>
          </div>
        </el-tooltip>
        <el-tooltip class="item" effect="dark" content="个人中心" placement="left">
          <div>
            <router-link to="/personalCenter">
              <svg-icon name="personalCenter"/>
            </router-link>
          </div>
        </el-tooltip>
      </div>
    </el-backtop>
    <!-- 同路由下刷新页面-->
    <router-view v-if="isRouterAlive"/>
  </div>
</template>
<script>
  export default {
    name: 'App',
    provide() {
      return {
        reload: this.reload
      }
    },
    data() {
      return {
        isRouterAlive: true,
      }
    },
    methods: {
      reload() {
        this.isRouterAlive = false,
            this.$nextTick(() => {
              this.isRouterAlive = true
            })
      }
    }
  }
</script>
<style>
  #app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    width: 100%;
    height: 100%;
    overflow: auto;

  }

  .backTop {
    box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
    border-radius: 34px;
    height: 200px;
    width: 100%;
    background-color: #ffffff;
    text-align: center;
    line-height: 40px;
    color: #1989fa;
  }

  #nav a {
    font-weight: bold;
    color: #2c3e50;
  }

  #nav a.router-link-exact-active {
    color: #42b983;
  }
</style>
