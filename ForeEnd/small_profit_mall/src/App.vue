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
        <el-tooltip class="item" effect="dark" content="足迹" placement="left">
          <div>
            <router-link to="/footprint">
              <svg-icon name="footprint2"/>
            </router-link>
          </div>
        </el-tooltip>
      </div>
    </el-backtop>
    <!-- 同路由下刷新页面-->
    <router-view v-if="isRouterAlive" :key="$route.fullPath"/>
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
  #app::-webkit-scrollbar { /*滚动条整体样式*/
    width: 8px; /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
  }

  #app::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    background: #afb0b0;
  }

  #app::-webkit-scrollbar-track { /*滚动条里面轨道*/
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    border-radius: 10px;
    background: transparent;
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
