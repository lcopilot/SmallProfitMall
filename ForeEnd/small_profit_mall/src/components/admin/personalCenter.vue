<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>

    <el-main>
      <el-row :gutter="20">
        <el-col :span="3" :push="3">
          <el-card>
            <div style="text-align: left">
              <div>
                <div class="personal_page">账户设置</div>
                <div class="personal_page_child">
                  <router-link to="/">个人信息</router-link>
                </div>
                <div class="personal_page_child">
                  <router-link to="/">我的会员</router-link>
                </div>
                <el-divider/>
              </div>
              <div>
                <div class="personal_page">订单中心</div>
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
                  <router-link to="/"> 收藏</router-link>
                </div>
                <div class="personal_page_child">
                  <router-link to="/"> 足迹</router-link>
                </div>
                <el-divider/>
              </div>
              <div>
                <div class="personal_page">消息中心</div>
                <div class="personal_page_child">
                  <router-link to="/">系统消息</router-link>
                </div>
                <div class="personal_page_child">
                  <router-link to="/">订单消息</router-link>
                </div>
              </div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="15" :push="3">
          <el-card style="margin-bottom: 20px;">
            <div class="text item">
              会员信息
            </div>
          </el-card>
          <el-row :gutter="20">
            <el-col :span="16">
              <el-card>
                <div slot="header">
                  <span>我的订单</span>
                </div>
                <div>

                </div>
              </el-card>
            </el-col>
            <el-col :span="8">
              <el-card>
                <div slot="header">
                  <span>我的收藏</span>
                </div>
                <div>

                </div>
              </el-card>

            </el-col>
          </el-row>
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
    data() {
      return {
        formLabelAlign: {
          name: '',
          region: '',
          type: ''
        }
      }
    },
    methods: {}

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