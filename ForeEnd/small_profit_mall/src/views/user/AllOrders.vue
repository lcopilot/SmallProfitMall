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
              <el-tab-pane name="0">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="orderQuantity.orderAllQuantity" class="item">
                    全部订单
                  </el-badge>
                </div>
                <orderContent :genre="orderType" v-if="orderType==0"/>
              </el-tab-pane>
              <el-tab-pane name="1">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="orderQuantity.orderUnpaidQuantity" class="item">
                    待付款
                  </el-badge>
                </div>
                <orderContent :genre="orderType" v-if="orderType==1"/>
              </el-tab-pane>
              <el-tab-pane name="2">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="orderQuantity.orderPaidQuantity" class="item">
                    待收货
                  </el-badge>
                </div>
                <orderContent :genre="orderType" v-if="orderType==2"/>
              </el-tab-pane>
              <el-tab-pane name="3">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="orderQuantity.evaluateQuantity" class="item">
                    待评价
                  </el-badge>
                </div>
                <orderContent :genre="orderType" v-if="orderType==3"/>
              </el-tab-pane>
              <el-tab-pane name="4">
                <div slot="label" style="margin-top: 16%">
                  <el-badge :value="orderQuantity.salesReturnQuantity" class="item">
                    退换售后
                  </el-badge>
                </div>
                <orderContent :genre="orderType" v-if="orderType==4"/>
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
  import * as orderApi from "../../api/page/orders";

  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  const personalPage = () => import("../../components/admin/PersonalHubPage");
  const orderContent = () => import("../../components/admin/OrderContent");
  export default {
    name: "allOrders",
    components: {Header, Footer, personalPage,orderContent},
    data() {
      return {
        //订单类型
        orderType: "0",
        orderQuantity:{
          orderAllQuantity:0,
          orderUnpaidQuantity:0,
          orderPaidQuantity:0,
          evaluateQuantity:0,
          salesReturnQuantity:0,
        },
      }
    },
    methods:{
      //获取不同订单的数量
      getOrderQuantity(){
        orderApi.getOrderQuantity(sessionStorage.getItem("uId")).then(res=>{
          if (res.success){
            this.orderQuantity=res.objectReturn.object;
          }
        })
      }
    },
    mounted() {
      this.getOrderQuantity();
    }
  }
</script>

<style scoped>

</style>