<template>
  <div style="width: 418px;height: 418px">

    <div class="pic-box"> <!--pic-box:width:500px;height:500px-->
      <pic-zoom :url="url" :scale="3"></pic-zoom>
    </div>
    <div style="width: 100px;height: 100px;display: inline-block;margin-right: 4px" v-for="(img,index) in imgList" @mouseenter="enter(index)">
        <el-image :src="img.img"></el-image>
    </div>
  </div>

</template>

<script>
  import PicZoom from 'vue-piczoom'

  export default {
    name: "test",
    components: {PicZoom},
    data(){
      return{
        show2:true,
        url:'http://img.fhxasdsada.xyz/O1CN01PweeQr22AEJuIJv81_%21%211917047079.png_430x430q90.png',
        imgList:[
          {img:'http://img.fhxasdsada.xyz/O1CN01jRWwWw22AEIAVOrqe_%21%211917047079.jpeg_430x430q90.png'},
          {img:'http://img.fhxasdsada.xyz/O1CN01gDQHPJ22AEDl61L9W_%21%211917047079.jpg_430x430q90.jpg'},
          {img:'http://img.fhxasdsada.xyz/O1CN01aVSHBx22AEJy0gFkG_%21%212-item_pic.png_430x430q90.png'},
          {img:'http://img.fhxasdsada.xyz/O1CN01PweeQr22AEJuIJv81_%21%211917047079.png_430x430q90.png'}
        ],
      }
    },
    methods:{
      enter(index){
        this.url=this.imgList[index].img;
      }
    }
  }
</script>

<style scoped>

</style>