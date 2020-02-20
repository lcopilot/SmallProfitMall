<template>
  <div class="home">
    <el-header>
      <Header></Header>
    </el-header>
    <el-row :gutter="6">
      <el-col :span="16">
        <div><img src="../assets/images/login-png.png"></div>
      </el-col>
      <el-col :span="18">
        <svg-icon name="商城"></svg-icon>
        <svg class="icon" aria-hidden="true">
          <use xlink:href="#icondenglu"></use>
        </svg>
        <svg class="icon" aria-hidden="true" style="font-size:45px">
          <use xlink:href="#iconzhinengchanpin"></use>
        </svg>
      </el-col>
    </el-row>
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

    components: {Header,Footer},
  }
</script>

<style scoped>

</style>
