<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="15" :push="3">
          <el-card>
            <div slot="header" style="text-align: left"><h3>收藏</h3></div>
            <div>
              <el-table
                  :data="favoriteList"
                  style="width: 100%"
                  :default-sort="{prop: 'date', order: 'descending'}"
              >
                <el-table-column
                    min-width="60%">
                  <template slot="header">
                    <el-input
                        v-model="searchKeyword"
                        size="mini"
                        style="width: 70%"
                        placeholder="输入关键字搜索" />
                  </template>
                  <template slot-scope="product">
                    <el-row>
                      <el-col :span="8">
                        <div class="favorite_product_img">
                          <router-link
                              :to="{path: '/product', query: {productId:product.row.productId}}">
                            <el-image :src="product.row.imageSite" fit="fill"></el-image>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="16">
                        <el-tooltip class="item" effect="dark" :content="product.row.productName"
                                    placement="bottom">
                          <router-link :to="{path: '/product',query:{productId:product.row.productId}}">
                            <div class="favorite_product_name">
                              {{product.row.productName}}
                            </div>
                          </router-link>
                        </el-tooltip>
                      </el-col>
                    </el-row>
                  </template>
                </el-table-column>
                <el-table-column
                    prop="productPrice"
                    label="价格"
                    sortable
                    min-width="13%">
                </el-table-column>
                <el-table-column
                    prop="evaluationTime"
                    label="时间"
                    sortable
                    min-width="14%">
                  <template slot-scope="evaluationTime">
                    <span>{{moment(evaluationTime.row.evaluationTime).format('YYYY-MM-DD')}}</span>
                  </template>
                </el-table-column>
                <el-table-column
                    align="right"
                    min-width="13%"
                >
                  <template slot="header">
                    <el-button
                        type="primary"
                        size="small"
                        @click="removeFavorite()">全部移除
                    </el-button>
                  </template>
                  <template slot-scope="product">
                    <el-button
                        style="margin-right: 40%"
                        type="text"
                        @click="removeFavorite(product.row.evaluationId)">移除
                    </el-button>
                  </template>
                </el-table-column>
              </el-table>
            </div>
            <div class="favorite_product_pag">
              <el-pagination
                  background
                  @size-change="changeNumber"
                  @current-change="changePage"
                  :current-page="favoriteParams.currentPage"
                  :page-sizes="[5,7, 8, 10]"
                  :page-size="favoriteParams.pageSize"
                  layout="total, sizes, prev, pager, next, jumper"
                  :hide-on-single-page="true"
                  :total="favoriteParams.totalCount">
              </el-pagination>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  import * as userApi from "../../api/page/user";
  const personalPage = () => import("../../components/admin/PersonalHubPage");

  export default {
    name: "favorite",
    components: {personalPage},
    data() {
      return {
        //收藏分页参数
        favoriteParams: {
          currentPage: 1,//页码
          pageSize: 5,//每页显示个数
          totalCount: 0,//总记录数
          totalPage: 1,//总页数
        },
        //搜索关键词
        searchKeyword: '',
        favoriteList: [
          {
            evaluationId:1,
            productId:10001,
            imageSite: 'http://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg',
            productPrice:"982.00",
            productName: "fsdfsdfsd水电费水电费上课的痕迹圣诞快乐可能是打飞机SDK人生苦短金黄色的岁的女孩将斯柯达纳税人对话框式登录圣诞快乐黄金时代ds",
            evaluationTime: "2020-9-8",
          },
        ],
      }
    },
    methods: {
      //删除收藏
      removeFavorite(evaluationId){
        const params={
          userId:sessionStorage.getItem("uId"),
          evaluationId:evaluationId,
          deleteAll:false
        };
        if (evaluationId==null){
          params.deleteAll=true
          params.evaluationId=null
        }
        userApi.deleteFavorite(params).then(res=>{
          if (res.success){
            this.$message({
              message:"已移除收藏",
              type:"success"
            })
            this.getFavorite();
          }
        })
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.favoriteParams.currentPage = currentPage;
        this.getFavorite();
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.favoriteParams.pageSize = pageSize;
        this.getFavorite();
      },
      getFavorite() {
        if (this.favoriteParams.currentPage!=1 && this.favoriteParams.currentPage==this.favoriteParams.totalPage && (((this.favoriteParams.currentPage-1)*this.favoriteParams.pageSize)+1)===this.favoriteParams.totalCount){
          this.favoriteParams.currentPage--;
        }
        const params={
          userId:sessionStorage.getItem("uId"),
          currentPage:this.favoriteParams.currentPage,
          pageSize:this.favoriteParams.pageSize
        };
        userApi.getFavorite(params).then(res=>{
          if (res.success){
            this.favoriteList=res.pagination.list;
            this.favoriteParams.totalPage=res.pagination.totalPage;
            this.favoriteParams.totalCount=res.pagination.totalCount;
          }
        })
      }
    },
    mounted() {
      this.getFavorite();
    }
  }
</script>

<style scoped>
  .favorite_product_name {
    font-size: 14px;
    padding-right: 10%;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }

  .favorite_product_img {
    height: 20%;
    width: 30%;
    margin-left: 30%
  }

  .favorite_product_pag {
    text-align: right;
    padding: 3% 0 1% 0
  }
</style>