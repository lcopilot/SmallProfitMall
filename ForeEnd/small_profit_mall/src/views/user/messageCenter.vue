<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="16" :push="3">
          <el-card>
            <el-row>
              <el-col :span="7">
                <div class="contact_list_div" v-infinite-scroll="loadMore"
                     :infinite-scroll-disabled="busy"
                     :infinite-scroll-distance="1">
                  <ul>
                    <li v-for="i in list">{{i}}</li>
                     
                  </ul>
                </div>
              </el-col>
              <el-col :span="17" style="height: 530px;background-color: #f5f6f7">

                  <div class="message_list_div">
                    <div v-for="i in 10">{{i}}</div>
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
        busy: false,
        pageSize: 0,
        list: [],
      }
    },
    methods: {
      loadMore() {
        this.busy = true;
        this.pageSize++;
        this.loading = true;
        setTimeout(() => {
          this.axios.get(
              "apiUrl/TestController/Test/" + this.pageSize
          )
          .then(res => {
            console.log(res);
            this.list = this.list.concat(res.data.queryResult.list); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
          })
          .catch(err => {
            console.log(err);
          });
        }, 500)
        this.loading = false;
        this.busy = false;
      },
    }
  }
</script>

<style scoped>
  .contact_list_div {
    max-height: 530px;
    overflow: auto;
    border-right: 1px solid #e6e6e6;
  }

  /**
　　1、::-webkit-scrollbar 定义了滚动条整体的样式；
   2、::-webkit-scrollbar-thumb 滑块部分；
　 3、::-webkit-scrollbar-thumb 轨道部分；
   */
  .contact_list_div::-webkit-scrollbar { /*滚动条整体样式*/
    width: 8px; /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
  }

  .contact_list_div::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    background: #afb0b0;
  }

  .contact_list_div::-webkit-scrollbar-track { /*滚动条里面轨道*/
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    border-radius: 10px;
    background: transparent;
  }

  .message_list_div {
    background-color:Transparent ;
    max-height: 530px;
    overflow: auto;
  }

  .message_list_div::-webkit-scrollbar { /*滚动条整体样式*/
    width: 8px; /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
  }

  .message_list_div::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    background: #afb0b0;
  }

  .message_list_div::-webkit-scrollbar-track { /*滚动条里面轨道*/
    -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0);
    border-radius: 10px;
    background: transparent;
  }
</style>