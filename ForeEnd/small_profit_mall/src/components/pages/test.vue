<template>
  <vaptcha @kkkk="aaa"></vaptcha>
</template>

<script>
  const vaptcha = () => import("../UtilsComponent/vaptcha-code");

  export default {
    name: "test",
    components:{vaptcha},
    methods:{
      aaa(){
        console.log("asdkasjkl");
      }
    }
  }
</script>

<style scoped>

</style>