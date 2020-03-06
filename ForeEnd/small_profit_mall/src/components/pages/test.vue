<template>
  <vaptcha @success="login" ></vaptcha>
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