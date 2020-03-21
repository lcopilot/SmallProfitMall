<template>
  <el-container>
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
            <div style="padding-left: 4%;margin-bottom: 1%">
              <div style="margin-bottom:1%;font-weight: 600;">收货人信息
                <span style="float: right;padding-right: 2%;margin-top: -5px;">
                <el-button type="text" class="el-icon-plus" @click="addAddress">新增收货地址</el-button>
              </span>
              </div>
              <div style="padding-left: 2%">
                <el-row :gutter="10">
                  <el-col :span="2">
                    <el-tag type="success" size="mini" effect="dark">
                      学校地址
                    </el-tag>
                  </el-col>
                  <el-col :span="2">
                    <div class="orders_address">方鸿鑫递的时候</div>
                  </el-col>
                  <el-col :span="14">
                    <div class="orders_address">湖南 长沙市 天心区 暮云街道
                      中意三路122号(红星南北大楼西北)湖南科技职业学院(暮云...
                    </div>
                  </el-col>
                  <el-col :span="3">
                    <div class="orders_address">153****5410</div>
                  </el-col>
                  <el-col :span="3">
                    <el-button type="text" class="orders_address" style="margin-top: -5px">编辑
                    </el-button>
                  </el-col>
                </el-row>
                <el-collapse class="order_more_address">
                  <el-collapse-item title="更多地址">
                    <el-row :gutter="10">
                      <el-col :span="2">
                        <el-tag type="success" size="mini" effect="dark">
                          学校地址
                        </el-tag>
                      </el-col>
                      <el-col :span="2">
                        <div class="orders_address">方鸿鑫递的时候</div>
                      </el-col>
                      <el-col :span="14">
                        <div class="orders_address">湖南 长沙市 天心区 暮云街道
                          中意三路122号(红星南北大楼西北)湖南科技职业学院(暮云...
                        </div>
                      </el-col>
                      <el-col :span="3">
                        <div class="orders_address">153****5410</div>
                      </el-col>
                      <el-col :span="3">
                        <el-button type="text" class="orders_address" style="margin-top: -5px">
                          编辑
                        </el-button>
                      </el-col>
                    </el-row>
                    <el-row :gutter="10">
                      <el-col :span="2">
                        <el-tag type="success" size="mini" effect="dark">
                          学校地址
                        </el-tag>
                      </el-col>
                      <el-col :span="2">
                        <div class="orders_address">方鸿鑫递的时候</div>
                      </el-col>
                      <el-col :span="14">
                        <div class="orders_address">湖南 长沙市 天心区 暮云街道
                          中意三路122号(红星南北大楼西北)湖南科技职业学院(暮云...
                        </div>
                      </el-col>
                      <el-col :span="3">
                        <div class="orders_address">153****5410</div>
                      </el-col>
                      <el-col :span="3">
                        <el-button type="text" class="orders_address" style="margin-top: -5px">
                          编辑
                        </el-button>
                      </el-col>
                    </el-row>
                  </el-collapse-item>
                </el-collapse>
                <addressManagement ref="addressManagement" style=" position:absolute;top: -99999999px;left: -999999999px;"/>
              </div>
            </div>
            <div style="padding-left: 4%;margin-bottom: 1%">
              <div style="margin-bottom:1%;font-weight: 600;">支付方式
              </div>
              <div style="padding-left: 2%">
                <template>
                  <el-radio v-model="paymentMethod" label="1">
                    <svg-icon name="walletPayment" style="width: 25px;margin-bottom: -6%;" />
                    <div style="float: right;font-size: 12px;margin-left: 4px">钱包支付</div><br/>
                    <div style="float: right;font-size: 8px;margin-top: -8px;">Wallet Pay</div>
                  </el-radio>
                  <el-radio v-model="paymentMethod" label="2">
                    <svg-icon name="aliPay" style="width: 70px;margin-bottom: -8%" />
                  </el-radio>
                  <el-radio v-model="paymentMethod" label="3">
                    <svg-icon name="weChatPay" style="width: 70px;margin-bottom: -8%;" />
                  </el-radio>
                </template>
              </div>
            </div>
            <div style="padding-left: 4%">
              <div style="margin-bottom:1%;font-weight: 600;">送货清单
              </div>
              <div style="padding-left: 2%">
                  <el-row>
                    <el-col :span="7">
                      <div>
                        <el-radio-group v-model="expressType">
                          <el-radio label="1">
                            <svg-icon name="postal" style="width:25px;margin-bottom: -8px"/>
                            邮政
                          </el-radio>
                          <el-radio label="2">
                            <svg-icon name="FS"
                                      style="width:25px;margin-bottom: -8px"/>
                            顺丰
                          </el-radio>
                        </el-radio-group>
                      </div>
                      <div>
                        标准达:预计3月21日09:00-21:00送达
                        <el-button type="text">修改</el-button>
                      </div>
                      <div>
                        自签收后7天内退货，15天内换货，可享1次上门取件服务
                        <el-button type="text">查看详情</el-button>
                      </div>
                    </el-col>
                    <el-col :span="17">
                      商品列表
                    </el-col>
                  </el-row>
              </div>
            </div>

          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  const addressManagement =() => import("../user/addressManagement");
  export default {
    name: "order",
    components: {Header, Footer,addressManagement},
    data() {
      return {
        //支付方式
        paymentMethod:"1",
        //快递类型
        expressType:"1",
      }
    },
    methods:{
      addAddress(){
        this.$refs.addressManagement.addAddress();
      }
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
  .order_more_address /deep/ .el-collapse-item__content{
    padding-bottom: 1%;
  }
  .order_more_address {
    border: 0;
    width: 95%;
  }

  .orders_address {
    font-size: 14px;
    margin-top: 3px;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }
</style>