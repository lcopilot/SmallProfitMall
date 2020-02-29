<template>
  <div style="width: 418px;height: 418px">
    <div class="pic-box"> <!--pic-box:width:500px;height:500px-->
      <pic-zoom url="http://img.fhxasdsada.xyz/O1CN01PweeQr22AEJuIJv81_%21%211917047079.png_430x430q90.png" :scale="3"></pic-zoom>
    </div>
  </div>

</template>

<script>
  import PicZoom from 'vue-piczoom'
  export default {
    name: "test",
    components: {
      PicZoom
    },
    data(){
      return{
        show2:true,
      }
    }
  }
</script>

<style scoped>

</style>