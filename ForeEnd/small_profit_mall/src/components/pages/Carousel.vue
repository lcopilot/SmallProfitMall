<template>
  <el-container>
    <el-header height="100px">
      <search/>
    </el-header>
    <el-main>
      <el-row type="flex" justify="center" :gutter="20">
        <el-col :span="4">
          <el-card style="height: 370px;">
            <ul>
              <!-- 商品分类-->
              <li v-for="Categories in CategoriesList" :key="Categories.nid">
                <el-popover
                    placement="right"
                    width="840"
                    trigger="hover"
                    @mouseenter.native="enter(Categories.nid)">
                  <el-table :data="CategoryDetailsList" style="width: 100%;font-size: 11px;"
                            :show-header="false" @mouseenter.native="enter_table(Categories.nid)">
                    <el-table-column prop="classificationHeader" width="90">
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_1" :to="Category.row.classifySite_1">
                          {{Category.row.classifyName_1}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_2" :to="Category.row.classifySite_2">
                          {{Category.row.classifyName_2}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_3" :to="Category.row.classifySite_3">
                          {{Category.row.classifyName_3}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_4" :to="Category.row.classifySite_4">
                          {{Category.row.classifyName_4}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_5" :to="Category.row.classifySite_5">
                          {{Category.row.classifyName_5}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_6" :to="Category.row.classifySite_6">
                          {{Category.row.classifyName_6}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_7" :to="Category.row.classifySite_7">
                          {{Category.row.classifyName_7}}
                        </router-link>
                      </template>
                    </el-table-column>
                    <el-table-column width="90">
                      <template slot-scope="Category">
                        <router-link v-if="Category.row.classifySite_8" :to="Category.row.classifySite_8">
                          {{Category.row.classifyName_8}}
                        </router-link>
                      </template>
                    </el-table-column>
                  </el-table>
                  <el-button type="text" size="small" style="font-size: 14px" slot="reference">
                    <router-link to="/" v-if="Categories.goodsName_1!=null">
                      {{Categories.goodsName_1}}
                      <span v-if="Categories.goodsName_2!=null"
                            style="margin-right: 5px">/</span>
                    </router-link>
                    <router-link to="/" v-if="Categories.goodsName_2!=null">
                      {{Categories.goodsName_2}}
                      <span v-if="Categories.goodsName_3!=null" style="margin-right: 5px">/</span>
                    </router-link>
                    <router-link to="/" v-if="Categories.goodsName_3!=null">
                      {{Categories.goodsName_3}}
                    </router-link>
                  </el-button>
                </el-popover>
              </li>
            </ul>
          </el-card>
        </el-col>
        <el-col :span="10">
          <el-carousel height="370px">
            <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
              <a>
                <el-image @click="goto(1)" :src="rotationChart.rotationChartOne"/>
              </a>
            </el-carousel-item>
          </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-carousel height="370px" indicator-position="none" :interval="6500">
            <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_1"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_2"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_3"/>
                </a>
              </div>
            </el-carousel-item>
          </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-card class="box-card" style="height: 370px">
            <div slot="header" style="height: 50px">
              <div class="user_avatar_div">
                <img :src="avatar" style="width: 45px; border-radius: 50%;">
              </div>
              <div class="username_div">
                <span v-if="username!=null" class="username_span">
                  <router-link to="/" :title="username">Hi,{{username}}</router-link>
                </span>
                <span v-if="username==null" class="username_span">
                  <router-link to="/login">Hi~欢迎逛微利</router-link>
                </span>
                <span v-if="username!=null">
                  <router-link to="/" title="微利值1564">
                    <svg-icon name="integral" class="icon" style="margin-left: 6px"/>
                  </router-link>
                  <router-link to="/" title="钻石会员">
                    <svg-icon name="member" class="icon"/>
                  </router-link>
                  <router-link to="/login" @click.native="exit">退出</router-link>
                </span>
                <span v-if="username==null">
                  <router-link to="/login">登录 |</router-link>
                  <router-link to="/register" style="margin-left: 5px">注册</router-link>
                </span>
              </div>
            </div>
            <div style="height: 80px;">
              快报区域 预留 height=80
            </div>
            <div style="height: 160px;">
              <div class="CommonFunction"
                   v-for="CommonFunctions in CommonFunctionsList" :key="CommonFunctions.id">
                <router-link :to="CommonFunctions.iconSite">
                  <el-image :src="CommonFunctions.icon" class="CommonFunction_1"></el-image>
                  <div style="font-size: 12px">{{CommonFunctions.iconName}}</div>
                </router-link>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
  </el-container>
</template>

<script>
  const search = () => import("./Search");

  export default {
    name: "Carousel",
    components: {
      search
    },
    data() {
      return {
        rotationCharts: [],
        username: null,
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
        CategoriesList: [],
        CategoriesLists:[],
        CommonFunctionsList: [],
        CategoryDetailsList: [],

      }
    },
    methods: {
      goto(articleId) {
        this.$router.push({
          name: "Login",
          params: {
            id: articleId,
          }
        });
      },
      getRotationChart() {
        this.axios.get("/api/homepageController/findRotationChart")
        .then(res => {
          if (res.data.success) {
            this.rotationCharts = res.data.queryResult.list;
          }
        })
      },
      exit() {
        sessionStorage.clear();
        this.$router.push("/login");
      },
      getCategoriesList() {
        this.axios.get("api/homepageController/navigationInDetail").then(res => {
          if (res.data.success) {
            this.CategoriesList = res.data.queryResult.list[0].navigations[0];
            this.CategoriesLists = res.data.queryResult.list[0];
          }
        })
      },
      getCommonFunctionsList() {
        this.axios.get("api/homepageController/icon").then(res => {
          if (res.data.success) {
            this.CommonFunctionsList = res.data.queryResult.list[0];
          }
        })
      },
      enter(nid) {
        this.CategoryDetailsList = [];
        this.CategoriesLists.navigationClassify[0].forEach((item, index) => {
          if (item.nid == nid) {
            this.CategoryDetailsList.push(this.CategoriesLists.navigationClassify[0][index]);
          }
        })
      },
    },
    created() {
      this.getRotationChart();
      this.getCategoriesList();
      this.getCommonFunctionsList();
      this.username = sessionStorage.getItem("username");
    }
  }
</script>

<style scoped>


  .username_span {
    overflow: hidden;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    white-space: nowrap;
    width: 90px;
    display: block;
  }

  .username_div {
    font-size: 12px;
    float: left;
    width: 80px;
    height: 20px
  }

  .user_avatar_div {
    float: left;
    height: 45px;
    width: 45px;
    margin-left: -10px;
  }

  .icon {
    width: 20px;
    height: 20px;
    margin-right: 5px;
  }

  .CommonFunction {
    float: left;
    margin-left: 3px
  }

  .CommonFunction_1 {
    width: 32px;
    height: 32px
  }


</style>