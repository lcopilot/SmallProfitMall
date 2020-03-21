<template>
  <div>
    <el-button id="TencentCaptcha"
            data-appid="2093846053"
            data-cbfn="callback"
            type="button"
    >验证</el-button>

  </div>
</template>

<script>
  window.callback = function callback(res){
    console.log(res)
    // res（用户主动关闭验证码）= {ret: 2, ticket: null}
    // res（验证成功） = {ret: 0, ticket: "String", randstr: "String"}
    if(res.ret === 0){
      console.log(res.ticket)   // 票据
    }
  }


  export default {
    name: "test",
    methods:{
      callback(data){
        console.log(data)
        console.log("测试");
      }
    },
    mounted: function () {
      this.captcha = new window.TencentCaptcha('2093846053', function (res) {
        if (res.ret === 0) {
          console.log('asda')
        }
      })
    },
  }
</script>

<style scoped>

</style>