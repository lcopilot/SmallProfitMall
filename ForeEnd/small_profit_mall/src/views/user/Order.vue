<template>
  <el-container v-if="orderNumber">
    <el-header>
      <Header/>
    </el-header>
    <el-main>
      <el-row :gutter="10">
        <el-col :span="18" :push="3">
          <el-card style="text-align: left">
            <div slot="header">
              <div>
                请填写并确认订单信息
              </div>
            </div>
            <div class="order_div">
              <div class="order_receiver_div">收货人信息
                <span class="order_add_address">
                <el-button type="text" class="el-icon-plus" @click="addAddress">新增收货地址</el-button>
              </span>
              </div>
              <div style="padding-left: 2%">
                <div v-if="!orderAddress">还没有地址哦~
                  <el-button @click="addAddress" type="text">添加地址</el-button>
                </div>
                <el-row :gutter="10" v-if="orderAddress">
                  <el-col :span="3">
                    <el-tag type="success" size="mini" effect="dark">
                      {{orderAddress.alias}}
                    </el-tag>
                  </el-col>
                  <el-col :span="2">
                    <div class="orders_address">
                      {{orderAddress.name}}
                    </div>
                  </el-col>
                  <el-col :span="13">
                    <div class="orders_address">
                      {{orderAddress.areas+''+orderAddress.detailedAddress}}
                    </div>
                  </el-col>
                  <el-col :span="3">
                    <div class="orders_address">{{fuzzyPhone(orderAddress.phone)}}</div>
                  </el-col>
                  <el-col :span="3">
                    <el-tag type="success" size="mini" effect="dark" v-if="orderAddress.defaults">
                      默认地址
                    </el-tag>
                  </el-col>
                </el-row>
                <el-collapse class="order_more_address">
                  <el-collapse-item title="更多地址">
                    <div v-for="(address,index) in addressList" class="order_address"
                         @click="selectAddress(index)">
                      <el-row :gutter="10">
                        <el-col :span="3">
                          <el-tag type="success" size="mini" effect="dark">
                            {{address.alias}}
                          </el-tag>
                        </el-col>
                        <el-col :span="2">
                          <div class="orders_address">
                            <a>
                              {{address.name}}
                            </a>
                          </div>
                        </el-col>
                        <el-col :span="13">
                          <div class="orders_address">
                            <a>
                              {{address.areas+' '+address.detailedAddress}}
                            </a>
                          </div>
                        </el-col>
                        <el-col :span="3">
                          <div class="orders_address">
                            {{fuzzyPhone(address.phone)}}
                          </div>
                        </el-col>
                        <el-col :span="3">
                          <el-button type="text" class="orders_address" style="margin-top: -5px"
                                     @click="$refs.addressManagement.editAddress(index)">
                            编辑
                          </el-button>
                        </el-col>
                      </el-row>
                    </div>
                  </el-collapse-item>
                </el-collapse>
                <addressManagement ref="addressManagement" :isOrder="true"
                                   @getAddress="getAddress"/>
              </div>
            </div>
            <div class="order_div">
              <div class="order_pay">支付方式
              </div>
              <div style="padding-left: 2%;">
                <template>
                  <el-radio v-model="paymentMethod" label="1" class="order_rad">
                    <svg-icon name="walletPayment" style="width: 25px;margin-bottom: -6%;"/>
                    <div style="float: right;font-size: 12px;margin-left: 4px">钱包支付</div>
                    <br/>
                    <div style="float: right;font-size: 8px;margin-top: -8px;">Wallet Pay</div>
                  </el-radio>
                  <el-radio v-model="paymentMethod" label="2" class="order_rad">
                    <svg-icon name="aliPay" class="order_rad_svg"/>
                  </el-radio>
                  <el-radio v-model="paymentMethod" label="3" class="order_rad">
                    <svg-icon name="weChatPay" class="order_rad_svg"/>
                  </el-radio>
                </template>
              </div>
            </div>
            <div style="padding-left: 4%">
              <div class="order_delivery_order">送货清单
              </div>
              <div style="padding-left: 2%">
                <el-row>
                  <el-col :span="7">
                    <div>
                      <el-radio-group v-model="expressType">
                        <el-radio label="1">
                          <svg-icon name="postal" class="order_express"/>
                          邮政
                        </el-radio>
                        <el-radio label="2">
                          <svg-icon name="FS" class="order_express"/>
                          顺丰
                        </el-radio>
                      </el-radio-group>
                    </div>
                    <div class="order_delivery_time">
                        <span>
                          标准达:
                        </span>
                      预计 {{new Date(deliveryTime).getMonth()+1}}月 {{new
                      Date(deliveryTime).getDate()}}日 09:00-21:00 送达
                      <el-popover
                          placement="right"
                          width="245"
                          trigger="click">
                        <el-date-picker
                            v-model="deliveryTime"
                            type="date"
                            :picker-options="timeDate"
                            placeholder="选择日期时间">
                        </el-date-picker>
                        <el-button slot="reference" type="text">修改</el-button>
                      </el-popover>
                    </div>
                    <div class="order_delivery_prompt">
                      自签收后7天内退货，15天内换货，可享1次<br/>上门取件服务
                      <el-popover
                          placement="right-start"
                          width="200"
                          trigger="hover">
                        <div style="font-size: 12px">
                          自签收后7天内退货、15天内换货时，可以享受1次上门取件服务，此服务不再单独收费且此服务不影响商品的七天无理由退货政策。
                        </div>
                        <el-button slot="reference" type="text">查看详情</el-button>
                      </el-popover>
                    </div>
                    <div>
                      <div>订单备注(选填):</div>
                      <el-input
                          style="width: 85%;"
                          :show-word-limit="true"
                          type="textarea"
                          :autosize="true"
                          maxlength="1000"
                          placeholder="请输入备注内容"
                          v-model="ordersNote">
                      </el-input>
                    </div>
                  </el-col>
                  <el-col :span="17">
                    <el-row v-for="i in 5" style="margin-bottom: 2%">
                      <el-col :span="4">
                        <div class="order_product_img">
                          <el-image src="http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg"
                                    fit="fill"></el-image>
                        </div>
                      </el-col>
                      <el-col :span="6">
                        <div style="font-size: 12px">Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机
                          双卡双待水电费纳斯达克福建省那开始记得发
                        </div>
                        <div class="order_7Day">
                          <svg-icon name="7Day" class="order_7Day_svg"></svg-icon>
                          <span>支持7天无理由退货</span>
                        </div>
                      </el-col>
                      <el-col :span="6" :push="1">
                        <div style="font-size: 12px">
                          枯井中等级考试放声大哭水电费就开始人兽斗合辑和输入绿山咖啡技术的了卡萨丁卷发梳
                        </div>
                      </el-col>
                      <el-col :span="2" :push="2"  class="order_product_price">
                        <div style="color: red;">￥156.00</div>
                        <div>0.025kg</div>
                      </el-col>
                      <el-col :span="2" :push="3">
                        <div>x1</div>
                      </el-col>
                    </el-row>
                  </el-col>
                </el-row>
              </div>
            </div>
          </el-card>
          <el-card shadow="always" class="cart_footer">
            <el-row>
              <el-col :span="3" :offset="14">
                <div style="color: #999999">
                  共<span style="color: red">0</span>件商品
                </div>
              </el-col>
              <el-col :span="4">
                <div class="cart_product_total_price1">总价:
                  <span class="cart_product_total_price2">
