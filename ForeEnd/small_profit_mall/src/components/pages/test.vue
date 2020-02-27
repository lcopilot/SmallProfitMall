<template>
  <div>
    <el-button @click="show2=!show2">动画</el-button>
    <transition name="fade">

      <div v-show="show2" >
        ---------------------------------------
        ---------------------------------------
        ---------------------------------------
        ---------------------------------------
      </div>
    </transition>
  </div>

</template>

<script>
  export default {
    name: "test",
    data(){
      return{
        show2:true,
      }
    }
  }
</script>

<style scoped>

</style>