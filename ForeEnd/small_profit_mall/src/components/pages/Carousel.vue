<template>
  <el-container>
    <el-header>
      <Search/>
    </el-header>
    <el-main>
      <el-row type="flex" class="row-bg" justify="center" :gutter="20">
        <el-col :span="5">
          <el-popover
              placement="right"
              width="400"
              trigger="hover">
            <el-table>
              <el-table-column width="150" property="date" label="日期"></el-table-column>
              <el-table-column width="100" property="name" label="姓名"></el-table-column>
              <el-table-column width="300" property="address" label="地址"></el-table-column>
            </el-table>
            <el-button type="text" size="small" @click="del()" slot="reference"><router-link to="/login">电器 / </router-link></el-button>
          </el-popover><el-popover
              placement="right"
              width="400"
              trigger="click">
            <el-table >
              <el-table-column width="150" property="date" label="日期"></el-table-column>
              <el-table-column width="100" property="name" label="姓名"></el-table-column>
              <el-table-column width="300" property="address" label="地址"></el-table-column>
            </el-table>
            <el-button type="text" size="small" @click="del()" slot="reference"><router-link to="/login">电器 / </router-link></el-button>
          </el-popover>
        </el-col>
        <el-col :span="7">
          <div>

          </div>
        </el-col>
        <el-col :span="3">
          <div>

          </div>
          <div>

          </div>
          <div>

          </div>
        </el-col>
        <el-col :span="4">
          <div>

          </div>
        </el-col>
      </el-row>
    </el-main>
  </el-container>
</template>

<script>
  import Search from "./Search";

  export default {
    name: "Carousel",
    components: {Search},
  }
</script>

<style scoped>

</style>