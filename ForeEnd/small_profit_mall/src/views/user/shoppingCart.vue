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
                    width="55">
                </el-table-column>
                <el-table-column
                    label="商品"
                    width="520">
                  <template slot-scope="product">
                    <el-row :gutter="20">
                      <el-col :span="5">
                        <div style="max-width: 70px;max-height: 70px;">
                          <el-image fit="scale-down" :src="product.row.productImg"></el-image>
                        </div>
                      </el-col>
                      <el-col :span="9">
                        <div style="font-size: 13px;">
                          <el-tooltip class="item" effect="dark" :content="product.row.productName"
                                      placement="bottom">
                            <router-link to="/">{{product.row.productName}}
                            </router-link>
                          </el-tooltip>
                        </div>
                      </el-col>
                      <el-col :span="9">
                        <el-tooltip class="item" effect="dark" :content="product.row.Configuration"
                                    placement="top">
                          <div style="font-size: 13px;">
                            {{product.row.Configuration}}
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
                    width="110"
                    column-key="date">
                  <template slot-scope="product">
                    ￥<span class="cart_product_price">
                     {{product.row.price.toFixed(2)}}
                    </span>
                  </template>
                </el-table-column>
                <el-table-column
                    label="数量"
                    width="180">
                  <template slot-scope="product">
                    <el-input-number v-model="product.row.Quantity" size="mini" :min="1"
                                     :max="99" @change="quantityChange()"/>
                  </template>
                </el-table-column>
                <el-table-column
                    label="小计"
                    width="120">
                  <template slot-scope="product">
                    ￥<span class="cart_product_price">
                    {{(((product.row.price)*100)*product.row.Quantity)/100}}
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
                        @click="buyProduct(product.row.productId)">
                      立即购买
                    </el-button>
                  </template>
                </el-table-column>
                <el-table-column
                    width="80">
                  <template slot-scope="product">
                    <div>
                      <!-- 已收藏就不显示 待完成-->
                      <div>
                        <el-link :underline="false" @click="favorite(product.row.productId)">收藏
                        </el-link>
                      </div>
                      <!-- 库存不足时显示 待完成-->
                      <div>
                        <el-link :underline="false" @click="arrivalNotice(product.row.productId)">
                          到货通知
                        </el-link>
                      </div>
                      <div>
                        <el-link :underline="false"
                                 @click="removeCartProduct(product.row.productId)">移除
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
                  <el-button @click="favoriteAll()" type="text" size="small">
                    收藏已选择
                  </el-button>
                  <el-button @click="removeAll()" type="text" size="small">
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
  const search = () => import("../../components/pages/Search");
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");

  export default {
    name: "shoppingCart",
    components: {search, Header, Footer},
    data() {
      return {
        //底栏的全选绑定
        selectAll: false,
        //底栏商品数量
        productNumber: 0,
        cartList: [
          {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 225.2,
            Configuration: '256G + 8',
            Quantity: 5,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 225.2,
            Configuration: '256G + 8',
            Quantity: 1,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 225.00,
            Configuration: '128G + 8',
            Quantity: 4,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }, {
            productImg: 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg',
            productName: 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ',
            price: 2250.00,
            Configuration: '256G + 8',
            Quantity: 2,
          }
        ],
        cartFrom: {
          productList: [],
          totalPrice: 0.00,
        },
      }
    },
    methods: {
      //全选时触发
      select_all(selection) {
        if (selection.length==0){
          this.selectAll=false;
        }else {
          this.selectAll = true;
        }
        this.select(selection)
      },
      // 选择单个时触发
      select(selection) {
        this.cartFrom.totalPrice = 0;
        this.cartFrom.productList = selection;
        this.productNumber = selection.length;
        selection.forEach(product => {
          this.cartFrom.totalPrice += (((product.price) * 100) * product.Quantity) / 100
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
        }
      },
      //立即购买
      buyProduct(cartProductId) {
      },
      //收藏
      favorite(productId) {

      },
      //收藏已选择
      favoriteAll() {
        this.$refs.cartTable.selection
      },
      //到货通知
      arrivalNotice(productId) {

      },
      //删除单个商品
      removeCartProduct(productId) {

      },
      //删除已选择商品
      removeAll() {
        this.$refs.cartTable.selection
      },
      //结算
      settlement() {

        this.$refs.cartTable.selection

      }
    },

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