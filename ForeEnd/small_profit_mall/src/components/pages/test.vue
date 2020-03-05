<template>
  <el-button type="primary" @click="GetCode" :disabled="!BtnStatus">
    {{BtnStatus?'获取验证码':`${countDownTime}秒后获取`}}
  </el-button>
</template>

<script>
  export default {
    data () {
      return {
        BtnStatus: true,
        countDownTime: 60
      }
    },
    methods: {
      GetCode () {
        let endMsRes = (new Date()).getTime() + 60000;
        //Setitem 为封装 localStoryge 方法
        sessionStorage.setItem('myEndTime', JSON.stringify(endMsRes));
		    this.codeCountDown(endMsRes)
      },
      codeCountDown ( endMsRes) {
        this.BtnStatus = false;
        this.countDownTime= Math.ceil((endMsRes - (new Date()).getTime()) / 1000)
        let time = setTimeout(() => {
          this.countDownTime--
          if (this.countDownTime< 1) {
            this.BtnStatus = true
            this.countDownTime= 60
            clearTimeout(time)
          } else {
            this.codeCountDown(endMsRes)
          }
        }, 1000)
      }
    },
    created () {
      let myEndTime= sessionStorage.getItem('myEndTime')
      this.codeCountDown(myEndTime)
    }
  }
</script>

<style scoped>
</style>