<template>
  <el-container>
    <el-header height="80px">
      <Header/>
    </el-header>
    <el-main>
      <search/>
      <el-main>
        <el-row type="flex" justify="center" :gutter="20" style="margin-top: 40px">
          <el-col :span="6">
            <div style="background-color: red">
              asd
            </div>
            <div>
              <el-row type="flex" justify="center" :gutter="10">
                <el-col :span="6">
                  <div style="background-color: blue">
                    ss
                  </div>
                </el-col>
                <el-col :span="6">
                  <div style="background-color: red">
                    asd
                  </div>
                </el-col>
                <el-col :span="6">
                  <div style="background-color: blue">
                    ss
                  </div>
                </el-col>
                <el-col :span="6">
                  <div style="background-color: red">
                    asd
                  </div>
                </el-col>
              </el-row>
            </div>
          </el-col>
          <el-col :span="10">
            <div style="background-color: blue">
              ss
            </div>
          </el-col>
          <el-col :span="3">
            <div style="background-color: red">
              ss
            </div>
          </el-col>
        </el-row>
      </el-main>

    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("./Header"); //组件懒加载
  const Footer = () => import("./Footer");
  const search = () => import("./Search");
  export default {
    name: "Product",
    data() {
      return {}
    },
    components: {Header, Footer, search}

  }
</script>

<style scoped>

</style>