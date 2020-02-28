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
                     v-for="(o, index) in 50" :key="index">
              <div style="position: relative;">
                <router-link to="/"
                             title="联想ThinkPad 翼480（1ACD）英特尔酷睿i7 14英寸轻薄笔记本电脑(i7-8550U 8G 128GSSD+1T 2G独显 FHD)冰原银">
                  <el-image fit="fit" src="http://img.fhxasdsada.xyz/0e741b5c4358dbea.jpg" :lazy="true" />
                  <div class="recommended_products_name">
                    联想ThinkPad 翼480（1ACD）英特尔酷睿i7 14英寸轻薄笔记本电脑(i7-8550U 8G 128GSSD+1T 2G独显 FHD)冰原银
                    <div>
                      <span class="recommended_products_price">￥18956.00</span>
                    </div>
                  </div>
                </router-link>
                <a>
                  <div @mouseenter="enter(1)" v-show="!show2"
                       class="recommended_products_favorite">
                    <svg-icon name="Uncollected"/>
                  </div>
                  <div class="recommended_products_favorite" v-show="show2" @click="favorite()"
                       @mouseout="shiftOut(1)">
                    <svg-icon name="Favorite"></svg-icon>
                  </div>
                </a>
                <a>
                  <div @mouseenter="enter(1)" v-show="!show2"
                       class="recommended_products_Cart">
                    <svg-icon name="added"/>
                  </div>
                  <div class="recommended_products_Cart" v-show="show2" @click="addCart()"
                       @mouseout="shiftOut(1)">
                    <svg-icon name="addCart"></svg-icon>
                  </div>
                </a>
                <div class="recommended_products_hot">
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
      }
    },
    methods: {
      enter(index) {
        this.show2 = true;
      },
      shiftOut(index) {
        this.show2 = false;
      },
      favorite(ProductId) {
        console.log("sdfs");
      },
      addCart(ProductId) {
        console.log("sdfs");
      },
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
    display: inline-block
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