￥8588559.00
                  </span>
                </div>
                <div style="font-size: 12px;color: #999999">运费:￥0.00</div>
              </el-col>
              <el-col :span="3">
                <div class="cart_settlement1">
                  <a @click="settlement()">
                    <div class="cart_settlement2">
                      结算
                    </div>
                  </a>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>
      <Face :isPayment="true" ref="face" @uploadFace="facePayment"/>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  import *as ordersApi from '../../api/page/orders'

  const addressManagement = () => import("./AddressManagement");
  const Face = () => import("../../components/admin/Face");
  export default {
    name: "order",
    components: {addressManagement, Face},
    data() {
      return {
        //订单id
        orderNumber:'',
        //默认地址
        orderAddress: {},
        //地址数据
        addressList: [],
        //支付方式
        paymentMethod: "1",
        //快递类型
        expressType: "1",
        //送达时间
        deliveryTime: new Date(new Date().getTime() + 24 * 60 * 60 * 1000 * 3),
        //时间范围
        timeDate: {
          disabledDate: time => {
            return time.getTime() < new Date(new Date().getTime() + 24 * 60 * 60 * 1000 * 3)
                || time.getTime() > new Date(new Date().getTime() + 24 * 60 * 60 * 1000 * 10);
          }
        },
        //订单备注
        ordersNote: "",
        //编辑按钮
        editShow: false,
      }
    },
    methods: {
      //选择配送地址
      selectAddress(index) {
        this.orderAddress = this.addressList[index];
      },
      //添加地址
      addAddress() {
        this.$refs.addressManagement.addAddress();
      },
      //结算
      settlement() {
        if (this.paymentMethod == 1) {
          this.$refs.face.faceVisible = true;
          this.$refs.face.recognitionFailure();
          setTimeout(() => {
            this.$refs.face.recognitionFailure(20190415);
            this.$refs.face.collectionFace();
          }, 2500);
        }
      },
      //刷脸支付
      facePayment(image) {
        ordersApi.facePayment().then(res => {
          if (res.success) {
            this.$refs.face.faceAnimation = "http://img.fhxasdsada.xyz/afterRecognition.gif";
            setTimeout(() => {
              this.$router.push({
                path: "/orderComplete"
              });
              //跳转支付成功页面
            }, 2700)
          }
        })
      },
      //获取地址数据
      getAddress(addressList) {
        this.addressList = addressList;
        addressList.forEach((address) => {
          if (address.defaults) {
            this.orderAddress = address;
          }
        })
      },
      //模糊处理手机号
      fuzzyPhone(phone) {
        let newPhone = String(phone).slice(0, 3) + "*".repeat(6)
            + String(phone).slice(9, String(phone).length);
        return newPhone.slice(0, 11)
      }
    },
    created() {
      if (this.$route.params.orderNumber != null) {
        sessionStorage.setItem("orderNumber", this.$route.params.orderNumber);
      }
      this.orderNumber = sessionStorage.getItem("orderNumber");
    }

  }
