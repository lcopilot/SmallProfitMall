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
                <div class="message_list_header">
                  <el-dropdown size="small" trigger="click" class="message_list_header_drop"
                               placement="bottom-start">
                    <svg-icon name="filtrate"/>
                    <el-dropdown-menu slot="dropdown">
                      <el-dropdown-item>仅已读</el-dropdown-item>
                      <el-dropdown-item>仅未读</el-dropdown-item>
                    </el-dropdown-menu>
                  </el-dropdown>
                  <div class="message_list_header_div1" title="查看未读消息"><span>5</span>&nbsp;条未读</div>
                  <div class="message_list_header_div2">全标已读</div>
                </div>
                <div class="contact_list_div message_list" v-infinite-scroll="getMessageList"
                     :infinite-scroll-disabled="messageDisable"
                     :infinite-scroll-distance="1">
                  <ul>
                    <li v-for="i in list">
                      <div :class="dd? 'message_list_preview':'message_list_preview3'"
                           @click="showMessage($event)" @mouseenter="enterMessage($event)"
                           @mouseleave="leaveMessage($event)">
                        <el-row>
                          <el-col :span="6">
                            <div style="padding-top:5px">
                              <el-avatar :size="size" shape="square"
                                         src="http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938"></el-avatar>
                            </div>
                          </el-col>
                          <el-col :span="14">
                            <div style="text-align: left;">
                              <div>
                                <div class="message_list_preview_div1_div1"></div>
                                <div class="message_list_preview_div1_div2">微利团队</div>
                              </div>
                              <div class="message_list_preview_div message_list_preview_div2">
                                确认订单信息
                              </div>
                              <div class="message_list_preview_div message_list_preview_div3">
                                打发时间看看了
                              </div>
                            </div>
                          </el-col>
                          <el-col :span="2">
                            <div title="标为已读">
                              <input class="message_list_read"></input>
                            </div>
                            <div class="message_list_preview_time">10:47</div>
                          </el-col>
                        </el-row>
                      </div>
                    </li>
                  </ul>
                </div>
              </el-col>
              <el-col :span="17" class="message_content_div">
                <div class="message_list_div message_list">
                  <el-card>
                    <div slot="header">
                      <div style="text-align: left">确认订单</div>
                    </div>
                    <div>
                      <div>
                        <div style="width: 25%;float: left" v-for="dd in product">
                          <el-row>
                            <el-col :span="10">
                              <el-image :src="dd.url"></el-image>
                            </el-col>
                            <el-col :span="14">
                              <div class="message_list_preview_div">
                                {{dd.name}}
                              </div>
                            </el-col>
                          </el-row>
                        </div>
                      </div>
                      <div style="text-align: left;margin-right:-5%;float:right;padding: 2%;width: 100%;">
                      彭cdf 学院上课了较好的那开发商和 1536788534sdf5410
                      </div>
                      <div
                          style="text-align: right;margin-right:5%;float:right;padding: 2%;width: 100%;margin-bottom: 5%">
                        <el-button round size="mini" type="primary">确认</el-button>
                        <el-button round size="mini" type="primary">转人工</el-button>
                      </div>
                    </div>
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
  import *as userApi from '../../api/page/user';
  const personalPage = () => import("../../components/admin/personalHubPage");
  const orderContent = () => import("../../components/admin/orderContent");
  export default {
    name: "messageCenter",
    components: {Header, Footer, personalPage, orderContent},
    data() {
      return {
        messageDisable: false,
        messagePaging:{
          userId:sessionStorage.getItem("uId"),
          currentPage:1,
          pageSize: 0,
        },
        list: [],
        product: [
          {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          }, {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          },
          {
            url: "http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg",
            name: "dsjksd",
          },
        ],
      }
    },
    methods: {
      //加载消息
      getMessageList() {
        this.messageDisable = true;
        this.currentPage++;
        clearTimeout(this.timer);
        userApi.getMessageHistory()
        .then(res => {
          console.log(res);
          this.list = this.list.concat(res.data.queryResult.list); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
        })
        this.messageDisable = false;
      },
      /**
       * 查看消息
       *  @param $event 事件对象
       */
      showMessage($event) {
        $event.currentTarget.className = "message_list_preview2";
      },
      /**
       * 进入消息的方法
       * @param $event
       */
      enterMessage($event) {
        $event.currentTarget.className = "message_list_preview2";
      },
      /**
       * 离开消息的方法
       * @param $event
       */
      leaveMessage($event) {
        $event.currentTarget.className = "message_list_preview";
      }
    }
  }
</script>

<style scoped>
  .message_list_preview_div1_div1 {
    width: 10px;
    height: 10px;
    border-radius: 100px;
    float: left;
    background-color: #4196ff;
    margin: 6% 5% 0 0
  }

  .message_list_preview_div1_div2 {
    float: left;
    font-weight: 600;
    font-size: 18px
  }

  .message_list_preview3 {
    height: 80px;
    padding: 3%;
    background-color: #D8EAFE;
  }

  .message_list_preview3:hover {
    background-color: #D8EAFE;
  }

  .message_list_preview2 {
    height: 80px;
    padding: 3%;
    background-color: #ecf5ff;
  }

  .message_list_preview2:hover {
    background-color: #ecf5ff;
  }

  .message_list_read {
    width: 31px;
    visibility: hidden;
  }

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

  .message_list_header {
    height: 50px;
    padding-top: 5%;
    font-size: 14px
  }

  .message_list_header_drop {
    float: left;
    padding-left: 8%;
  }

  .message_list_header_drop:hover {
    color: #409EFF;
  }

  .message_list_header_div1 {
    float: left;
    margin-left: 1%;
    padding: 1% 4% 1% 4%;
  }

  .message_list_header_div1 span {
    color: #5483f2;
  }

  .message_list_header_div2 {
    float: right;
    margin-right: 1%;
    padding: 1% 4% 1% 4%;
  }

  .message_list_header_div1:hover, .message_list_header_div2:hover {
    border-radius: 2px;
    background: rgba(215, 231, 250, 0.8);
  }

  .message_list_preview {
    height: 80px;
    padding: 3%
  }

  .message_list_preview:hover {
    background-color: #ecf5ff;
  }

  .message_list_preview_div {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%
  }

  .message_list_preview_div2 {
    font-size: 13px;
  }

  .message_list_preview_div3 {
    font-size: 12px;
    color: #999999;
  }

  .message_list_preview_time {
    color: #999999;
    font-size: 12px
  }
</style>