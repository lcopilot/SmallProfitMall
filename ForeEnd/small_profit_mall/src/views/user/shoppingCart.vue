<template>
  <div id="sCart">
    <el-container>
      <el-header>
        <Header/>
      </el-header>
      <el-main>
        <search/>
        <el-row :gutter="10" style="margin-top: 60px">
          <el-col :span="20" :push="2">
            <el-card shadow="always">
              <div class="cart_name">
                <span class="cart_name_span1">微利</span><span
                  class="cart_name_span2">购物车</span>
              </div>
              <el-table
                  ref="cartTable"
                  :data="cartList"
                  tooltip-effect="dark"
                  style="width: 100%"
                  @select="select"
                  @select-all="select_all">
                <el-table-column
                    type="selection"
                    :selectable='changeStateC'
                    width="55">
                </el-table-column>
                <el-table-column
                    label="商品"
                    width="500">
                  <template slot-scope="product">
                    <el-row :gutter="20">
                      <el-col :span="5">
                        <div style="max-width: 70px;max-height: 70px;">
                          <el-image fit="scale-down" :src="product.row.imageSite"></el-image>
                        </div>
                      </el-col>
                      <el-col :span="10">
                        <div style="font-size: 13px;">
                          <el-tooltip class="item" effect="dark" :content="product.row.productName"
                                      placement="bottom">
                            <router-link
                                :to="{path: '/product', query: {productId:product.row.productId}}">
                              {{product.row.productName}}
                            </router-link>
                          </el-tooltip>
                        </div>
                      </el-col>
                      <el-col :span="8">
                        <el-tooltip class="item" effect="dark" :content="product.row.productDeploy"
                                    placement="top">
                          <div style="font-size: 13px;">
                            {{product.row.productDeploy}}
                          </div>
                        </el-tooltip>
                      </el-col>
                    </el-row>
                  </template>
                </el-table-column>
                <el-table-column
                    label="单价"
                    prop="price"
                    sortable
                    width="130"
                    column-key="date">
                  <template slot-scope="product">
                    ￥<span class="cart_product_price">
                     {{product.row.productPrice.toFixed(2)}}
                    </span>
                  </template>
                </el-table-column>
                <el-table-column
                    label="数量"
                    width="180">
                  <template slot-scope="product">
                    <el-input-number v-model="product.row.quantity" size="mini" :min="1"
                                     :max="99" @change="quantityChange()"/>
                  </template>
                </el-table-column>
                <el-table-column
                    label="小计"
                    width="120">
                  <template slot-scope="product">
                    ￥<span class="cart_product_price">
                    {{(((product.row.productPrice)*100)*product.row.quantity)/100}}
                    </span>
                  </template>
                </el-table-column>
                <el-table-column
                    label="操作"
                    show-overflow-tooltip
                    width="120">
                  <template slot-scope="product">
                    <el-button
                        type="danger"
                        :disabled="product.row.productInventory==0"
                        @click="buyProduct(product.row.productId)">
                      立即购买
                    </el-button>
                  </template>
                </el-table-column>
                <el-table-column
                    width="80">
                  <template slot-scope="product">
                    <div style="padding-top: 30%">
                      <!-- 已收藏就不显示 待完成-->
                      <div v-if="!product.row.evaluation">
                        <el-link :underline="false" @click="addFavorite(product.row.productId)"
                                 style="font-size: 13px">
                          收藏
                        </el-link>
                      </div>
                      <div v-if="product.row.productInventory<=0">
                        <el-link :underline="false" @click="arrivalNotice(product.row.productId)"
                                 style="font-size: 13px">
                          到货通知
                        </el-link>
                      </div>
                      <div>
                        <el-link :underline="false"
                                 @click="removeCartProduct(product.row.shoppingCartId)"
                                 style="font-size: 13px">移除
                        </el-link>
                      </div>
                    </div>
                    <br/>
                  </template>
                </el-table-column>
              </el-table>
            </el-card>
            <el-card shadow="always" class="cart_footer">
              <el-row>
                <el-col :span="2">
                  <el-checkbox v-model="selectAll" @change="checkAll">全选</el-checkbox>
                </el-col>
                <el-col :span="3">
                  <el-button @click="addFavorite()" type="text" size="small">
                    收藏已选择
                  </el-button>
                  <el-button @click="removeCartProduct()" type="text" size="small">
                    移除已选择
                  </el-button>
                </el-col>
                <el-col :span="3" :push="11">
                  <div style="color: #999999">
                    已选<span style="color: red">{{productNumber}}</span>件商品
                  </div>
                </el-col>
                <el-col :span="5" :push="10">
                  <div class="cart_product_total_price1">总价:
                    <span class="cart_product_total_price2">
                      ￥{{cartFrom.totalPrice.toFixed(2)}}
                    </span>
                  </div>
                  <div style="font-size: 12px;color: #999999">促销:-￥0.00</div>
                </el-col>
                <el-col :span="3" :push="9">
                  <div class="cart_settlement1">
                    <a @click="settlement()">
                      <div class="cart_settlement2">
                        去结算
                      </div>
                    </a>
                  </div>
                </el-col>
              </el-row>
            </el-card>
          </el-col>
        </el-row>
      </el-main>

      <el-footer>
        <Footer/>
      </el-footer>
    </el-container>
  </div>

</template>

