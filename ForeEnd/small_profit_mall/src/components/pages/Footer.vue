<template>
  <el-container>
    <el-divider/>
    <el-main>
      <el-col :span="19" :push="2">
        <div style="width: 1198px">
          <div style="display: inline-block;width: 290px" v-for="(img,index) in imageList" :key="index">
            <router-link to="/">
              <el-image fit="fill" :src="img.img"/>
            </router-link>
          </div>
        </div>
      </el-col>
    </el-main>
    <el-footer>SmallProfit @2020<br/>微利商城是一家网上综合购物商城，秉承“敢于承诺”的企业理念，为用户提供最为优质的服务。致力于打造方便、快捷、轻松的购物环境，并不断丰富产品种类和更多的购物方式，以满足用户不同的购物需求，通过长时间的努力逐步获得更多的客户的信赖和认同。  </el-footer>
  </el-container>

</template>
<script>


  export default {
    name: "Footer",
    data() {
      return {
        imageList:[
          {img:"http://img.isdfmk.xyz/20200228180251.png"},
          {img:"http://img.isdfmk.xyz/20200228180257.png"},
          {img:"http://img.isdfmk.xyz/20200228180304.png"},
          {img:"http://img.isdfmk.xyz/20200228180304.png"},
        ],
      }
    },

  }
</script>
<style scoped>
footer {
  border-top: 1px solid #ebeef5;
  height: 30px;
  line-height: 30px;
  text-align: center;
  font-size: 13px;
  max-width: 770px;
  margin:0 auto;
  color: #C0C4CC;
  margin-top: 15PX;
}
</style>
