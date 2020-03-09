<template>
  <el-container>
    <el-header height="80px">
      ——————
      <svg-icon name="Love"></svg-icon>
      ——————
      <h3>为你推荐</h3>
      ——————
    </el-header>
    <el-main>
      <el-row>
        <el-col :span="19" :push="2">
          <div style="width: 1208px;position:relative;">
            <el-card shadow="hover" class="recommended_products_card"
                     v-for="(productsFeatured ,index) in productsFeaturedList"
                     :key="productsFeatured.id" @mouseenter="enterProduct(index)">
              <div style="position: relative;" @mouseenter="enterProduct(index)">
                <router-link :to="{path: '/product', query: {productId:productsFeatured.productId}}">
                  <el-image fit="fit" :src="productsFeatured.imageSite"
                            :lazy="true"/>
                  <div class="recommended_products_name" >
                    <span v-text="productsFeatured.productName"></span>
                    <div>
                      <span
                          class="recommended_products_price" v-text="'￥'+productsFeatured.productPrice"/>
                    </div>
                  </div>
                </router-link>
                <a>
                  <div @mouseenter="enterFavorite(index)" v-show="productsFeatured.favorite==1" v-cloak
                       class="recommended_products_favorite">
                    <svg-icon name="Uncollected"/>
                  </div>
                  <div class="recommended_products_favorite" v-show="productsFeatured.favorite==2" v-cloak
                       @click="favorite()"
                       @mouseout="shiftOutFavorite(index)">
                    <svg-icon name="Favorite"></svg-icon>
                  </div>
                </a>
                <a>
                  <div @mouseenter="enterShoppingTrolley(index)"
                       v-show="productsFeatured.shoppingTrolley==1" v-cloak
                       class="recommended_products_Cart">
                    <svg-icon name="added"/>
                  </div>
                  <div class="recommended_products_Cart" v-show="productsFeatured.shoppingTrolley==2" v-cloak
                       @click="addCart()"
                       @mouseout="shiftOutShoppingTrolley(index)">
                    <svg-icon name="addCart"></svg-icon>
                  </div>
                </a>
                <div class="recommended_products_hot" v-if="productsFeatured.hot==1">
                  <svg-icon name="hot"></svg-icon>
                </div>
              </div>
            </el-card>
          </div>
        </el-col>
      </el-row>
    </el-main>
  </el-container>
</template>

<script>
  import *as homeApi from '../../api/page/home'

  export default {
    name: "ProductsFeatured",
    data() {
      return {
        show2: false,
        productsFeaturedList: [],
      }
    },
    methods: {
      enterProduct(index){
        this.productsFeaturedList[index].favorite = 1;
        this.productsFeaturedList[index].shoppingTrolley = 1;
      },
      enterFavorite(index) {
        this.productsFeaturedList[index].shoppingTrolley = 1;
        this.productsFeaturedList[index].favorite = 2;
      },
      shiftOutFavorite(index) {
        this.productsFeaturedList[index].favorite = 1;
      },
      enterShoppingTrolley(index) {
        this.productsFeaturedList[index].favorite = 1;
        this.productsFeaturedList[index].shoppingTrolley = 2;
      },
      shiftOutShoppingTrolley(index) {
        this.productsFeaturedList[index].shoppingTrolley = 1;
      },
      favorite(ProductId) {
        console.log("sdfs");
      },
      addCart(ProductId) {
        console.log("sdfs");
      },
      //商品推荐
      getProductsFeatured() {
        homeApi.getProductsFeatured().then(res => {
              if (res.success) {
                this.productsFeaturedList = res.queryResult.list[0];
              }
            }
        )
      },
      goProduct(ProductId) {
        this.$router.push({
          path: '/product',
          query: {
            productId: ProductId
          },
        })
      }
    },
    beforeMount() {
      this.getProductsFeatured();
    }
  }
</script>

<style scoped>
  [v-cloak] {
    display: none
  }

  .recommended_products_name {
    margin-top: 7px;
    width: 198px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .recommended_products_price {
    color: red;
    font-weight: 600;
    font-size: 18px
  }

  .recommended_products_card {
    width: 231px;
    height: 310px;
    margin-right: 10px;
    display: inline-block;
  }

  .recommended_products_card:hover {
    transform: scale(1.03);
  }

  .recommended_products_favorite {
    width: 24px;
    height: 24px;
    margin-left: -10px;
    margin-top: -40px;
    position: absolute;
    left: 0;
  }

  .recommended_products_Cart {
    width: 24px;
    height: 24px;
    margin-left: -10px;
    margin-top: -40px;
    position: absolute;
    right: 0;
  }

  .recommended_products_hot {
    width: 24px;
    height: 24px;
    margin-right: -10px;
    margin-top: -12px;
    position: absolute;
    top: 0;
    right: 0;
  }


</style>