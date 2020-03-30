<template>
  <el-container>
    <el-header>
      <Header ref="header"></Header>
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
                    <svg-icon name="filtrate" v-show="!isFilter"/>
                    <span v-show="isFilter">
                      <svg-icon name="close" @click.native="closeFilter"/>
                    </span>
                    <el-dropdown-menu slot="dropdown">
                      <el-dropdown-item @click.native="readOnly(0)">仅已读</el-dropdown-item>
                      <el-dropdown-item @click.native="readOnly(1)">仅未读</el-dropdown-item>
                    </el-dropdown-menu>
                  </el-dropdown>
                  <el-dropdown v-show="isFilter" size="small" trigger="click"
                               class="message_list_header_drop message_filter_dp"
                               placement="bottom-start">
                    <span>
                      {{filterContent}}<i class="el-icon-arrow-down el-icon--right"></i>
                    </span>
                    <el-dropdown-menu slot="dropdown">
                      <el-dropdown-item @click.native="readOnly(0)" v-if="filterContent=='仅未读'">
                        仅已读
                      </el-dropdown-item>
                      <el-dropdown-item @click.native="readOnly(1)" v-if="filterContent=='仅已读'">
                        仅未读
                      </el-dropdown-item>
                    </el-dropdown-menu>
                  </el-dropdown>
                  <div class="message_list_header_div1" title="查看未读消息" v-if="unreadQuantity"><span>{{unreadQuantity}}</span>&nbsp;条未读
                  </div>
                  <div class="message_list_header_div2" v-if="unreadQuantity">
                    <el-button type="text" size="mini" @click.native="haveRead(0)">全标已读</el-button>
                  </div>
                </div>
                <div class="contact_list_div message_list" v-infinite-scroll="getMessageList"
                     :infinite-scroll-disabled="messageDisable"
                     :infinite-scroll-distance="0">
                  <ul>
                    <li v-for="(message,index) in messageList" :key="index">
                      <div :class="!message.sign ? 'message_list_preview':'message_list_preview2'"
                           @click="showMessage(index)">
                        <el-row>
                          <el-col :span="6">
                            <div style="padding-top:5px">
                              <el-avatar shape="square"
                                         :src="message.senderAvatar"></el-avatar>
                            </div>
                          </el-col>
                          <el-col :span="14">
                            <div style="text-align: left;">
                              <div>
                                <div :class="message.newsStatus==1?'message_list_preview_div1_div1':''">
                                </div>
                                <div :class="message.newsStatus==1?'message_list_preview_div1_div2':''">
                                  {{message.senderName}}
                                </div>
                              </div>
                              <div class="message_list_preview_div message_list_preview_div2">
                                {{message.title}}
                              </div>
                              <div class="message_list_preview_div message_list_preview_div3">
                                {{message.newsContent}}
                              </div>
                            </div>
                          </el-col>
                          <el-col :span="3">
                            <div>
                              <input class="message_list_read"></input>
                            </div>
                            <div class="message_list_preview_time">
                              {{messageTime(message.newsTime)}}
                            </div>
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
                      <div
                          style="text-align: left;margin-right:-5%;float:right;padding: 2%;width: 100%;">
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
  export default {
    inject: ["reload"],
    name: "messageCenter",
    components: {personalPage},
    data() {
      return {
        //消息下拉加载的绑定值
        messageDisable: false,
        //获取下拉数据
        messagePaging: {
          state: 2,
          userId: sessionStorage.getItem("uId"),
          currentPage: 0,
          pageSize: 5,
          totalPage: 0,
        },
        //筛选已读未读的数组
        messageArr: [],
        //是否开启筛选
        isFilter: false,
        //筛选内容
        filterContent: '',
        //未读数
        unreadQuantity: 0,
        messageList: [],
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
      //消息时间算法
      messageTime(time) {
        let mTime = new Date(time);
        let nTime = new Date();
        const weekArr = ["周日", "周一", "周二", "周三", "周四", "周五", "周六"]
        if (mTime.getTime() < (new Date(nTime.setHours(0, 0, 0, 0))) && mTime.getTime() > (new Date(
            nTime.getTime() - 24 * 60 * 60 * 1000 * 1).setHours(0, 0, 0, 0))) {
          return '昨天';
        } else if (mTime.getTime() < (new Date(nTime.getTime() - 24 * 60 * 60 * 1000 * 1).setHours(
            0, 0, 0, 0)) && mTime.getTime() > (new Date(
            nTime.getTime() - 24 * 60 * 60 * 1000 * 7).setHours(0, 0, 0, 0))) {
          return weekArr[mTime.getDay()];
        } else if (mTime.getTime() < (new Date(nTime.getTime() - 24 * 60 * 60 * 1000 * 7).setHours(
            0, 0, 0, 0))) {
          return mTime.getMonth() + '-' + mTime.getDate();
        } else {
          return mTime.getHours() + ":" + mTime.getSeconds();
        }
      },
      //加载消息
      getMessageList() {
        if (this.messagePaging.currentPage == this.messagePaging.totalPage) {
          return;
        }
        this.messageDisable = true;
        this.messagePaging.currentPage++;
        clearTimeout(this.timer);
        userApi.getMessageHistory(this.messagePaging)
        .then(res => {
          if (res.success) {
            this.messageList = this.messageList.concat(res.page.news); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
            this.messagePaging.totalPage = res.page.totalPage + 1;
            this.unreadQuantity = res.page.unreadQuantity;
            if (this.unreadQuantity==0){
              sessionStorage.setItem("unreadQuantity",this.unreadQuantity);
            }
            this.messageArr = this.messageList;
          }
        });
        this.messageDisable = false;
      },
      //筛选显示的消息类型 已读或未读
      readOnly(status) {
        this.isFilter = true;
        let messArr = [];
        if (status == 0) {
          this.messagePaging.state = 0;
          this.filterContent = '仅已读';
        } else {
          this.messagePaging.state = 1;
          this.filterContent = '仅未读';
        }
        this.messageArr.forEach((message) => {
          if (message.newsStatus == status) {
            messArr.push(message);
          }
        });
        this.messageList = messArr;
      },
      //关闭筛选
      closeFilter() {
        this.messagePaging.state = 2;
        this.isFilter = false;
        this.messageList = this.messageArr;
      },
      //接收后端消息推送
      receiveMessages(msg) {
        let arr=msg.queryResultString.news;
        arr.forEach((message)=>{
          this.messageList.unshift(message);
        });
        this.$refs.header.newMessage(this.unreadQuantity+arr.length);
      },
      //查看消息
      showMessage(index) {
        if (index != null) {
          this.messageList.forEach((message) => {
            message.sign = false;
          });
          this.messageList[index].sign = true;
          if (this.messageList[index].newsStatus == 1) {
            this.haveRead(this.messageList[index].contentId,index);
          }
        }
      },
      //标为已读
      haveRead(contentId, index) {
        userApi.haveRead(sessionStorage.getItem("uId"), contentId).then(res => {
          if (res.success) {
            if (contentId) {
              console.log(contentId);
              this.messageList[index].newsStatus = 0;
              this.unreadQuantity--;
            } else if (contentId == 0) {
              sessionStorage.setItem("unreadQuantity",'0');
              this.reload();
            }
          }
        })
      },
    },
    created() {
      //将接收消息的方法放入接收消息方法的map
      this.socketApi.depositMethod(82000, this.receiveMessages);
    }
  }
</script>

<style scoped>
  .message_filter_dp {
    margin-left: -3%;
  }

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

  .message_list_preview2 {
    height: 80px;
    padding: 3%;
    background-color: #D8EAFE;
  }

  .message_list_preview2:hover {
    background-color: #D8EAFE;
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