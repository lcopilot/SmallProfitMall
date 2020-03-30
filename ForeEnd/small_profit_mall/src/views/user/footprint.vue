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
            <div slot="header" style="text-align: left"><h3>足迹</h3></div>
            <div>
              <el-table
                  :data="footprintList"
                  style="width: 100%"
                  :default-sort="{prop: 'date', order: 'descending'}"
              >
                <el-table-column
                    width="460">
                  <template slot="header">
                    <el-input
                        v-model="searchKeyword"
                        size="mini"
                        style="width: 70%"
                        placeholder="输入关键字搜索"/>
                  </template>
                  <template slot-scope="product">
                    <el-row>
                      <el-col :span="8">
                        <div class="footprintList_product_img">
                          <router-link
                              :to="{path: '/product', query: {productId:product.row.productId}}">
                            <el-image :src="product.row.imageSite" fit="fill"></el-image>
                          </router-link>
                        </div>
                      </el-col>
                      <el-col :span="16">
                        <el-tooltip class="item" effect="dark" :content="product.row.productName"
                                    placement="bottom">
                          <router-link
                              :to="{path: '/product',query:{productId:product.row.productId}}">
                            <div class="footprintList_product_name">
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
                    width="100">
                </el-table-column>
                <el-table-column
                    prop="frequency"
                    label="浏览量"
                    sortable
                    width="100">
                </el-table-column>
                <el-table-column
                    prop="footprintTime"
                    label="时间"
                    sortable
                    width="120">
                </el-table-column>
                <el-table-column
                    align="right"
                    width="100"
                >
                  <template slot="header" slot-scope="scope">
                    <el-button
                        type="primary"
                        size="small"
                        @click="removeFootprint()">全部移除
                    </el-button>
                  </template>
                  <template slot-scope="product">
                    <div>
                      <div>
                        <el-button
                            class="footprintList_product_btn"
                            type="text"
                            @click="addFavorite(product.row.productId)">收藏
                        </el-button>
                      </div>
                      <div>
                        <el-button
                            class="footprintList_product_btn"
                            type="text"
                            @click="removeFootprint(product.row.footprintId)">移除
                        </el-button>
                      </div>
                    </div>
                  </template>
                </el-table-column>
              </el-table>
            </div>
            <div style="text-align: right;padding: 3% 0 1% 0">
              <el-pagination
                  background
                  @size-change="changeNumber"
                  @current-change="changePage"
                  :current-page="footprintParams.currentPage"
                  :page-sizes="[6,7, 8, 10, 12,15]"
                  :page-size="footprintParams.pageSize"
                  layout="total, sizes, prev, pager, next, jumper"
                  :hide-on-single-page="true"
                  :total="footprintParams.totalCount">
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

  const personalPage = () => import("../../components/admin/personalHubPage");

  export default {
    name: "footprint",
    components: {personalPage},
    data() {
      return {
        //足迹分页参数
        footprintParams: {
          currentPage: 1,//页码
          pageSize: 6,//每页显示个数
          totalCount: 400,//总记录数
          totalPage: 1,//总页数
        },
        //搜索关键词
        searchKeyword: '',
        footprintList: [
          {
            footprintId:1,
            productId:10001,
            imageSite: 'http://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg',
            productPrice:"982.00",
            frequency: 2,
            productName: "fsdfsdfsd水电费水电费上课的痕迹圣诞快乐可能是打飞机SDK人生苦短金黄色的岁的女孩将斯柯达纳税人对话框式登录圣诞快乐黄金时代ds",
            footprintTime: "2020-9-8",
          },
          {
            imageSite: 'http://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg',
            productPrice:"152.00",
            frequency: 10,
            productName: "fsdfds",
            footprintTime: "2020-1-8",
          },
          {
            imageSite: 'http://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg',
            productPrice:"12.00",
            frequency: 0,
            productName: "fsdfds",
            footprintTime: "2020-5-8",
          },
          {
            imageSite: 'http://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg',
            productPrice:"18.00",
            frequency: 80,
            productName: "fsdfds",
            footprintTime: "2020-9-8",
          },
        ],
      }
    },
    methods: {
      //删除足迹
      removeFootprint(footprintId){

      },
      //添加收藏
      addFavorite() {
        if (!sessionStorage.getItem("uId")) {
          this.$message.warning("还没有登录哦~,请先登录吧")
        } else {
          let data = {
            productIds: [],
            userId: sessionStorage.getItem("uId"),
          };
          data.productIds.push(this.productId);
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
      //切换评论分页时触发
      changePage(currentPage) {
        this.footprintParams.currentPage = currentPage;
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.footprintParams.pageSize = pageSize;
      }
    }
  }
</script>

<style scoped>
  .footprintList_product_name {
    font-size: 14px;
    padding-right: 10%;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }

  .footprintList_product_img {
    height: 40%;
    width: 40%;
    margin-left: 30%
  }

  .footprintList_product_btn {
    margin-right: 40%;
    font-size: 13px
  }
</style>