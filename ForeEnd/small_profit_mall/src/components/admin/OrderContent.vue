<template>
  <div>
    <div class="order_head">
      <el-row>
        <el-col :span="13">商品详情</el-col>
        <el-col :span="3">收件人</el-col>
        <el-col :span="3">金额</el-col>
        <el-col :span="3">状态</el-col>
        <el-col :span="2">操作</el-col>
      </el-row>
    </div>
    <div style="margin-top: 20px;"
         v-for="order in orderList">
      <div class="order_information" @mouseenter="deleteBtn=true" @mouseleave="deleteBtn=false">
        <el-row>
          <el-col :span="5" :push="1">时间:{{moment(order.orderTime).format('YYYY-MM-DD HH:mm:ss')}}</el-col>
          <el-col :span="10" :push="1">订单号:{{order.orderId}}</el-col>
          <el-col :span="2" :push="8" v-if="deleteBtn">
            <li class="el-icon-delete order_delete"></li>
          </el-col>
        </el-row>
      </div>
      <div>
        <table border="1" cellspacing="0" style="border-color:#999999;">
          <tr>
            <td style="width: 54%">
              <div v-for="(product,index) in order.productContents" :key="index"
                   :style="index==order.productContents.length-1?'':'border-bottom: 1px solid #dcdfe6'">
                <el-row>
                  <el-col :span="5">
                    <router-link :to="{name:'Order',params:{orderNumber:order.orderId,genre:order.orderState}}">
                      <div class="order_product_img">
                        <el-image :src="product.productImage" fit="fill"></el-image>
                      </div>
                    </router-link>
                  </el-col>
                  <el-col :span="14">
                    <router-link :to="{name:'Order',params:{orderNumber:order.orderId,genre:order.orderState}}">
                      <div class="order_product_name">
                        {{product.productName}}
                      </div>
                    </router-link>
                  </el-col>
                  <el-col :span="5">
                    <div style="margin-top: 19%;font-size: 13px">
                      x{{product.productQuantity}}
                    </div>
                  </el-col>
                </el-row>
              </div>
            </td>
            <td style="width: 12%">
              <div class="order_recipient">
                {{order.orderAddress.name}}
              </div>
            </td>
            <td style="width: 12%" class="el_divider">
              <div class="order_recipient">
                ￥{{order.orderTotal}}
              </div>
              <el-divider></el-divider>
              <div style="color: #999999;font-size: 12px">
                钱包支付
              </div>
            </td>
            <td style="width: 12%">
              <div class="order_recipient">
                {{(order.orderState==1?'待付款':(order.orderState==2?'待签收':'待评价'))}}
              </div>
            </td>
            <td style="width: 10%">
              <div class="order_operate">
                <router-link :to="{name:'Order',params:{orderNumber:order.orderId,genre:''}}">
                  <el-button type="text" size="mini" v-if="order.orderState==1">去付款</el-button>
                </router-link>
                <router-link :to="{name:'Order',params:{orderNumber:order.orderId,genre:0}}">
                  <el-button type="text" size="mini" v-if="order.orderState==1 && order.changeQuantity==0">去修改</el-button>
                </router-link>
                <el-button type="text" size="mini" v-if="order.orderState==2">确认收货</el-button>
                <el-button type="text" size="mini" v-if="order.orderState==3">申请售后</el-button>
                <el-button type="text" size="mini" v-if="order.orderState==3" @click="commentVisible=true">评价晒单</el-button>
              </div>
            </td>
          </tr>
        </table>
        <el-dialog title="商品评论" :visible.sync="commentVisible" @close="clearFiles">
          <el-form :model="commentForm" label-position="right" label-width="120px">
            <el-form-item label="描述相符">
              <div class="order_product_score">
                <el-rate
                    v-model="commentForm.score"
                    show-text
                    :texts="['非常差', '差', '一般', '好', '非常好']"
                    :colors="['#99A9BF', '#F7BA2A', '#f56c6c']">
                </el-rate>
              </div>
            </el-form-item>
            <el-form-item label="评论内容">
              <div class="order_comment_img">
                <el-input type="textarea" v-model="commentForm.content" autosize :maxlength="1000"
                          show-word-limit placeholder="请输入您要评论的内容"></el-input>
              </div>
            </el-form-item>
            <el-form-item label="上传买家秀">
              <div class="order_comment_img">
                <div class="product_comment_img" v-if="playerOptions.sources[0].src">
                  <el-image
                      src="http://img.fhxasdsada.xyz/safd20200406141323.png"
                      fit="scale-down"/>
                  <div class="product_play" v-if="true">
                    <el-link :underline="false" @click.native="playerVideoComment()">
                      <svg-icon name="play" class="icon_play"/>
                    </el-link>
                  </div>
                </div>
                <el-dialog :visible.sync="commentVideoVisible"  append-to-body>
                  <video-player v-if="commentVideoVisible" class="video-player vjs-custom-skin"
                                ref="videoPlayer"
                                :playsinline="true"
                                :options="playerOptions"
                                style="width: 455px;height: 335px">
                  </video-player>
                </el-dialog>
                <el-upload
                    action="https://jsonplaceholder.typicode.com/posts/"
                    list-type="picture-card"
                    :multiple="true"
                    ref="upload"
                    :on-change="selectFile"
                    :on-preview="handlePictureCardPreview"
                    :on-remove="handleRemove">
                  <i class="el-icon-plus"></i>
                </el-upload>
                <el-dialog :visible.sync="commentImgVisible" append-to-body>
                  <img width="100%" :src="commentImgUrl" alt="">
                </el-dialog>
                <div style="font-size: 12px;color: #999999">注:允许上传10张图片,1个mp4视频,上传图片必须是JPG/PNG/BMP/MP4
                  格式!
                </div>
              </div>
            </el-form-item>
            <el-form-item label="匿名评价">
              <div class="order_comment_img">
                <el-switch v-model="commentForm.isAnonymity" active-text="不公开头像,昵称">
                </el-switch>
              </div>
            </el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button @click="commentVisible = false">取 消</el-button>
            <el-button type="primary" @click="">确 定</el-button>
          </div>
        </el-dialog>
      </div>
    </div>
    <div style="text-align: right;padding: 3% 0 1% 0">
      <el-pagination
          background
          @size-change="changeNumber"
          @current-change="changePage"
          :current-page="orderParams.currentPage"
          :page-sizes="[6,7, 8, 10, 12,15]"
          :page-size="orderParams.pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :hide-on-single-page="true"
          :total="orderParams.totalCount">
      </el-pagination>
    </div>
  </div>
