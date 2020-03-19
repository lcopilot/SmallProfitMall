<template>
  <el-container>
    <el-header>
      <Header/>
    </el-header>
    <el-main>

    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  export default {
    name: "order",
    components: {Header, Footer},
  }
</script>

<style scoped>

</style>