<script>
  import *as productApi from '../../api/page/product'
  import *as userApi from '../../api/page/user'
  import {mapActions} from "vuex";

  const search = () => import("../../components/pages/Search");
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");

  export default {
    inject: ["reload"],
    name: "shoppingCart",
    components: {search, Header, Footer},
    data() {
      return {
        //底栏的全选绑定
        selectAll: false,
        //底栏商品数量
        productNumber: 0,
        cartList: [],
        cartFrom: {
          productList: [],
          totalPrice: 0.00,
        },
        cartListUsableNumber: 0,
      }
    },
    methods: {
      ...mapActions([
        "modifyCartSum",
      ]),
      //购物车初始化的选择框状态判断 无库存时处于禁用状态
      changeStateC(row, index) {
        if (row.productInventory != 0) {
          //不禁用
          return 1;
        } else {
          //禁用
          return 0;
        }
      },
      //全选时触发
      select_all(selection) {
        if (selection.length == 0) {
          this.selectAll = false;
        } else {
          this.selectAll = true;
        }
        this.select(selection)
      },
      // 选择单个时触发
      select(selection) {
        this.cartFrom.totalPrice = 0;
        this.cartFrom.productList = selection;
        this.productNumber = selection.length;
        if (selection.length != sessionStorage.getItem("cartListUsableNumber")) {
          this.selectAll = false;
        } else {
          this.selectAll = true;
        }
        selection.forEach(product => {
          this.cartFrom.totalPrice += (((product.productPrice) * 100) * product.quantity) / 100
        })
      },
      //商品数量改变时触发
      quantityChange(productNumber) {
        this.select(this.$refs.cartTable.selection);
      },
      //底栏全选事件
      checkAll(state) {
        if (state) {
          this.$refs.cartTable.toggleAllSelection();
        } else {
          this.$refs.cartTable.clearSelection();
          this.select(this.$refs.cartTable.selection);
        }
      },
      //可购买商品数量
      availableProduct() {
        this.cartList.forEach((product) => {
          if (product.productInventory != 0) {
            this.cartListUsableNumber += 1;
            sessionStorage.setItem("cartListUsableNumber", this.cartListUsableNumber);
          }
        })
      },
      //立即购买
      buyProduct(cartProductId) {

      },
      //添加收藏
      addFavorite(productId) {
        if (this.$refs.cartTable.selection.length == 0) {
          return this.$message.warning("您还未选择商品哦~");
        }
        let data = {
          productIds: [],
          userId: sessionStorage.getItem("uId"),
        };
        if (productId != null) {
          data.productIds.push(productId);
        } else {
          this.$refs.cartTable.selection.forEach((shoppingCart) => {
            if (!shoppingCart.evaluation) {
              if (data.productIds.indexOf(shoppingCart.productId) == -1) {
                data.productIds.push(shoppingCart.productId);
              }
            }
          })
        }
        if (data.productIds.length > 0) {
          console.log(data.productIds.length)
          userApi.addFavorite(data).then(res => {
            if (res.success) {
              this.$message.success("已选商品收藏成功!");
              this.reload();
            } else {
              if (res.code == 11111) {
                this.$message({
                  message: "商品已经被收藏,请勿重复收藏"
                })
                data.productIds = [];
              }
            }
          })
        } else if (data.productIds.length == 0) {
          this.$message({
            message: "已选商品均以被收藏,请勿重复收藏",
            type: "warning"
          })
        }
      },
      //到货通知
      arrivalNotice(productId) {

      },
      //删除商品
      removeCartProduct(shoppingCartId) {
        if (this.$refs.cartTable.selection.length == 0) {
          return this.$message.warning("您还未选择商品哦~");
        }
        let cartIdList = [];
        if (shoppingCartId != null) {
          cartIdList.push(shoppingCartId);
        } else {
          this.$refs.cartTable.selection.forEach((shoppingCart) => {
            cartIdList.push(shoppingCart.shoppingCartId);
          })
        }
        productApi.removeCart(cartIdList).then(res => {
          if (res.success) {
            this.$message({
              message: "商品已移出购物车",
              type: "success"
            })
            this.modifyCartSum(-cartIdList.length);
            this.getShoppingCart();
            this.selectAll = false;
          } else {
            this.$message({
              message: "商品移出购物车失败!,请稍后重试",
              type: "error"
            })
          }
        })
      },
      //结算
      settlement() {
        this.$refs.cartTable.selection
        this.$router.push({
          path: "/orders" //跳转的路径
        });
      },
      //获取购物车数据
      getShoppingCart() {
        productApi.getShoppingCart(sessionStorage.getItem("uId")).then(res => {
          if (res.success) {
            this.cartList = res.queryResult.list;
            this.availableProduct();
          }
        })
      }
    },
    created() {
      this.getShoppingCart();
    }

  }
</script>

<style>
  /*增加scoped el-table样式无法使用
    #sCart 增加id防止影响其他页面
  */
  #sCart .el-table thead {
    color: #a8d8ea;
    font-weight: 500;
  }

  #sCart .el-table th {
    background: #f3f3f3;
  }

  #sCart .cart_name {
    text-align: left;
    margin: 0 0 10px 10px
  }

  #sCart .cart_name_span1 {
    font-size: 30px;
    font-weight: 600;
    color: red
  }

  #sCart .cart_name_span2 {
    font-weight: 600;
    margin-left: 5px
  }

  #sCart .cart_product_price {
    color: red;
    font-size: 18px;
    font-weight: 600
  }

  #sCart .cart_footer {
    max-height: 65px;
    z-index: 2000;
    position: fixed;
    width: 80%;
    bottom: 0px;
  }

  #sCart .cart_product_total_price1 {
    font-size: 12px;
    color: #999999;
    margin-top: -10px
  }

  #sCart .cart_product_total_price2 {
    font-size: 22px;
    color: red;
    font-weight: 700
  }

  #sCart .cart_settlement1 {
    background-color: #e64347;
    margin-top: -20px;
    height: 65px;
    width: 100px;
    margin-left: 20px
  }

  #sCart .cart_settlement2 {
    color: white;
    font-size: 20px;
    font-weight: 600;
    margin-top: 16px
  }
</style>