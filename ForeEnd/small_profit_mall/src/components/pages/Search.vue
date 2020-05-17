<template>
  <el-container>
    <el-header>
      <el-row type="flex" class="row-bg" justify="center" :gutter="20">
        <el-col :span="3">
          <router-link to="/">
            <img src="../../assets/images/logo.png" class="logo">
          </router-link>
        </el-col>
        <el-col :span="10">
          <el-autocomplete
              style="width:75%;margin-right:2% "
              v-model="searchContent"
              :maxlength="25"
              :fetch-suggestions="querySearch"
              placeholder="搜索 商品 / 品牌"
              @keyup.enter.native="searchProduct()"
              prefix-icon="el-icon-search"
          >
            <i class="el-icon-edit el-input__icon">
            </i>
            <template slot-scope="{item}">
              <div style=" position: relative;">
                <span>{{item.value}}</span>
                <span v-if="item.value" @click="removeSearchHistory(item.value)" style="position: absolute;right:0;top:5px;"><svg-icon name="shutdown"></svg-icon></span>
                <span v-if="item.value===''&&restaurants.length>=2" @click="removeSearchHistory(item.value,true)" style="color: #999999;font-size: 13px;float: right">清空搜索历史</span>
                <span v-if="item.value===''&&restaurants.length==1" style="display:block;text-align:center;color: #999999;font-size: 13px;">您还没有搜索过哦~</span>
              </div>
            </template>
          </el-autocomplete>
          <el-button plain icon="el-icon-search" type="danger" round @click="searchProduct()">搜索
          </el-button>
        </el-col>
        <el-col :span="3">
          <el-badge :value="CartSum" :max="99" class="item">
            <el-popover
                placement="bottom"
                width="440"
                trigger="hover"
                transition="el-zoom-in-top"
                :open-delay="400"
                @show="getShoppingCartPreview()"
            >
              <div v-if="!toke" style="text-align: center;padding: 6%;">
                <router-link to="/login">您还没有登录,请先登录吧</router-link>
              </div>
              <el-table v-if="toke" empty-text="购物车中还没有商品,赶紧选购吧!" :data="cartList"
                        :show-header="false">
                <el-table-column min-width="15%">
                  <template slot-scope="product">
                    <el-image fit="scale-down" :src="product.row.imageSite"/>
                  </template>
                </el-table-column>
                <el-table-column min-width="45%">
                  <template slot-scope="product">
                    <router-link :to="{path: '/product',query:{productId:product.row.productId}}">
                      <div class="cart_preview_product_name">
                        {{product.row.productName}}
                      </div>
                    </router-link>
                  </template>
                </el-table-column>
                <el-table-column min-width="12%">
                  <template slot-scope="product">
                    <el-tag size="small" effect="dark" type="success">
                      {{product.row.quantity<=99?'x'+product.row.quantity:'99+'}}
                    </el-tag>
                  </template>
                </el-table-column>
                <el-table-column min-width="10%">
                  <template slot-scope="product">
                    <el-button size="medium" @click="removeCartProduct(product.row.shoppingCartId)"
                               icon="el-icon-delete" circle></el-button>
                  </template>
                </el-table-column>
              </el-table>
              <el-button slot="reference" type="danger" @click="EnterCart">
                <svg-icon name="shoppingCart" class="cart"/>
                我的购物车
              </el-button>
            </el-popover>
          </el-badge>

        </el-col>
        <el-col :span="2">
          <el-popover
              placement="bottom"
              width="150"
              trigger="hover"
              transition="el-zoom-in-top"
              :open-delay="150"
          >
            打开微信扫一扫
            <el-image src="http://img.fhxasdsada.xyz/qrcode.jpg"/>
            <el-image slot="reference" :lazy="true" style="width: 50px; height: 50px"
                      src="http://img.fhxasdsada.xyz/qrcode.jpg"/>
          </el-popover>
        </el-col>
      </el-row>
      <el-row type="flex" justify="space-around">
        <el-col :span="12">
          <div class="product_categories" v-if="isCategories">
            <el-popover
                placement="bottom"
                width="200"
                trigger="click">
              <div style="text-align: center">
                <product-categories/>
              </div>
              <div slot="reference" style="font-weight: 600"><a>商品分类</a></div>
            </el-popover>
          </div>
          <div style="margin: 10px 0 -18px 0">
            <router-link :to="PagePilot.goodsId_1_c" class="navigation_span"
                         v-for="PagePilot in PagePilotList" :key="PagePilot.cid">
              {{PagePilot.goodsName_1_c}}
            </router-link>
          </div>
        </el-col>
      </el-row>
      <el-divider/>
    </el-header>
  </el-container>
</template>

