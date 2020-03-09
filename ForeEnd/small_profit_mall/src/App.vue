<template>
  <div id="app">
    <el-backtop target="#app" :right="60" :bottom="100">
      <div class="backTop">
        UP
      </div>
    </el-backtop>
    <el-backtop target="#app" :right="60" :bottom="50"></el-backtop>
    <!-- 解决vue相同路由跳转强制刷新该路由组件 二次搜索-->
    <router-view :key="$route.fullPath"/>
  </div>
</template>

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
.backTop{
  height: 100%;
  width: 100%;
  background-color: #f2f5f6;
  box-shadow: 0 0 6px rgba(0,0,0, .12);
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
