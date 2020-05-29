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
                      <svg-icon name="close" @click.native="closeFilter()"/>
                    </span>
                    <el-dropdown-menu slot="dropdown">
                      <!--                      <el-dropdown-item @click.native="readOnly(0)">仅已读</el-dropdown-item>-->
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
                      <!--<el-dropdown-item @click.native="readOnly(0)" v-if="filterContent=='仅未读'">
                        仅已读
                      </el-dropdown-item> -->
                      <el-dropdown-item @click.native="readOnly(1)" v-if="filterContent=='仅已读'">
                        仅未读
                      </el-dropdown-item>
                    </el-dropdown-menu>
                  </el-dropdown>
                  <div class="message_list_header_div1" title="查看未读消息" v-if="unreadQuantity>0">
                    <span>{{unreadQuantity}}</span>&nbsp;条未读
                  </div>
                  <div class="message_list_header_div2" v-if="unreadQuantity>0">
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
                                <div
                                    :class="message.newsStatus==1?'message_list_preview_div1_div1':''">
                                </div>
                                <div
                                    :class="message.newsStatus==1?'message_list_preview_div1_div2':''">
                                  {{message.senderName}}
                                </div>
                              </div>
                              <div class="message_list_preview_div message_list_preview_div2">
                                {{message.title}}
                              </div>
                              <div class="message_list_preview_div message_list_preview_div3">
                                {{message.introduction}}
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
                <div v-if="!messageData.newsType">
                  <svg-icon name="messageBack"
                            style="width: 200px;height: 200px;margin-top: 20%"></svg-icon>
                </div>
                <div class="message_list_div message_list"
                     v-if="messageData.newsType==4">
                  <el-card>
                    <div slot="header">
                      <div class="message_order_header">尊敬的微利会员, 请您核对订单信息</div>
                    </div>
                    <div class="message_order">
                      <div v-for="product in productList" class="message_order_product">
                        <el-row :gutter="10">
                          <el-col :span="8">
                            <div class="message_order_product_img">
                              <el-image :src="product.productImage" fit="fill"></el-image>
                            </div>
                          </el-col>
                          <el-col :span="16">
                            <div class="message_order_product_name">
                              {{product.productName}}
                            </div>
                            <div class="message_order_product_price">
                              <span>共{{product.productQuantity}}商品; </span>
                              <span> 合计￥{{((((product.productPrice)*100)*product.productQuantity)/100).toFixed(2)}}</span>
                            </div>
                          </el-col>
                        </el-row>
                      </div>
                      <div v-if="productList.length%2==1" style="visibility:hidden;height:105px;"
                           class="message_order_product">
                        商品数量是奇数是补上一个
                      </div>
                      <div class="message_order_address">
                        <div>
                          <el-row>
                            <el-col :span="2"> 姓名:</el-col>
                            <el-col :span="20"> {{orderAddress.name}}</el-col>
                          </el-row>
                        </div>
                        <div>
                          <el-row>
                            <el-col :span="2"> 电话:</el-col>
                            <el-col :span="20"> {{orderAddress.phone}}</el-col>
                          </el-row>
                        </div>
                        <div>
                          <el-row>
                            <el-col :span="2"> 地址:</el-col>
                            <el-col :span="20">
                              {{orderAddress.areas+orderAddress.detailedAddress}}
                            </el-col>
                          </el-row>
                        </div>
                      </div>
                      <div class="message_order_btn message_order_confirm_btn">
                        <el-button round size="small" plain @click="checkOrder" v-if="paymentAssistant.changeQuantity==0">修改</el-button>
                        <el-button round size="small" type="primary">确认
                        </el-button>
                      </div>
                    </div>
                  </el-card>
                </div>
                <div v-if="messageData.newsType==3">
                  <el-card>
                    <div slot="header">
                      <div class="message_order_header">交易提醒</div>
                    </div>
                    <div class="message_order_Trn">
                      <el-form label-position="left" label-width="100px">
                        <el-form-item>
                          <div class="message_order_Trn_Am_title">
                            付款金额
                          </div>
                          <div class="message_order_Trn_Am">
                            ￥{{paymentAssistant.paymentAmount}}
                          </div>
                        </el-form-item>
                        <el-form-item label="收款方">
                          微利官方
                        </el-form-item>
                        <el-form-item label="交易状态">
                          {{paymentAssistant.paymentStatus==1?'支付成功':'支付失败'}}
                        </el-form-item>
                        <el-form-item label="交易时间">
                          {{new Date(paymentAssistant.paymentTime).getFullYear()+'年'+(new
                          Date(paymentAssistant.paymentTime).getMonth()+1)+'月'+new
                          Date(paymentAssistant.paymentTime).getDate()+'日 '+(new
                          Date(paymentAssistant.paymentTime).getHours()>18?' 晚上':(new
                          Date(paymentAssistant.paymentTime).getHours()>12?' 下午':' 上午')) +new
                          Date(paymentAssistant.paymentTime).getHours()+':'+new
                          Date(paymentAssistant.paymentTime).getMinutes()+':'+new
                          Date(paymentAssistant.paymentTime).getSeconds()}}
                        </el-form-item>
                      </el-form>
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

  const personalPage = () => import("../../components/admin/PersonalHubPage");
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
        //消息列表
        messageList: [],
        //订单商品列表
        productList: [],
        //订单地址
        orderAddress: {},
        //订单号
        orderNumber: '',
        //支付助手
        paymentAssistant: {},
        //单个消息数据
        messageData:{},

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
          return mTime.getHours() + ":" + mTime.getMinutes();
        }
      },
      //加载消息
      getMessageList() {
        if (this.messagePaging.currentPage > 0 ? this.messagePaging.currentPage
            == this.messagePaging.totalPage : false) {
          return;
        }
        this.messageDisable = true;
        this.messagePaging.currentPage += 1;
        userApi.getMessageHistory(this.messagePaging)
        .then(res => {
          if (res.success) {
            this.messageList = this.messageList.concat(res.page.news); //因为每次后端返回的都是数组，所以这边把数组拼接到一起
            this.messagePaging.totalPage = res.page.totalPage;
            this.unreadQuantity = res.page.unreadQuantity;
            this.$refs.header.unreadQuantity = this.unreadQuantity;
            try {
              this.$refs.header.unreadQuantity = this.unreadQuantity;
            }catch (e) {
                //  Cannot set property 'unreadQuantity' of undefined
                //莫名其妙的异常 不晓得怎么处理😀
            }
            if (this.unreadQuantity == 0) {
              sessionStorage.setItem("unreadQuantity", this.unreadQuantity);
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
        this.messageList.forEach((message) => {
          message.sign = false;
        });
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
        this.reload();
      },
      //接收后端消息推送
      receiveMessages(msg) {
        let arr = msg.queryResultString.news;
        arr.forEach((message) => {
          this.messageList.unshift(message);
        });
      },
      //查看消息
      showMessage(index) {
        if (index != null) {
          this.messageList.forEach((message) => {
            message.sign = false;
          });
          this.messageData=this.messageList[index];
          this.paymentAssistant = this.messageList[index].newsContentJson;
          if (!this.paymentAssistant.paymentAmount) {
            this.productList = this.messageList[index].newsContentJson.productContents;
            this.orderAddress = this.messageList[index].newsContentJson.orderAddress;
            this.orderNumber = this.messageList[index].newsContentJson.orderId;
          }
          this.messageList[index].sign = true;
          if (this.messageList[index].newsStatus == 1) {
            this.haveRead(this.messageList[index].contentId, index);
          }
        }
      },
      //标为已读
      haveRead(contentId, index) {
        userApi.haveRead(sessionStorage.getItem("uId"), contentId).then(res => {
          if (res.success) {
            if (contentId) {
              this.messageList[index].newsStatus = 0;
              this.unreadQuantity--;
              this.$refs.header.unreadQuantity = this.unreadQuantity;
              sessionStorage.setItem("unreadQuantity", this.unreadQuantity);
            } else if (contentId == 0) {
              sessionStorage.setItem("unreadQuantity", this.unreadQuantity);
              this.reload();
            }
          }
        })
      },
      //查看订单
      checkOrder() {
        this.$router.push({
          name: "Order",
          params: {
            orderNumber: this.orderNumber,
            genre: 0,
          }
        });
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

  .message_order_product {
    width: 48%;
    float: left;
    padding: 2%;
    background-color: #EBEEF5;
    border-radius: 5px;
    margin: 1%
  }

  .message_order_product_img {
    width: 70%;
    margin: 5% 0 0 15%;
  }

  .message_order_product_name {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    margin-top: 6%
  }

  .message_order_product_price {
    font-size: 13px;
    color: #999999;
    text-align: left;
    margin-left: 3%
  }

  .message_order_Trn_Am_title {
    font-size: 14px;
    color: #999999;
    margin-top: 5%
  }

  .message_order_address {
    text-align: left;
    font-size: 16px;
    margin-left: 5%;
    padding: 2%;
    width: 100%;
  }

  .message_order_btn {
    text-align: right;
    margin-right: 5%;
    float: right;
    padding: 2%;
    width: 100%;
    margin-bottom: 5%
  }

  .message_order_Trn {
    width: 50%;
    margin-left: 20%
  }

  .message_order_confirm_btn /deep/ .el-button--primary {
    border:none;
    background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);
  }
  .message_order_confirm_btn /deep/ .el-button--primary:hover {
    border:none;
    background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
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

  .message_order_Trn_Am {
    font-size: 30px;
    font-weight: 600;
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

  .message_order_header {
    text-align: left;
    font-weight: 600;
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