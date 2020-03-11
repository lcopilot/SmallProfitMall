<template>
  <el-container id="personalCenter">
    <el-header>
      <Header></Header>
    </el-header>

    <el-main>
      <el-row>
        <el-col :span="19" :push="2">
          <el-tabs type="border-card">
            <el-tab-pane lazy>
              <span slot="label">账户设置</span>
              <el-form label-position="right" label-width="80px" :status-icon="true" :hide-required-asterisk="true" :model="formLabelAlign">
                <el-form-item >
                  <span slot="label">账户设置</span>
                  <el-input v-model="formLabelAlign.name"></el-input>

                </el-form-item>
                <el-form-item label="活动区域">
                  <el-input v-model="formLabelAlign.region"></el-input>
                </el-form-item>
                <el-form-item label="活动形式">
                  <el-input v-model="formLabelAlign.type"></el-input>
                </el-form-item>
              </el-form>
            </el-tab-pane>
            <el-tab-pane lazy>
              <span slot="label">我的会员</span>
              个人信息
            </el-tab-pane>
            <el-tab-pane lazy>
              <span slot="label">我的收藏</span>
              我的收藏
            </el-tab-pane>
            <el-tab-pane lazy>
              <span slot="label">足迹</span>
              足迹
            </el-tab-pane>
            <el-tab-pane lazy>
              <span slot="label">我的订单</span>
              我的订单
            </el-tab-pane>
            <el-tab-pane lazy>
              <span slot="label">未支付订单</span>
              未支付订单
            </el-tab-pane>
          </el-tabs>

        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("../pages/Header"); //组件懒加载
  const Footer = () => import("../pages/Footer");
  export default {
    name: "personalCenter",
    components: {Header, Footer},
    data(){
      return{
        formLabelAlign: {
          name: '',
          region: '',
          type: ''
        }
      }
    },
    methods: {

    }

  }
</script>

<style>
  .el-tabs--top .el-tabs__item.is-top {
    text-align: center;
    color: #24292e;
  }

  #personalCenter .el-tabs__item {
    font-size: 15px;
    font-weight: 700;
  }
</style>