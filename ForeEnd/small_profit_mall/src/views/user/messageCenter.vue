<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="16" :push="3">
          <el-card>
            <el-row>
              <el-col :span="7">
                <div style="border-right:1px solid #999999;height: 530px;">

                </div>
              </el-col>
              <el-col :span="17">
                <div style="background-color: #f5f5f5;height: 530px">

                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  const personalPage = () => import("../../components/admin/personalHubPage");
  const orderContent = () => import("../../components/admin/orderContent");
  export default {
    name: "messageCenter",
    components: {Header, Footer, personalPage,orderContent},
  }
</script>

<style scoped>

</style>