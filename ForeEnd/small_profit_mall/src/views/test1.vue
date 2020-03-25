<template>
  <div id="box">
    <div class="box" v-infinite-scroll="load" :infinite-scroll-disabled="busy"
         :infinite-scroll-distance="1" :infinite-scroll-delay="2000" >
      <ul class="list" >
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
    data() {
      return {
        busy: false,
        pageSize: 0,
        list: [],
        loading: false,
        count: 0,//起始页数值为0
        totalPages: "",//取后端返回内容的总页数
      };
    },
    computed: {
    },
    created() {
      this.getMessage();
    },
    methods: {
      load() {
        //滑到底部时进行加载
        this.pageSize++; //页数+1
          this.getMessage(); //调用接口，此时页数+1，查询下一页数据
      },
      getMessage() {
        this.busy = true;
        this.pageSize++;
        this.loading=true;
        this.axios.get(
            "apiUrl/TestController/Test/" + this.pageSize
        )
        .then(res => {
          console.log(res);
          this.list = this.list.concat(res.data.queryResult.list); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
          this.loading = false;
        })
        .catch(err => {
          console.log(err);
        });
      }
    }
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
