<template>
  <div>
    <div v-for="item in 10">

      <el-row>
        <el-col :span="22">
          <div v-for="item in 10"> {{item}}</div>
          {{item}}
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
  const vaptcha = () => import("../UtilsComponent/vaptcha-code");

  export default {
    name: "test",
    components:{vaptcha},
    methods:{
      login(data){
        console.log(data)
        console.log("测试");
      }
    }
  }
</script>

<style scoped>

</style>