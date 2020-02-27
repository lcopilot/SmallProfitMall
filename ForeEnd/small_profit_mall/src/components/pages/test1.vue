<template>
  <count-down v-on:start_callback="countDownS_cb(1)"
              v-on:end_callback="countDownE_cb(1)"
               :startTime="startTime" :endTime="endTime"
              :tipText="'距离开始还有'"
              :tipTextEnd="'距离结束还有'"
              :endText="'来晚啦,已经结束'"
              :dayTxt="'天'"
              :hourTxt="'小时'" :minutesTxt="'分钟'" :secondsTxt="'秒'">
  </count-down>
</template>

<script>
  import CountDown from '../UtilsComponent/vue2-countdown'

  export default {
    data() {
      return {
        startTime: new Date('2020/2/25 16:00:00').getTime(), //剩余开始时间
        endTime: new Date('2020/2/25 18:50:00').getTime(), //剩余结束时间
      }
    },
    methods: {
      countDownS_cb(value) {
        console.log('callBack--' + value + '--开始倒计时结束回调');
      },
      countDownE_cb(value) {
        console.log('callBack--' + value + '--活动剩余倒计时结束回调');
        if (this.endTime <= 0) {
          return
        }
      }
    },
    components: {CountDown}
  }
</script>
<style scoped>


</style>