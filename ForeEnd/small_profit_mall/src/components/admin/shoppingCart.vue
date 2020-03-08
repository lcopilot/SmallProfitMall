<template>
  <el-container>
    <el-header>
      <Header/>
    </el-header>
    <el-main>
      <search/>
      <el-row :gutter="10">
       <el-col :span="12" :push="3" style="margin-top: 50px">
         <el-table
             ref="multipleTable"
             :data="tableData"
             tooltip-effect="dark"
             style="width: 100%"
             @select="kkk"
             >
           <el-table-column
               type="selection"
               width="55">
           </el-table-column>
           <el-table-column
               prop="price"
               label="日期"
               sortable
               width="180"
               column-key="date"
               :filters="[{text: '500', value: 500}, {text: '100', value: 100}, {text: '300', value: 300}, {text: '1000', value: 1000}]"
               :filter-method="filterHandler"
           >
           </el-table-column>
           <el-table-column
               prop="name"
               label="姓名"
               width="120">
           </el-table-column>
           <el-table-column
               prop="address"
               label="地址"
               show-overflow-tooltip>
           </el-table-column>
         </el-table>
       </el-col>
      </el-row>

    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  const search = () => import("../pages/Search");
  const Header = () => import("../pages/Header"); //组件懒加载
  const Footer = () => import("../pages/Footer");

  export default {
    name: "shoppingCart",
    components: {search,Header, Footer},
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          price:225,
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-04',
          price:2856,
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-01',
          price:25,
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-03',
          price:500,
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }]
      }
    },
    methods: {
      tableRowClassName({row, rowIndex}) {
        if (rowIndex === 1) {
          return 'warning-row';
        } else if (rowIndex === 3) {
          return 'success-row';
        }
        return '';
      },
      filterHandler(value, row, column) {
        const property = column['property'];
        return row[property] === value;
      },
      kkk(selection, row){
        console.log(selection)
        console.log(row)
      }
    },


  }
</script>

<style scoped>
  .el-table .warning-row {
    background: oldlace;
  }

  .el-table .success-row {
    background: #f0f9eb;
  }
</style>