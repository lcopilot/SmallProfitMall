<template>
    <ul>
      <!-- 商品分类-->
      <li v-for="Categories in CategoriesList" :key="Categories.nid">
        <el-popover
            placement="right"
            width="840"
            trigger="hover"
            @mouseenter.native="enter(Categories.nid)">
          <el-table :data="CategoryDetailsList" style="width: 100%;font-size: 11px; "
                    :show-header="false">
            <el-table-column prop="classificationHeader" width="90">
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_1"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_1}}">
                  {{Category.row.classifyName_1}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_2"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_2}}">
                  {{Category.row.classifyName_2}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_3"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_3}}">
                  {{Category.row.classifyName_3}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_4"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_4}}">
                  {{Category.row.classifyName_4}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_5"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_5}}">
                  {{Category.row.classifyName_5}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_6"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_6}}">
                  {{Category.row.classifyName_6}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_7"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_7}}">
                  {{Category.row.classifyName_7}}
                </router-link>
              </template>
            </el-table-column>
            <el-table-column width="90">
              <template slot-scope="Category">
                <router-link v-if="Category.row.classifySite_8"
                             :to="{path:'/searchShow',query:{searchContent:Category.row.classifyName_8}}">
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

</template>

<script>
  import * as homeApi from "../../api/page/home";

  export default {
    name: "productCategories",
    data() {
      return {
        //分类列表
        CategoriesList: [],
        CategoriesLists: [],
        //分类详细列表
        CategoryDetailsList: [],
      }
    },
    methods: {
      //获取分类列表
      getCategoriesList() {
        homeApi.getCategoriesList().then(res => {
          if (res.success) {
            this.CategoriesList = res.queryResult.list[0].navigations[0];
            this.CategoriesLists = res.queryResult.list[0];
          }
        })
      },
      enter(nid) {
        this.CategoryDetailsList = [];
        this.CategoriesLists.navigationClassify[0].forEach((Categories, index) => {
          if (Categories.nid == nid) {
            this.CategoryDetailsList.push(this.CategoriesLists.navigationClassify[0][index]);
          }
        })
      },
    },
    beforeMount() {
        this.getCategoriesList();
    }
  }
</script>

<style scoped>

</style>