<template>
  <el-col :span="3" :push="3">
    <el-card>
      <div style="text-align: left">
        <div>
          <div class="personal_page">个人中心</div>
          <div class="personal_page_child">
            <router-link to="/personalCenter">我的会员</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/personalInformation">个人信息</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/addressManagement">收货地址</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/accountSettings">账户设置</router-link>
          </div>
          <el-divider/>
        </div>
        <div>
          <div class="personal_page">订单中心</div>
          <div class="personal_page_child">
            <router-link to="/allOrders">全部订单</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/">待付款</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/">待收货</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/">待评价</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/"> 退换/售后</router-link>
          </div>
          <el-divider/>
        </div>
        <div>
          <div class="personal_page">我的收藏</div>
          <div class="personal_page_child">
            <router-link to="/favorite"> 收藏</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/footprint"> 足迹</router-link>
          </div>
          <el-divider/>
        </div>
        <div>
          <div class="personal_page">消息中心</div>
          <div class="personal_page_child">
            <router-link to="/messageCenter">系统消息</router-link>
          </div>
          <div class="personal_page_child">
            <router-link to="/messageCenter">订单消息</router-link>
          </div>
        </div>
      </div>
    </el-card>
  </el-col>
</template>

<script>
  export default {
    name: "personalHubPage"
  }
</script>

<style scoped>
  .personal_page {
    font-weight: 600;
    font-size: 16px;
    margin-bottom: 13px
  }
  .personal_page_child {
    font-size: 14px;
    margin-bottom: 8px
  }
  a:hover {
    color: #e1251b;
  }
</style>