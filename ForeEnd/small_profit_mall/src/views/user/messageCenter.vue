<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="16" :push="3">
          <el-card class="message">
            <el-row>
              <el-col :span="7">
                <div style="height: 50px">
                </div>
                <div class="contact_list_div message_list" v-infinite-scroll="getMessageList"
                     :infinite-scroll-disabled="messageDisable"
                     :infinite-scroll-distance="1">
                  <ul>
                    <li v-for="i in list">{{i}}</li>
                  </ul>
                </div>
              </el-col>
              <el-col :span="17" class="message_content_div">
                <div class="message_list_div message_list">
                  <el-card>
                    sss
                  </el-card>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  const Header = () => import("../../components/pages/Header"); //组件懒加载
  const Footer = () => import("../../components/pages/Footer");
  const personalPage = () => import("../../components/admin/personalHubPage");
  const orderContent = () => import("../../components/admin/orderContent");
  export default {
    name: "messageCenter",
    components: {Header, Footer, personalPage, orderContent},
    data() {
      return {
        messageDisable: false,
        pageSize: 0,
        list: [],
        loading:false,
        timer:0,
      }
    },
    methods: {
      aa(){

      },
      getMessageList() {
          this.messageDisable = true;
          this.loading = true;
          this.pageSize++;
          clearTimeout(this.timer);
          this.axios.get(
              "apiUrl/TestController/Test/" + this.pageSize
          )
          .then(res => {
            console.log(res);
            this.list = this.list.concat(res.data.queryResult.list); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
          })
        this.calf();
        this.messageDisable = false;
      },
      calf(){
        this.timer=setTimeout(()=>{
          this.loading = false;
        },2000)
      }
    }
  }
</script>

<style scoped>
  .message_content_div {
    height: 570px;
    background-color: #f5f6f7;
    padding: 20px
  }

  .message /deep/ .el-card__body {
    padding: 0;
  }

  .contact_list_div {
    position: relative;
    height: 520px;
    border-right: 1px solid #e6e6e6;
  }

   .message_list_div {
    background-color: Transparent;
  }

  .message_list {
    max-height: 570px;
    overflow: auto;
  }

  /**
　　1、::-webkit-scrollbar 定义了滚动条整体的样式；
   2、::-webkit-scrollbar-thumb 滑块部分；
　 3、::-webkit-scrollbar-thumb 轨道部分；
   */

  .message_list::-webkit-scrollbar { /*滚动条整体样式*/
    width: 8px; /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
  }

  .message_list::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    background: transparent;
  }

  .message_list:hover::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    background: #afb0b0;
  }

  .message_list::-webkit-scrollbar-track { /*滚动条里面轨道*/
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    border-radius: 10px;
    background: transparent;
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
</style>