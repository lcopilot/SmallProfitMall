<template>
  <el-main>
    <el-row type="flex" class="row-bg" justify="center" gutter="20">
      <el-col :span="4">
        <router-link to="/">
          <img src="../../assets/images/logo.png" class="logo">
        </router-link>
      </el-col>
      <el-col :span="8">
        <el-input v-model="searchContent" style="width: 85%" clearable placeholder="请输入内容"
                  prefix-icon="el-icon-search"></el-input>
        <el-button>搜索</el-button>
      </el-col>
      <el-col :span="4">
sdfs
      </el-col>
      <el-col :span="2">
fds
      </el-col>
    </el-row>
  </el-main>
</template>

<script>
  export default {
    name: "Search",
    data(){
      return{
        searchContent:'',
      }
    }
  }
</script>

<style scoped>
  .logo{
    width:150px;
    height:50px ;
  }
</style>