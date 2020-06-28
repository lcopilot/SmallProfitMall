<template>
  <el-container>
    <el-header height="80px">
      <div v-if="searchContent"
           style="text-align: left;font-size: 24px;font-weight: 600;margin:1% 0 0 10%">
        关键词:'{{searchContent}}'
      </div>
      <div v-if="!searchContent">
        ——————
        <svg-icon name="Love"></svg-icon>
        ——————
        <h3>为你推荐</h3>
        ——————
      </div>
    </el-header>
    <el-main>
      <el-row>
        <el-col :span="19" :push="2">
          <div style="width: 1208px;position:relative;">
            <el-card shadow="hover" class="recommended_products_card"
                     v-for="(productsFeatured ,index) in productsFeaturedList"
                     :key="productsFeatured.id" @mouseenter="enterProduct(index)" @mouseout="shiftOutFavorite(index)">
              <div style="position: relative;" @mouseenter="enterProduct(index)">
                <router-link :to="{path: '/product', query: {productId:productsFeatured.productId}}"
                             :title="productsFeatured.productName">
                  <el-image fit="fit" :src="productsFeatured.imageSite"
                            :lazy="true"/>
                  <div class="recommended_products_name">
                    <span v-text="productsFeatured.productName"></span>
                    <div>
                      <span
                          class="recommended_products_price"
                          v-text="'￥'+productsFeatured.productPrice"/>
                    </div>
                  </div>
                </router-link>
                  <div @mouseenter="enterFavorite(index)" v-show="productsFeatured.favorite==1"
                       v-cloak
                       class="recommended_products_favorite">
                    <svg-icon name="Uncollected"/>
                  </div>
                  <div class="recommended_products_favorite" v-show="productsFeatured.favorite==2"
                       v-cloak
                       @click="addFavorite(productsFeatured.productId)"
                       @mouseout="shiftOutFavorite(index)">
                    <svg-icon name="Favorite"></svg-icon>
                  </div>
                <div class="recommended_products_Cart">
                  <svg-icon name="pageViews"></svg-icon>
                  <div style="margin:-31px -60px 0 0;color: #999999">
                    {{productsFeatured.productPageviews>999?'999+':productsFeatured.productPageviews}}
                  </div>
                </div>
                <div class="recommended_products_hot" v-if="productsFeatured.hot==1">
                  <svg-icon name="hot"></svg-icon>
                </div>
              </div>
            </el-card>
          </div>
          <div style="text-align: right;padding: 3% 0 1% 0" v-if="searchContent">
            <el-pagination
                background
                @size-change="changeNumber"
                @current-change="changePage"
                :current-page="searchParams.currentPage"
                :page-sizes="[20,25,30,45]"
                :page-size="searchParams.pageSize"
                layout="total, sizes, prev, pager, next, jumper"
                :hide-on-single-page="true"
                :total="searchParams.totalCount">
            </el-pagination>
          </div>
        </el-col>
      </el-row>
    </el-main>

  </el-container>
</template>

<script>
  import *as homeApi from '../../api/page/home'
  import * as userApi from "../../api/page/user";

  export default {
    inject: ["reload"],
    name: "ProductsFeatured",
    data() {
      return {
        searchContent: '',
        productsFeaturedList: [],
        searchParams: {
          currentPage: 1,//页码
          pageSize: 30,//每页显示个数
          totalCount: 0,//总记录数
          totalPage: 1,//总页数
        },
      }
    },
    methods: {
      //图标变换
      enterProduct(index) {
        this.productsFeaturedList[index].favorite = 1;
      },
      enterFavorite(index) {
        setTimeout(()=>{
          this.productsFeaturedList[index].favorite = 2;
        },30)
      },
      shiftOutFavorite(index) {
        setTimeout(()=>{
          this.productsFeaturedList[index].favorite = 1;
        },30)
      },
      //添加收藏
      addFavorite(productId) {
        if (!sessionStorage.getItem("uId")) {
          this.$message.warning("还没有登录哦~,请先登录吧")
        } else {
          let data = {
            productIds: [],
            userId: sessionStorage.getItem("uId"),
          };
          data.productIds.push(productId);
          userApi.addFavorite(data).then(res => {
            if (res.success) {
              this.$message.success("收藏成功!")
            } else {
              if (res.code == 11111) {
                this.$message({
                  message: "商品已经被收藏,请勿重复收藏"
                })
              }
            }
          })
        }
      },
      //获取商品推荐
      getProductsFeatured() {
        homeApi.getProductsFeatured().then(res => {
              if (res.success) {
                this.productsFeaturedList = res.queryResult.list;
              }
            }
        )
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.searchParams.currentPage = currentPage;
        this.search();
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.searchParams.pageSize = pageSize;
        this.search();
      },
      search(){
        let searchHistory=JSON.parse(localStorage.getItem("searchHistory"));
        searchHistory.map((item,index)=>{
          if (item.value.trim()===this.searchContent.trim()){
            return  searchHistory.splice(index,1)
          }
        })
        let searchHistorys=[]
        searchHistorys.push({value:this.searchContent},...searchHistory)
        localStorage.setItem("searchHistory",JSON.stringify(searchHistorys))
        const params={
          PrimaryContent:this.searchContent,
          currentPage:this.searchParams.currentPage,
          pageSize:this.searchParams.pageSize,
          userId:sessionStorage.getItem("uId")?sessionStorage.getItem("uId"):null
        };
        homeApi.search(params).then(res=>{
          if (res.success){
            this.productsFeaturedList = res.pagination.list;
            this.searchParams.totalPage=res.pagination.totalPage;
            this.searchParams.totalCount=res.pagination.totalCount;
          }
        })
      }
    },
    created() {
      if (!this.$route.query.searchContent) {
        this.searchContent = sessionStorage.getItem("searchContent");
      } else {
        this.searchContent = this.$route.query.searchContent;
        sessionStorage.setItem("searchContent", this.searchContent);
        this.search();
      }
      if (!this.searchContent) {
        this.getProductsFeatured();
      }
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
    transform: scale(1.04);
  }

  .recommended_products_favorite {
    height: 23px;
    overflow: hidden;
    position: absolute;
    top:255px;
    left: 0;
    cursor:pointer;
  }

  .recommended_products_Cart {
    width: 24px;
    height: 24px;
    position: absolute;
    right: 20px;
    top:255px
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