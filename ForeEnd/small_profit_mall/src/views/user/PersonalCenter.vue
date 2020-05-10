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
                    <router-link to="/personalInformation">
                      <el-avatar :size="75" class="personal_center_avatar"
                                 :src="avatar"/>
                    </router-link>
                  </div>
                  <div style="color: white;">{{user.name}}</div>
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
                      <div class="personal_center_wallet1">{{member.integral}}</div>
                      <div class="personal_center_wallet2">积分</div>
                      <div class="personal_center_wallet3">
                        <router-link to="/" class="personal_center_wallet3_a">
                          获取积分
                        </router-link>
                      </div>
                    </el-col>
                    <el-col :span="6">
                      <div class="personal_center_wallet1">{{member.balance.toFixed(2)}}</div>
                      <div class="personal_center_wallet2">零钱</div>
                      <div class="personal_center_wallet3">
                        <router-link @click.native="rechargeDialogVisible=true" to="" class="personal_center_wallet3_a" >
                          充值
                        </router-link>
                        <router-link to="/" class="personal_center_wallet3_a">
                          | 提现
                        </router-link>
                      </div>
                      <el-dialog
                          @close="shutDown()"
                          title="充 值"
                          :visible.sync="rechargeDialogVisible"
                          width="30%"
                          center>
                        <div>
                          <el-input  placeholder="请输入你要充值的金额" v-model="amount"  maxlength="8">
                              <div style="margin-top: 50%" slot="suffix">元</div>
                              <svg-icon slot="prefix" name="yuan" style="margin-top: 30%"></svg-icon>
                          </el-input>
                          <el-radio-group v-model="amount" style="margin-top: 5%">
                            <el-radio-button label="100"></el-radio-button>
                            <el-radio-button label="300"></el-radio-button>
                            <el-radio-button label="500"></el-radio-button>
                            <el-radio-button label="700"></el-radio-button>
                            <el-radio-button label="1000"></el-radio-button>
                            <el-radio-button label="2000"></el-radio-button>
                          </el-radio-group>
                          <div class="recharge_btn">
                            <el-button type="primary"  @click="recharge()">确 定</el-button>
                          </div>
                        </div>
                      </el-dialog>
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
                  <div style="padding: 20px">
                    <el-row :gutter="15">
                      <el-col :span="5">
                        <div class="personal_center_order_div" @mouseenter="enter_payment()"
                             @mouseleave="leave_payment()">
                          <router-link @click.native="goTo('1')" to="#">
                            <div>
                              <el-badge :value="orderQuantity.orderUnpaidQuantity" :max="99">
                                <svg-icon name="payment" v-show="icon.payment" v-cloak
                                          class="personal_center_order_icon"/>
                                <svg-icon name="payment_no" v-show="!icon.payment" v-cloak
                                          class="personal_center_order_icon"/>
                              </el-badge>
                            </div>
                            <div style="font-size: 12px">待付款</div>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="5">
                        <div class="personal_center_order_div" @mouseenter="enter_receipt()"
                             @mouseleave="leave_receipt()">
                          <router-link @click.native="goTo('2')" to="#">
                            <div>
                              <el-badge :value="orderQuantity.orderPaidQuantity" :max="99">
                                <svg-icon name="receipt" v-show="icon.receipt" v-cloak
                                          class="personal_center_order_icon"/>
                                <svg-icon name="receipt_no" v-show="!icon.receipt" v-cloak
                                          class="personal_center_order_icon"/>
                              </el-badge>
                            </div>
                            <div style="font-size: 12px">待收货</div>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="5">
                        <div class="personal_center_order_div" @mouseenter="enter_evaluation()"
                             @mouseleave="leave_evaluation()">
                          <router-link @click.native="goTo('3')" to="#">
                            <div>
                              <el-badge :value="orderQuantity.evaluateQuantity" :max="99">
                                <svg-icon name="evaluation" v-show="icon.evaluation" v-cloak
                                          class="personal_center_order_icon"/>
                                <svg-icon name="evaluation_no" v-show="!icon.evaluation" v-cloak
                                          class="personal_center_order_icon"/>
                              </el-badge>
                            </div>
                            <div style="font-size: 12px">待评价</div>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="5">
                        <div class="personal_center_order_div" @mouseenter="enter_afterSale()"
                             @mouseleave="leave_afterSale()">
                          <router-link @click.native="goTo('4')" to="#">
                            <div>
                              <el-badge :value="orderQuantity.salesReturnQuantity" :max="99">
                                <svg-icon name="afterSale_pc" v-show="icon.afterSale" v-cloak
                                          class="personal_center_order_icon"/>
                                <svg-icon name="afterSale_pc_no" v-show="!icon.afterSale" v-cloak
                                          class="personal_center_order_icon"/>
                              </el-badge>
                            </div>
                            <div style="font-size: 12px">退换/售后</div>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="4">
                        <div class="personal_center_order_div_order" @mouseenter="enter_order()"
                             @mouseleave="leave_order()">
                          <router-link @click.native="goTo('0')" to="#">
                            <div>
                              <svg-icon name="order" v-show="icon.order" v-cloak
                                        class="personal_center_order_icon"/>
                              <svg-icon name="order_no" v-show="!icon.order" v-cloak
                                        class="personal_center_order_icon"/>
                            </div>
                            <div style="font-size: 12px">全部订单</div>
                          </router-link>
                        </div>
                      </el-col>

                    </el-row>
                  </div>
                </div>
              </el-card>
            </el-col>
            <el-col :span="8">
              <el-card>
                <div slot="header">
                  <div style="text-align: left">
                    <svg-icon name="footprint" style="width: 20px;height: 20px"/>&emsp;&emsp;
                    <span>足迹</span>
                    <router-link to="/" class="footprint_a">更多 ></router-link>
                  </div>
                </div>
                <div>
                  <el-carousel :interval="5000" indicator-position="none" arrow="hover"
                               height="135px">
                    <el-carousel-item v-for="(footprints,index) in footprintList" :key="index">
                      <div v-for="product in footprints" class="footprint_carousel_div">
                        <router-link to="{path: '/product', query: {productId:product.productId}}">
                          <div>
                            <el-image :src="product.imageSite" fit="scale-down"/>
                          </div>
                        </router-link>
                      </div>
                    </el-carousel-item>
                  </el-carousel>
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
  import * as orderApi from "../../api/page/orders";

  const personalPage = () => import("../../components/admin/PersonalHubPage");
  import *as userApi from '../../api/page/user';
  import encryption from "../../util/encryption";
  export default {
    name: "personalCenter",
    components: { personalPage},
    data() {
      return {
        //充值对话框
        rechargeDialogVisible:false,
        //充值的金额
        amount:'',
        //头像
        avatar:'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
        //图标切换
        icon: {
          //待付款图标的切换
          payment: true,
          //待收货图标的切换
          receipt: true,
          //待评价图标切换
          evaluation: true,
          //退换售后图标切换
          afterSale: true,
          //全部订单图标切换
          order: true,
        },
        //用户信息
        user:{
          name:'',
          avatar:'',
          uId:'',
        },
        //订单数量
        orderQuantity:{
          orderAllQuantity:0,
          orderUnpaidQuantity:0,
          orderPaidQuantity:0,
          evaluateQuantity:0,
          salesReturnQuantity:0,
        },
        footprintList: [
          [
            {"imageSite": "http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"},
          ],
          [
            {"imageSite": "http://productdata.fhxasdsada.xyz/43a1962b41270d97.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/43a1962b41270d97.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/43a1962b41270d97.jpg"},
          ],
          [
            {"imageSite": "http://productdata.fhxasdsada.xyz/ee567a1dea515d38.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/ee567a1dea515d38.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/ee567a1dea515d38.jpg"},
          ],
          [
            {"imageSite": "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg"},
          ],
          [
            {"imageSite": "http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg"},
            {"imageSite": "http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg"},
          ],
        ],
        //会员信息
        member:{
          balance:2019415.254,
          integral:2019415,
        }
      }
    },
    methods: {
      //图标切换的方法
      enter_payment() {
        this.icon.payment = false;
      },
      leave_payment() {
        this.icon.payment = true;
      },
      enter_receipt() {
        this.icon.receipt = false;
      },
      leave_receipt() {
        this.icon.receipt = true;
      },
      enter_evaluation() {
        this.icon.evaluation = false;
      },
      leave_evaluation() {
        this.icon.evaluation = true;
      },
      enter_afterSale() {
        this.icon.afterSale = false;
      },
      leave_afterSale() {
        this.icon.afterSale = true;
      },
      enter_order() {
        this.icon.order = false;
      },
      leave_order() {
        this.icon.order = true;
      },
      //充值
      recharge(){
        const code = /^(0|[1-9]\d*)(\.\d{1,2})?/;
        if (this.amount.length >8 || !code.test(this.amount)){
          this.$message.warning("请输入正确的格式,小数点支持两位")
        }else {
          let params={
            userId:sessionStorage.getItem("uId"),
            balance:encryption.encrypt(this.amount)
          };
          userApi.recharge(params).then(res=>{
            if (res.success){
              this.$message.success("充值成功!")
              this.rechargeDialogVisible=false
            }else {
              if (res.code==11111){
                this.$message({
                  message:"充值金额已达上限",
                  type:"warning",
                })
              }
            }
          }).catch(error=>{
            console.log(error);
            this.rechargeDialogVisible=false
          });
        }
      },
      //充值框关闭的回调
      shutDown(){
        this.amount='';
      },
      //去订单页面
      goTo(orderType){
        this.$router.push({
          name: 'AllOrders',
          params: {
            orderType: orderType
          }
        })
      },
      //获取不同订单的数量
      getOrderQuantity(){
        orderApi.getOrderQuantity(sessionStorage.getItem("uId")).then(res=>{
          if (res.success){
            this.orderQuantity=res.objectReturn.object;
          }
        })
      },
      //获取会员信息
      getMember(){
        userApi.getMember().then(res=>{
          if (res.success){
            this.member=res.queryResult.list[0]
          }
        })
      },
    },
    created() {
      this.avatar=sessionStorage.getItem("avatar");
      this.user.name=sessionStorage.getItem("username");
      this.user.uId=sessionStorage.getItem("uId");
      this.getOrderQuantity();
    }
  }
</script>

<style scoped>
  [v-cloak] {
    display: none
  }
  .recharge_btn{
    text-align: right;margin: 4% 3% 0 0;
  }
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

  .personal_center_order_div {
    padding: 10px;
  }

  .personal_center_order_div:hover {
    transform: scale(1.02);
    box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1)
  }

  .personal_center_order_div_order {
    padding: 10px;
  }

  .personal_center_order_div_order:hover {
    transform: scale(1.05);
  }

  .personal_center_order_icon {
    width: 50px;
    height: 50px
  }

  .footprint_a {
    float: right;
    padding: 3px 0;
    font-size: 12px
  }

  .footprint_carousel_div {
    margin: 20px 0px 0px 2px;
    float: left;
    width: 80px;
    height: 80px
  }

  a:hover {
    color: #c81623;
  }
</style>