</script>

<style scoped>
  [v-cloak] {
    display: none
  }

  /*
  通过 >>>，穿透scoped 修改第三方样式
  有些Sass 之类的预处理器无法正确解析 >>> 可以使用 /deep/ 操作符( >>> 的别名)
  !important 理解:增加css属性的优先级
  */
  /*.order_more_address >>> .el-collapse-item__header {*/
  /*  color: #409eff;*/
  /*  border: 0;*/
  /*  display: flow-root;*/
  /*}*/

  .order_more_address /deep/ .el-collapse-item__header {
    color: #409eff !important;
    border: 0 !important;
    display: flow-root !important;
  }

  .order_more_address /deep/ .el-collapse-item__content {
    padding-bottom: 1%;
  }

  .order_more_address {
    border: 0;
    width: 95%;
  }

  .order_receiver_div {
    margin-bottom: 1%;
    font-weight: 600;
  }

  .order_7Day {
    margin-top: 5%;
  }

  .order_product_price {
    font-size: 14px;
  }

  .order_express {
    width: 25px;
    margin-bottom: -8px
  }

  .order_7Day span {
    color: #1296db;
    font-size: 12px
  }

  .order_7Day_svg {
    margin-bottom: -2%;
    width: 20px;
    height: 20px
  }

  .order_address:hover {
    cursor: pointer;
  }

  .order_pay {
    margin-bottom: 1%;
    font-weight: 600;
  }

  .order_delivery_prompt {
    color: #999999;
    font-size: 12px;
  }

  .order_product_img {
    width: 60%;
    border: 1px solid #999999;
    margin-left: 10%
  }

  .order_add_address {
    float: right;
    padding-right: 2%;
    margin-top: -5px;
  }

  .order_delivery_time {
    font-size: 12px;
    margin-top: 2%;
  }

  .order_delivery_time span {
    color: #999999;
  }

  .order_div {
    padding-left: 4%;
    margin-bottom: 1%
  }

  .orders_address {
    margin-top: 3px;
    font-size: 14px;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }

  .order_delivery_order {
    margin-bottom: 1%;
    font-weight: 600;
  }

  .order_rad {
    vertical-align: top;
  }

  .order_rad_svg {
    width: 70px;
    margin-bottom: -8%
  }

  .cart_footer {
    max-height: 65px;
    z-index: 2000;
    position: fixed;
    bottom: 0px;
  }

  @media all and (min-width: 0) {
    .cart_footer {
      width: 72.6%;
    }
  }

  @-moz-document url-prefix() {
    .cart_footer {
      -moz-width: 72%;
    }
  }


  .cart_product_total_price1 {
    font-size: 12px;
    color: #999999;
    margin-top: -10px;
    margin-right: -30%;
  }

  .cart_product_total_price2 {
    font-size: 22px;
    color: red;
    font-weight: 700;
  }

  .cart_settlement1 {
    background-color: #e64347;
    margin-top: -20px;
    height: 65px;
    width: 100px;
    margin-left: 40%;
  }

  .cart_settlement2 {
    color: white;
    font-size: 20px;
    font-weight: 600;
    margin-top: 16px
  }
</style>