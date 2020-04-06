<template>
  <el-container v-if="orderNumber">
    <el-header>
      <Header/>
    </el-header>
    <el-main v-if="orderData">
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
                <div v-if="addressList.length==0">还没有地址哦~
                  <el-button @click="addAddress" type="text">添加地址</el-button>
                </div>
                <el-row :gutter="10" v-if="addressList.length!=0">
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
                            <el-tooltip class="item" effect="dark" :content="address.name" placement="top">
                              <a>
                                {{address.name}}
                              </a>
                            </el-tooltip>
                          </div>
                        </el-col>
                        <el-col :span="13">
                          <div class="orders_address">
                            <el-tooltip class="item" effect="dark" :content="address.areas+' '+address.detailedAddress" placement="top">
                              <a>
                                {{address.areas+' '+address.detailedAddress}}
                              </a>
                            </el-tooltip>
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
                    <el-row v-for="(product,index) in orderProductList" style="margin-bottom: 2%"
                            :key="index">
                      <el-col :span="4">
                        <div class="order_product_img">
                          <el-image :src="product.productImage"
                                    fit="fill"></el-image>
                        </div>
                      </el-col>
                      <el-col :span="6">
                        <div style="font-size: 12px">{{product.productName}}
                        </div>
                        <div class="order_7Day">
                          <svg-icon name="7Day" class="order_7Day_svg"></svg-icon>
                          <span>支持7天无理由退货</span>
                        </div>
                      </el-col>
                      <el-col :span="6" :push="1">
                        <div style="font-size: 12px">
                          {{product.productConfiguration}}
                        </div>
                      </el-col>
                      <el-col :span="2" :push="2" class="order_product_price">
                        <div style="color: red;">￥{{product.productPrice.toFixed(2)}}</div>
                        <div>{{product.productWeight}}</div>
                      </el-col>
                      <el-col :span="2" :push="3">
                        <div>x{{product.productQuantity}}</div>
                      </el-col>
                    </el-row>
                  </el-col>
                </el-row>
              </div>
            </div>
          </el-card>
          <el-card shadow="always" class="cart_footer" v-if="orderData">
            <el-row>
              <el-col :span="3" :offset="14">
                <div style="color: #999999">
                  共<span style="color: red">{{orderProductList.length}}</span>件商品
                </div>
              </el-col>
              <el-col :span="4">
                <div class="cart_product_total_price1">总价:
                  <span class="cart_product_total_price2">
                      ￥{{orderData.order?orderData.order.orderTotal.toFixed(2):''}}
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
      <Face :isPayment="true" ref="face" @upload-face="facePayment"/>
      <el-dialog
          :title="orderData.paymentPassword?'验证支付密码':'您还未设置支付密码,请先设置'"
          :visible.sync="paymentPasswordVisible"
          @close="paymentPassword=''"
          width="30%" center>
        <el-input :placeholder="orderData.paymentPassword?'请输入支付密码':'请输入您要设置的支付密码'"
                  v-model="paymentPassword" maxlength="6" show-password></el-input>
        <span slot="footer" class="dialog-footer">
                      <el-button type="primary" @click="verifyPaymentPassword()">确 定</el-button>
                    </span>
      </el-dialog>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  import *as ordersApi from '../../api/page/orders'
  import encryption from "../../util/encryption";
  import * as userApi from "../../api/page/user";

  const addressManagement = () => import("./AddressManagement");
  const Face = () => import("../../components/admin/Face");
  export default {
    name: "order",
    components: {addressManagement, Face},
    data() {
      return {
        //支付密码弹出框
        paymentPasswordVisible: false,
        //订单数据
        orderData: {},
        //支付密码
        paymentPassword: '',
        //订单商品列表
        orderProductList: [],
        //订单id
        orderNumber: '',
        //定单地址
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
          if (this.orderData.faceRecognition) {
            this.$refs.face.faceVisible = true;
            this.$refs.face.recognitionFailure();
            let timer = setInterval(() => {
              if (this.$refs.face.cameraStatus) {
                this.$refs.face.collectionFace();
                clearTimeout(timer);
              }
            }, 200)
          } else {
            this.paymentPasswordVisible = true;
          }
        } else if (this.paymentMethod == 2) {

        } else if (this.paymentMethod == 3) {
          this.settlementOrder();
        }
      },
      //验证支付密码 设置支付密码
      verifyPaymentPassword() {
        let regular = /^\d{6}$/;
        if (!regular.test(this.paymentPassword)) {
          return this.$message.warning("请输入正确的6位支付密码!")
        }
        if (!this.orderData.paymentPassword) {
          let params = {
            userId: sessionStorage.getItem("uId"),
            paymentPassword: encryption.encrypt(this.paymentPassword)
          };
          userApi.changePaymentPassword(params).then(res => {
            if (res.success) {
              this.$message.success("支付密码设置成功!");
              this.paymentPassword = '';
              this.orderData.paymentPassword = true;
            }
          });
        } else {
          let params = {
            userId: sessionStorage.getItem("uId"),
            faceRecognition: this.paymentPassword
          };
          userApi.verifyPaymentPassword(params).then(res => {
            if (res.success) {
              this.settlementOrder();
            }
          });
        }
      },
      //刷脸支付
      facePayment(videoFile, image) {
        let dataForm = new FormData();
        dataForm.append("userId", sessionStorage.getItem("uId"));
        dataForm.append("image", image);
        dataForm.append("videoFile", videoFile);
        this.$refs.face.recognitionFailure(20190415);
        ordersApi.facePayment(dataForm).then(res => {
          if (res.success) {
            this.$refs.face.faceAnimation = "http://img.fhxasdsada.xyz/afterRecognition.gif";
            this.$refs.face.stopNavigator();
            this.$refs.face.collectionPrompt='';
            setTimeout(() => {
                this.settlementOrder();
              //跳转支付成功页面
            }, 2500)
            // this.settlementOrder();
          } else {
            if (res.faceRecognition.result.error_code==32000){
              this.$message({
                message: "刷脸支付失败",
                type: "warning"
              });
              this.$refs.face.stopNavigator();
              return this.$refs.face.faceVisible = false;
            }
            if (res.faceRecognition.result.error_code==17){
              this.$message({
                message: "服务器跑路了,请稍后重试!",
                type: "warning"
              });
              this.$refs.face.stopNavigator();
              return this.$refs.face.faceVisible = false;
            }
            this.$refs.face.recognitionFailure(res.faceRecognition.result.error_code);
            this.$refs.face.collectionFace();
          }
        });
      },
      //支付成功之后传递订单数据
      settlementOrder() {
        let order = {
          userId: sessionStorage.getItem("uId"),
          orderId: this.orderNumber,
          orderAddress: this.orderAddress,
          orderNote: this.ordersNote,
          deliveryTime: this.deliveryTime,
          paymentWay: this.paymentMethod,
          deliveryWay: this.expressType,
        };
        ordersApi.settlementOrder(order).then(res => {
          if (res.success) {
            this.$router.push({
              path: "/orderComplete"
            });
          }else {
            if (res.code == 40000) {
              this.$notify({
                title: '余额不足',
                message: '您的钱包余额不足,请更换支付方式',
                type: 'warning',
              });
              if (this.orderData.faceRecognition){
                this.$refs.face.stopNavigator();
                this.$refs.face.faceVisible = false;
              }else {
                this.paymentPasswordVisible = false;
                this.paymentPassword = '';
              }
            }
          }
        })
      },
      //获取地址数据
      getAddress(addressList) {
        this.addressList = addressList;
        addressList.forEach((address) => {
          if (address.defaults) {
            return this.orderAddress = address;
          }
        });
        if (!this.orderAddress.name){
          this.orderAddress=addressList[0];
        }
      },
      //模糊处理手机号
      fuzzyPhone(phone) {
        let newPhone = String(phone).slice(0, 3) + "*".repeat(6)
            + String(phone).slice(9, String(phone).length);
        return newPhone.slice(0, 11)
      },
      //获取订单数据
      getOrder() {
        ordersApi.getOrder(sessionStorage.getItem("uId"), this.orderNumber).then(res => {
          if (res.success) {
            this.orderData = res.resultOrder;
            this.orderProductList = res.resultOrder.order.productContents;
          }
        })
      },
    },
    created() {
      if (this.$route.params.orderNumber != null) {
        sessionStorage.setItem("orderNumber", this.$route.params.orderNumber);
      }
      this.orderNumber = sessionStorage.getItem("orderNumber");
      this.getOrder();
    },
    //页面关闭时销毁
    beforeDestroy() {
      sessionStorage.setItem("orderNumber", '');
    }
  }
</script>

<style scoped>

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
    padding-top: 7%;
    padding-right: 3%;
    padding-left: 3%;
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