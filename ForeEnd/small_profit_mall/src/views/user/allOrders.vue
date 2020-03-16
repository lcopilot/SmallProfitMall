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
            <el-tabs v-model="orderType">
              <el-tab-pane name="1">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="12" class="item">
                    全部订单
                  </el-badge>
                </div>
                <orderContent :genre="orderType"/>
              </el-tab-pane>
              <el-tab-pane name="2">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="12" class="item">
                    待付款
                  </el-badge>
                </div>
                <orderContent :genre="orderType"/>
              </el-tab-pane>
              <el-tab-pane name="3">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="12" class="item">
                    待收货
                  </el-badge>
                </div>
                <orderContent :genre="orderType"/>
              </el-tab-pane>
              <el-tab-pane name="4">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="12" class="item">
                    待评价
                  </el-badge>
                </div>
                <orderContent :genre="orderType"/>
              </el-tab-pane>
              <el-tab-pane name="5">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="12" class="item">
                    退换售后
                  </el-badge>
                </div>
                <orderContent :genre="orderType"/>
              </el-tab-pane>
            </el-tabs>
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
    name: "allOrders",
    components: {Header, Footer, personalPage,orderContent},
    data() {
      return {
        //订单类型
        orderType: "1",
      }
    }
  }
</script>

<style scoped>

</style>