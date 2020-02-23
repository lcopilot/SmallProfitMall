<template>
  <div class="home">
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <Carousel/>
      <el-row :gutter="6">
        <el-col :span="16">
          <div><img src="../../assets/images/login-png.png"></div>
        </el-col>
        <el-col :span="18">

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
  import Carousel from "./Carousel";

  export default {
    name: 'Home',

    components: {Header,Footer,Carousel},
  }
</script>

<style scoped>

</style>
