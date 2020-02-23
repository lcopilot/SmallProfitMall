<template>
  <el-container>
    <el-header>
      <Search/>
    </el-header>
    <el-main>
      <el-row type="flex" class="row-bg" justify="center" gutter="20">
        <el-col :span="5">
          <div>

          </div>
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