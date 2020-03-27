<template>
  <el-container>
    <el-header>
      <Header/>
    </el-header>
    <el-main>
      <el-row>
        <el-col :span="16" :push="4">
          <el-card>
            <div style="margin-top: 5%">
              <h1>支付成功,<span style="color: #409EFF">{{time}}</span> 秒后跳转首页</h1>
            </div>
            <div style="padding: 8% 0 3%">
              <el-button type="primary" style="margin-right: 4%" @click="goHome">去首页</el-button>
              <el-button type="primary" style="margin-left: 2%">查看订单</el-button>
            </div>

          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  export default {
    name: "ordersComplete",
    data(){
      return{
        time:5,
        timer:0,
      }
    },
    methods:{
      //去首页
      goHome(){
        clearTimeout(this.timer);
        this.$router.push({
          path:"/"
        })
      },
      //倒计时
      countdown(){
        clearTimeout(this.timer);
        this.timer=setInterval(()=>{
          if (this.time==1){
            this.time=5
            this.goHome();
          }else {
            this.time--;
          }
        },1000)
      }
    },
    created() {
      this.countdown();
    },
    destroyed() {
      clearTimeout(this.timer);
    }
  }
</script>

<style scoped>

</style>