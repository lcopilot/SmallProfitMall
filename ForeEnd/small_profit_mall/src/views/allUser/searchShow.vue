<template>
  <div id="sCart">
    <el-container>
      <el-header>
        <Header/>
      </el-header>
      <el-main>
        <search/>
        <ProductsFeatured style="margin-top: 60px"/>
      </el-main>
      <el-footer>
        <Footer/>
      </el-footer>
    </el-container>
  </div>

</template>

<script>
  const search = () => import("../../components/pages/Search");
  const ProductsFeatured = () => import("../../components/pages/ProductsFeatured");


  export default {
    inject: ["reload"],
    name: "shoppingCart",
    components: {search,ProductsFeatured},
  }
</script>

<style>

</style>