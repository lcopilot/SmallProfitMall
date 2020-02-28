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
    <el-footer>SmallProfit @2020</el-footer>
  </el-container>

</template>
<script>


  export default {
    name: "Footer",
    data() {
      return {
        imageList:[
          {img:"http://img.fhxasdsada.xyz/20200228180251.png"},
          {img:"http://img.fhxasdsada.xyz/20200228180257.png"},
          {img:"http://img.fhxasdsada.xyz/20200228180304.png"},
          {img:"http://img.fhxasdsada.xyz/20200228180304.png"},
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
