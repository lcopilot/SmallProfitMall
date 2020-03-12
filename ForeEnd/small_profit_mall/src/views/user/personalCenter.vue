<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="15" :push="3">
          <div style="margin-top: 10px"></div>
          <el-row>
            <el-col :span="6" :push="1">
              <div class="personal_center_div1">
                <div class="personal_center_div2">
                  <div>
                    <router-link to="/">
                      <el-avatar :size="75" class="personal_center_avatar"
                                 src="http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938"/>
                    </router-link>
                  </div>
                  <div style="color: white;">小白</div>
                  <div style="padding: 12px 0 12px 60px">
                    <div class="personal_center_div3">
                      成长值1560
                    </div>
                  </div>
                </div>
                <div class="personal_center_div4">
                  <div style="padding:15px;">
                    <el-row>
                      <el-col :span="12" :push="2">
                        开通PLUS会员尊享
                        全年360元运费券礼包
                      </el-col>
                      <el-col :span="8" :push="4">
                        <router-link to="/">
                          <button class="activate_now_btn">立即开通</button>
                        </router-link>
                      </el-col>
                    </el-row>
                  </div>
                </div>
              </div>
            </el-col>
            <el-col :span="18">
              <el-card shadow="never">
                <div slot="header" style="text-align: left;height: 20px">
                  <div style="margin-left: 7%;">我的钱包</div>
                </div>
                <div style="padding: 18px">
                  <el-row>
                    <el-col :span="6">
                      <div class="personal_center_wallet1">3</div>
                      <div class="personal_center_wallet2">优惠券</div>
                      <div class="personal_center_wallet3">
                        <router-link to="/" class="personal_center_wallet3_a">
                          获取优惠券
                        </router-link>
                      </div>
                    </el-col>
                    <el-col :span="6">
                      <div class="personal_center_wallet1">8469</div>
                      <div class="personal_center_wallet2">积分</div>
                      <div class="personal_center_wallet3">
                        <router-link to="/" class="personal_center_wallet3_a">
                          获取积分
                        </router-link>
                      </div>
                    </el-col>
                    <el-col :span="6">
                      <div class="personal_center_wallet1">56.23</div>
                      <div class="personal_center_wallet2">零钱</div>
                      <div class="personal_center_wallet3">
                        <router-link to="/" class="personal_center_wallet3_a">
                          充值
                        </router-link>
                        <router-link to="/" class="personal_center_wallet3_a">
                          | 提现
                        </router-link>
                      </div>
                    </el-col>
                    <el-col :span="6">
                      <div class="personal_center_wallet1">4</div>
                      <div class="personal_center_wallet2">微利卡</div>
                      <div class="personal_center_wallet3">
                        <router-link to="/" class="personal_center_wallet3_a">
                          获取微利卡
                        </router-link>
                      </div>
                    </el-col>
                  </el-row>
                </div>
              </el-card>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="16">
              <el-card>
                <div slot="header">
                  <div style="text-align: left">我的订单</div>
                </div>
                <div>
                  <div style="padding-left: 50px">
                    <el-row :gutter="20">
                      <el-col :span="4">待付款</el-col>
                      <el-col :span="4">待收货</el-col>
                      <el-col :span="4">待评价</el-col>
                      <el-col :span="4">退换/售后</el-col>
                      <el-col :span="4">全部订单</el-col>
                    </el-row>
                  </div>
                </div>
              </el-card>
            </el-col>
            <el-col :span="8">
              <el-card>
                <div slot="header">
                  <div style="text-align: left">我的收藏</div>
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
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  const personalPage = () => import("../../components/admin/personalHubPage");
  export default {
    name: "personalCenter",
    components: {Header, Footer, personalPage},
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


  .activate_now_btn {
    float: right;
    padding: 0 10px;
    margin-top: 7px;
    height: 26px;
    line-height: 26px;
    border-radius: 14px;
    background-color: #f4ca3a;
    color: #232331;
    font-weight: 700;
    text-align: center;
    border: none;
  }

  .activate_now_btn:hover {
    background: #ffffff;
    cursor: pointer;

  }

  .personal_center_div1 {
    box-shadow: 5px 5px 5px -1px #C0C4CC;
    margin: -10px 0 20px -35px
  }

  .personal_center_div2 {
    background-color: #e2231a;
    padding: 20px 0 12px 0
  }

  .personal_center_div3 {
    color: white;
    border: 1px solid #ffffff;
    border-radius: 34px;
    max-width: 150px;
  }

  .personal_center_div4 {
    background-color: #232331;
    color: #f4ca3a;
    font-size: 12px
  }

  .personal_center_avatar {
    border: 4px solid #ffffff;
  }

  .personal_center_wallet1 {
    font-weight: 600;
    font-size: 22px
  }

  .personal_center_wallet2 {
    margin-top: 2px;
    font-size: 12px
  }

  .personal_center_wallet3 {
    margin-top: 30px;
    font-size: 13px
  }

  .personal_center_wallet3_a {
    color: #2b85e4
  }

  .personal_center_wallet3_a:hover {
    color: #e1251b;
  }
</style>