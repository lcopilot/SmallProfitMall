<template>
  <div id="box">
    <div class="box" v-infinite-scroll="load" :infinite-scroll-disabled="disabled">
      <ul class="list">
        <li v-for="(i,index) in list" class="list-item" :key="index">{{ i}}</li>
      </ul>
      <p v-if="loading" style="margin-top:10px;" class="loading">
        <span></span>
      </p>
    </div>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        ws: null,//建立的连接
        lockReconnect: false,//是否真正建立连接
        timeout: 28*1000,//30秒一次心跳
        timeoutObj: null,//心跳心跳倒计时
        serverTimeoutObj: null,//心跳倒计时
        timeoutnum: null,//断开 重连倒计时
      }
    },
    created() {
      let arr=[{"id":2,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利助手","senderAvatar":"http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938","newsStatus":"0","newsId":2,"newsType":1,"contentId":21,"newsTime":"2020-03-30 09:57:35.0","newsContent":"17","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":4,"newsTime":"2020-03-30 09:57:35.0","newsContent":"4","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":19,"newsTime":"2020-03-30 09:57:35.0","newsContent":"27","sign":false,"title":"加油"},{"id":2,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利助手","senderAvatar":"http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938","newsStatus":"0","newsId":2,"newsType":1,"contentId":2,"newsTime":"2020-03-30 09:57:35.0","newsContent":"2","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":17,"newsTime":"2020-03-30 09:57:35.0","newsContent":"28","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":4,"newsTime":"2020-03-30 09:57:35.0","newsContent":"4","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":19,"newsTime":"2020-03-30 09:57:35.0","newsContent":"27","sign":false,"title":"加油"},{"id":2,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利助手","senderAvatar":"http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938","newsStatus":"0","newsId":2,"newsType":1,"contentId":2,"newsTime":"2020-03-30 09:57:35.0","newsContent":"2","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":17,"newsTime":"2020-03-30 09:57:35.0","newsContent":"28","sign":false,"title":"加油"},{"id":1,"userId":"7c9fdfa3177042a08766aed29e7de6cd","senderName":"微利官方","senderAvatar":" http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781","newsStatus":"0","newsId":1,"newsType":1,"contentId":15,"newsTime":"2020-03-30 09:57:35.0","newsContent":"14","sign":false,"title":"加油"}];
      let bb=[];
      arr.forEach((a)=>{
        bb.push(a.contentId);
      })
      console.log(bb)
    },
    methods: {

    },

  };
</script>

<style scoped>
  #box{
    width: 100%;
    height: 100%;
    position: absolute;
    overflow: auto;
  }
  .box {
    width: 100%;
    margin:  0 auto;
  }
  .list {
    padding: 0;
    font-size: 14px;
  }
  .list-item {
    width: 100%;
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    list-style: none;
    padding: 0 1rem;
    box-sizing: border-box;
    height: 70px;
    line-height: 70px;
    border-bottom: 1px solid #e7e7e7;
  }
  .loading span {
    display: inline-block;
    width: 20px;
    height: 20px;
    border: 2px solid #409eff;
    border-left: transparent;
    animation: zhuan 0.5s linear infinite;
    border-radius: 50%;
  }
  @keyframes zhuan {
    0% {
      transform: rotate(0);
    }
    100% {
      transform: rotate(360deg);
    }
  }
</style>
