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
              <div style="text-align: left;margin:0 0 10px 10px">
                <span style="font-size: 30px;font-weight: 600;color: red">微利</span><span
                  style="font-weight: 600;margin-left: 5px">购物车</span>
              </div>
              <el-table
                  ref="cartTable"
                  :data="cartList"
                  tooltip-effect="dark"
                  style="width: 100%"
                  @select="select"
                  @select-all="select_all"
              >
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
                          <el-tooltip class="item" effect="dark" :content="product.row.productName" placement="bottom">
                            <router-link to="/">{{product.row.productName}}
                            </router-link>
                          </el-tooltip>
                        </div>
                      </el-col>
                      <el-col :span="9">
                        <el-tooltip class="item" effect="dark" :content="product.row.Configuration" placement="top">
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
                    ￥<span style="color: red;font-size: 18px;font-weight: 600">
                     {{product.row.price.toFixed(2)}}
                    </span>
                  </template>
                </el-table-column>
                <el-table-column
                    label="数量"
                    width="180">
                  <template slot-scope="product">
                    <el-input-number v-model="product.row.Quantity" size="mini" :min="1"
                                     :max="99" @change="quantityChange"/>
                  </template>
                </el-table-column>
                <el-table-column
                    label="小计"
                    width="120">
                  <template slot-scope="product">
                    ￥<span style="color: red;font-size: 18px;font-weight: 600">
                    {{(((product.row.price)*100)*product.row.Quantity)/100}}
                    </span>
                  </template>
                </el-table-column>
                <el-table-column
                    label="操作"
                    show-overflow-tooltip
                    width="120">
                  <template slot-scope="scope">
                    <el-button
                        type="danger"
                        @click.native.prevent="deleteRow(scope.$index, tableData)">
                      立即购买
                    </el-button>
                  </template>
                </el-table-column>
                <el-table-column
                    width="80">
                  <template slot-scope="scope">
                    <div>
                      <div>
                        <el-link :underline="false" >收藏</el-link>
                      </div>
                      <div>
                        <el-link :underline="false" >到货通知</el-link>
                      </div>
                      <div>
                        <el-link :underline="false" >移除</el-link>
                      </div>
                    </div>
                    <br/>
                  </template>
                </el-table-column>
              </el-table>
            </el-card>
            <el-card shadow="always"
                     style="max-height: 65px;z-index: 2000;position: fixed;width:80%;bottom: 0px;">
              <el-row>
                <el-col :span="2">
                  <el-checkbox v-model="selectAll" @change="checkAll">全选</el-checkbox>
                </el-col>
                <el-col :span="3">
                  <el-button
                      @click.native.prevent="deleteRow(scope.$index, tableData)"
                      type="text"
                      size="small">
                    全部收藏
                  </el-button>
                  <el-button
                      @click.native.prevent="deleteRow(scope.$index, tableData)"
                      type="text"
                      size="small">
                    清空购物车
                  </el-button>
                </el-col>
                <el-col :span="3" :push="11">
                  <div style="color: #999999">
                    已选<span style="color: red">{{number}}</span>件商品
                  </div>
                </el-col>
                <el-col :span="5" :push="10">
                  <div style="font-size: 12px;color: #999999;margin-top: -10px">总价:
                    <span style="font-size: 22px;color: red;font-weight: 700">￥{{cartFrom.totalPrice.toFixed(2)}}</span>
                  </div>
                  <div style="font-size: 12px;color: #999999">促销:-￥0.00</div>
                </el-col>
                <el-col :span="3" :push="9">
                  <div
                      style="background-color: #e64347;margin-top: -20px;height: 65px;width: 100px;margin-left: 20px">
                    <a>
                      <div style="color: white;font-size: 20px;font-weight: 600;margin-top: 16px">
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
  const search = () => import("../pages/Search");
  const Header = () => import("../pages/Header"); //组件懒加载
  const Footer = () => import("../pages/Footer");

  export default {
    name: "shoppingCart",
    components: {search, Header, Footer},
    data() {
      return {
        selectAll: false,
        number: 0,
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
      select_all(selection) {
        this.selectAll = !this.selectAll;
        this.select(selection)
      },
      select(selection) {
        this.cartFrom.totalPrice = 0;
        this.cartFrom.productList = selection;
        this.number = selection.length;
        selection.forEach(product => {
          this.cartFrom.totalPrice += (((product.price) * 100) * product.Quantity) / 100
        })
      },
      quantityChange(){
        this.select(this.$refs.cartTable.selection);
      },
      checkAll(state) {
        if (state) {
          this.$refs.cartTable.toggleAllSelection();
        } else {
          this.$refs.cartTable.clearSelection();
        }
      }
    },

  }
</script>

<style>
  #sCart .el-table thead {
    color: #8EB7FA;
    font-weight: 500;
  }

  #sCart .el-table th {
    background: #f3f3f3;
  }
</style>