</template>

<script>
  import *as orderApi from '../../api/page/orders'
  export default {
    name: "orderContent",
    props: {
      //订单类型
      genre: {
        type: String,
        required: false,
        default: "1",
      }
    },
    data() {
      return {
        playerOptions: {
          //播放速度
          playbackRates: [0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
          //如果true,浏览器准备好时开始回放。
          autoplay: false,
          // 默认情况下将会消除任何音频。
          muted: false,
          // 导致视频一结束就重新开始。
          loop: true,
          // 建议浏览器在<video>加载元素后是否应该开始下载视频数据。auto浏览器选择最佳行为,立即开始加载视频（如果浏览器支持）
          preload: 'auto',
          language: 'zh-CN',
          // 将播放器置于流畅模式，并在计算播放器的动态大小时使用该值。值应该代表一个比例 - 用冒号分隔的两个数字（例如"16:9"或"4:3"）
          aspectRatio: '4:3',
          // 当true时，Video.js player将拥有流体大小。换句话说，它将按比例缩放以适应其容器。
          fluid: true,
          sources: [{
            //类型
            type: "video/ogg",
            type: "video/webm",
            type: "video/mp4",
            //url地址
            src: '',
          }],
          //你的封面地址
          poster: '',
          //允许覆盖Video.js无法播放媒体源时显示的默认信息。
          notSupportedMessage: '此视频暂无法播放，请稍后再试',
          controlBar: {
            timeDivider: true,
            durationDisplay: true,
            remainingTimeDisplay: false,
            //全屏按钮
            fullscreenToggle: true
          }
        },
        imgList: [],
        //评论对话框
        commentVisible: false,
        //评论表单
        commentForm: {
          //匿名评价
          isAnonymity:false,
          //评分
          score: 5,
          //评论内容
          content: '',
        },
        //删除按钮
        deleteBtn: false,
        //订单分页参数
        orderParams: {
          currentPage: 1,//页码
          pageSize: 3,//每页显示个数
          totalCount: 0,//总记录数
          totalPage: 1,//总页数
        },
        orderList: [],
        commentImgUrl: '',
        //评论图片弹出框
        commentImgVisible: false,
        //评论视频弹出框
        commentVideoVisible: false,
      }
    },
    methods: {
      playerVideoComment() {
        this.commentVideoVisible = true;
      },
      //清除文件
      clearFiles() {
        this.playerOptions.sources[0].src='';
        const mainImg = this.$refs.upload;
        if (mainImg && mainImg.length) {
          mainImg.forEach(item => {
            if (item.uploadFiles.length != 0) {
              item.clearFiles();
            }
          });
        }
      },
      //选择文件
      selectFile(file, fileList) {
        if (!file.raw.type) {
          return this.$message.error('上传的文件必须是JPG/PNG/BMP/MP4格式!');
        }
        const isJPG = file.raw.type === 'image/jpeg';
        const isPNG = file.raw.type === 'image/png';
        const isBMP = file.raw.type === 'image/bmp';
        const isMP4 = file.raw.type === 'video/mp4';
        const isLt2M = file.size / 1024 / 1024 < 2;
        if (isMP4) {
          this.playerOptions.sources[0].src = file.url;
          return fileList.pop();
        }
        if (fileList.length>10){
          this.$message.error('只能上传10张图片哦~');
          return fileList.pop();
        }
        if (!isJPG && !isPNG && !isBMP) {
          fileList.pop();
          return this.$message.error('上传图片必须是JPG/PNG/BMP 格式!');
        }
        if (!isLt2M) {
          fileList.pop();
          return this.$message.error('上传评论图片大小不能超过 2MB!');
        }
      },
      handleRemove(file, fileList) {
        console.log(fileList)
      },
      //预览
      handlePictureCardPreview(file) {
        this.commentImgUrl = file.url;
        this.commentImgVisible = true;
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.orderParams.currentPage = currentPage;
        this.getOrderList();
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.orderParams.pageSize = pageSize;
        this.getOrderList();
      },
      //获取订单信息
      getOrderList(){
        if (this.orderParams.currentPage!=1 && this.orderParams.currentPage==this.orderParams.totalPage && (((this.orderParams.currentPage-1)*this.orderParams.pageSize)+1)===this.orderParams.totalCount){
          this.orderParams.currentPage--;
        }
        const params={
          orderState:this.genre,
          userId:sessionStorage.getItem("uId"),
          currentPage:this.orderParams.currentPage,
          pageSize:this.orderParams.pageSize
        };
        orderApi.getOrderList(params).then(res=>{
          if (res.success){
            console.log(res)
            this.orderList=res.pagination.list
            this.orderParams.totalPage=res.pagination.totalPage;
            this.orderParams.totalCount=res.pagination.totalCount;
          }
        })
      },
    },
    mounted() {
      this.getOrderList();
    }
  }
</script>

<style scoped>
  .product_play {
    width: 24px;
    height: 24px;
    margin-left: 20px;
    margin-top: -78px;
    position: absolute;
    left: 0;
  }

  .icon_play {
    width: 40px;
    height: 40px;
  }

  .icon_play:hover {
    cursor: pointer;
    transform: scale(1.1);
  }

  .product_comment_img:hover {
    border: 1px dashed #409eff;
  }

  .product_comment_img {
    float: left;
    display: inline-block;
    position: relative;
    border: 1px dashed #999999;
    border-radius: 5px;
    margin-right: 2%;
    margin-bottom: 5px;
    max-width: 80px;
    max-height: 80px;
    overflow: hidden;
  }

  table, table tr th, table tr td {
    border: 1px solid #dcdfe6;
    vertical-align: top;

  }

  .order_operate {
    text-align: center;
    margin-top: 3%;
    font-size: 12px;
  }

  .order_operate /deep/ .el-button--mini {
    padding: 3px 15px;
  }

  .order_recipient {
    margin-top: 10%;
    font-size: 13px;
    padding-left: 10%;
    padding-right: 10%;
    color: #999999;
  }

  table {
    border-color: #dcdfe6;
    text-align: center;
    border-collapse: collapse;
    padding: 2px;

  }

  .order_delete:hover {
    color: #FF2002;
    cursor: pointer;
  }

  .order_comment_img {
    width: 80%;
    text-align: left
  }

  .order_comment_img /deep/ .el-upload-list__item-thumbnail {
    object-fit: contain;
  }

  .order_comment_img /deep/ .el-upload-list__item {
    width: 80px;
    height: 80px;
  }

  .order_comment_img /deep/ .el-upload--picture-card {
    width: 80px;
    height: 80px;
    line-height: 80px;
  }

  .order_product_img {
    margin: 5% 0 0 15%;
    width: 55%
  }

  .el_divider /deep/ .el-divider--horizontal {
    margin: 0 0 0 5%;
    width: 90%;
  }

  .order_head {
    font-size: 14px;
    height: 38px;
    padding-top: 7px;
    color: #999999;
    background-color: #f3f3f3;
    border-radius: 4px
  }

  .order_information {
    text-align: left;
    font-size: 14px;
    color: #999999;
    background-color: #f3f3f3;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
  }

  .order_product_name {
    text-align: left;
    font-size: 13px;
    margin-top: 4%;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }

  .order_product_name:hover {
    color: #409EFF;
  }

  .order_product_score {
    text-align: left
  }

  .order_product_score /deep/ .el-rate {
    line-height: 2;
  }

  .order_product_score /deep/ .el-rate__icon {
    font-size: 25px;
  }
</style>