<template>
  <ul >
      <!-- 商品分类-->
      <li v-for="(Categories,index) in CategoriesList" :key="Categories.product_primary_id" >
        <el-popover
            placement="right"
            width="840"
            trigger="hover"
            @mouseenter.native="enter(index)">
          <el-table :data="CategoryDetailsList" style="width: 100%;font-size: 11px; "
                    :show-header="false">
            <el-table-column width="90">
              <template slot-scope="Category">
                {{Category.row.secondary_content}}
              </template>
            </el-table-column>
            <el-table-column width="720">
              <template slot-scope="Category">
                <router-link v-for="categoryC in Category.row.productFinalCategories"
                             style="margin: 0 1.2rem"
                             :to="{path:'/searchShow',query:{searchContent:categoryC.final_content}}">
                  {{categoryC.final_content}}
                </router-link>
              </template>
            </el-table-column>
          </el-table>
          <el-button type="text" size="small" style="font-size: 14px;" slot="reference">
            <router-link  v-for="(MCategories,index) in Categories.category_content" :to="{path:'/searchShow',query:{searchContent:MCategories}}">
              {{MCategories}}
              <span style="margin: 0 .3rem 0 .15rem" v-if="index+1!==Categories.category_content.length">/</span>
            </router-link>
          </el-button>
        </el-popover>
        <br v-if="Categories.sign"/>
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
        //分类详细列表
        CategoryDetailsList: [],
      }
    },
    methods: {
      //获取分类列表
      getCategoriesList() {
        homeApi.getCategoriesList().then(res => {
          if (res.success) {
            this.CategoriesList= res.queryResult.list;
          }
        })
      },
      enter(index) {
        this.CategoryDetailsList=[];
        this.CategoriesList[index].productSecondaryCategories.map(item=>{
          this.CategoryDetailsList.push(item)
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
