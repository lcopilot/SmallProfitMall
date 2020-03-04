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
                     v-for="(productsFeatured ,index) in productsFeaturedList" :key="productsFeatured.id">
              <div style="position: relative;">
                <router-link to="/"
                             :title="productsFeatured.productName">
                  <el-image fit="fit" :src="productsFeatured.productPicture"
                            :lazy="true"/>
                  <div class="recommended_products_name">
                    {{productsFeatured.productName}}
                    <div>
                      <span class="recommended_products_price">￥{{productsFeatured.productPrice}}</span>
                    </div>
                  </div>
                </router-link>
                <a>
                  <div @mouseenter="enterFavorite(index)" v-if="productsFeatured.favorite==1"
                       class="recommended_products_favorite">
                    <svg-icon name="Uncollected"/>
                  </div>
                  <div class="recommended_products_favorite" v-if="productsFeatured.favorite==2" @click="favorite()"
                       @mouseout="shiftOutFavorite(index)">
                    <svg-icon name="Favorite"></svg-icon>
                  </div>
                </a>
                <a>
                  <div @mouseenter="enterShoppingTrolley(index)" v-if="productsFeatured.shoppingTrolley==1"
                       class="recommended_products_Cart">
                    <svg-icon name="added"/>
                  </div>
                  <div class="recommended_products_Cart" v-if="productsFeatured.shoppingTrolley==2" @click="addCart()"
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
  export default {
    name: "ProductsFeatured",
    data() {
      return {
        show2: false,
        productsFeaturedList: [],
      }
    },
    methods: {
      enterFavorite(index) {
        this.productsFeaturedList[index].favorite=2;
      },
      shiftOutFavorite(index) {
        this.productsFeaturedList[index].favorite=1;
      },
      enterShoppingTrolley(index){
        this.productsFeaturedList[index].shoppingTrolley=2;
      },
      shiftOutShoppingTrolley(index){
        this.productsFeaturedList[index].shoppingTrolley=1;
      },
      favorite(ProductId) {
        console.log("sdfs");
      },
      addCart(ProductId) {
        console.log("sdfs");
      },
      getProductsFeatured() {
        this.axios.get("/api/CommodityController/Recommend").then(res => {
              if (res.data.success) {
                this.productsFeaturedList = res.data.queryResult.list[0];
              }
            }
        )
      }
    },
    created() {
      this.getProductsFeatured();
    }
  }
</script>

<style scoped>
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
    transform: scale(1.06);
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