<script>
  import {mapActions} from 'vuex'
  import *as homeApi from '../../api/page/home';
  import *as productApi from '../../api/page/product';

  const productCategories = () => import("./ProductCategories");

  export default {
    name: "Search",
    components: {productCategories},
    data() {
      return {
        //判断登录状态
        toke: '',
        //购物车预览数据
        cartList: [],
        //搜索内容
        searchContent: '',
        //商品分类是否展示
        isCategories: '',
        restaurants: [],
        state1: '',
        state2: '',
        //导航栏数据
        PagePilotList: [
          {"cid": 1, "goodsName_1_c": "秒杀", "goodsId_1_c": "/"},
          {"cid": 2, "goodsName_1_c": "优惠券", "goodsId_1_c": "/"},
          {"cid": 3, "goodsName_1_c": "微利会员", "goodsId_1_c": "/"},
          {"cid": 4, "goodsName_1_c": "品牌闪购", "goodsId_1_c": "/"},
          {"cid": 5, "goodsName_1_c": "拍卖", "goodsId_1_c": "/"},
          {"cid": 6, "goodsName_1_c": "微利家电", "goodsId_1_c": "/"},
          {"cid": 7, "goodsName_1_c": "微利超市", "goodsId_1_c": "/"},
          {"cid": 8, "goodsName_1_c": "品牌馆", "goodsId_1_c": "/"},
          {"cid": 9, "goodsName_1_c": "网红必备", "goodsId_1_c": "/"}],
      }
    },
    computed: {
      //vuex
      CartSum() {
        return this.$store.state.CartSum;
      },
    },
    methods: {
      //进入购物车页面
      EnterCart() {
        this.$router.push({
          path: "/shoppingCart" //跳转的路径
        });
      },
      ...mapActions([
        "modifyCartSum",
        "getCartSum"
      ]),
      //获取购物车预览数据
      getShoppingCartPreview() {
        let userId = sessionStorage.getItem("uId");
        if (userId != null) {
          productApi.getShoppingCartPreview(userId, 4).then(res => {
            if (res.success) {
              this.getCartSum(res.queryResult.total);
              this.cartList = res.queryResult.list;
            }
          })
        } else {
          this.getCartSum(0);
        }
      },
      //删除商品
      removeCartProduct(shoppingCartId) {
        let cartIdList = [];
        cartIdList.push(shoppingCartId);
        productApi.removeCart(cartIdList).then(res => {
          if (res.success) {
            this.$message({
              message: "商品已移出购物车",
              type: "success"
            })
            this.getShoppingCartPreview();
          } else {
            this.$message({
              message: "商品移出购物车失败!,请稍后重试",
              type: "error"
            })
          }
        })
      },
      querySearch(queryString, data) {
        this.restaurants = JSON.parse(localStorage.getItem('searchHistory'))
        let restaurants = this.restaurants;
        let results = queryString ? restaurants.filter(this.createFilter(queryString))
            : restaurants;
        // 调用 callback 返回建议列表的数据
        data(results);
      },
      createFilter(queryString) {
        return (restaurant) => {
          let str=queryString.split('')
          for (let i=0;i<str.length;i++){
            if (restaurant.value.toLowerCase().includes(str[i].toLowerCase())){
              return (restaurant.value.toLowerCase().includes(str[i].toLowerCase()));
            }
          }
        };
      },
      //搜索
      searchProduct() {
        const searchCh = /\S[a-zA-Z\s\d\u4e00-\u9fa5]/;
        if (this.searchContent == '' || !searchCh.test(this.searchContent)) {
          return this.$message({
            message: "请输入正确格式的搜索内容,支持中英文数字",
            type: "warning"
          })
        }
        sessionStorage.setItem("searchContent", this.searchContent);
        this.$router.push({
          path: '/searchShow',
          query: {
            searchContent: this.searchContent
          }
        })
      },
      //删除搜索历史
      removeSearchHistory(value,all){
        if (all){
          localStorage.setItem("searchHistory", JSON.stringify([{value: ""}]))
        }else {
          let searchHistory=JSON.parse(localStorage.getItem("searchHistory"))
          searchHistory.map((item,index)=>{
            if (item.value===value){
              return  searchHistory.splice(index,1)
            }
          })
          localStorage.setItem("searchHistory", JSON.stringify(searchHistory))
        }
        this.restaurants = JSON.parse(localStorage.getItem("searchHistory"))
        setTimeout(()=>{
          this.searchContent=''
        },1)
      }
    },
    created() {
      this.getShoppingCartPreview();
    },
    mounted() {
      //延迟读取 防止searchContent可能还没存入session
      setTimeout(() => {
        this.isCategories = sessionStorage.getItem("searchContent");
      }, 100)
      this.toke = sessionStorage.getItem('token');
      if (!localStorage.getItem("searchHistory")) {
        localStorage.setItem("searchHistory", JSON.stringify([{value: ""}]))
      }
      this.restaurants = JSON.parse(localStorage.getItem("searchHistory"))
    }
  }
</script>

<style scoped>
  .product_categories {
    float: left;
    position: absolute;
    bottom: -100%;
    left: 14%
  }

  .cart_preview_product_name {
    font-size: 13px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }

  .cart_preview_product_name:hover {
    color: #409EFF;
  }

  .logo {
    width: 150px;
    height: 50px;
  }

  .navigation_span {
    margin-right: 20px;
    font-size: 16px;
    font-weight: 600;

  }

  .cart {
    width: 15px;
    height: 15px
  }

  .item {
    margin-right: 30px;
  }

  a:hover {
    color: #e1251b;
  }
</style>