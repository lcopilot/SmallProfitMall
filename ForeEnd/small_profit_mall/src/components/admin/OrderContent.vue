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
          <el-col :span="5" :push="1">时间:{{order.time}}</el-col>
          <el-col :span="10" :push="1">订单号:{{order.orderNumber}}</el-col>
          <el-col :span="2" :push="8" v-if="deleteBtn">
            <li class="el-icon-delete order_delete"></li>
          </el-col>
        </el-row>
      </div>
      <div>
        <table border="1" cellspacing="0" style="border-color:#999999;">
          <tr>
            <td style="width: 54%">
              <div v-for="(product,index) in order.productList"
                   :style="index==order.productList.length-1?'':'border-bottom: 1px solid #dcdfe6'">
                <el-row>
                  <el-col :span="5">
                    <router-link :to="{path:'/product',query:{productId:product.productId}}">
                      <div class="order_product_img">
                        <el-image :src="product.img" fit="fill"></el-image>
                      </div>
                    </router-link>
                  </el-col>
                  <el-col :span="14">
                    <router-link :to="{path:'/product',query:{productId:product.productId}}">
                      <div class="order_product_name">
                        {{product.name}}sdflsnlskdfs数据库的粉红色拉水电费开始dfjgk发送对接方速度还是大速度还是大法时可能是大家好是尽可能坚实的开发商看纳税人的看法
                      </div>
                    </router-link>
                  </el-col>
                  <el-col :span="5">
                    <div style="margin-top: 19%;font-size: 13px">
                      x{{product.number}}
                    </div>
                  </el-col>
                </el-row>
              </div>
            </td>
            <td style="width: 12%">
              <div class="order_recipient">
                {{order.recipient}}
              </div>
            </td>
            <td style="width: 12%" class="el_divider">
              <div class="order_recipient">
                ￥{{order.amount}}
              </div>
              <el-divider></el-divider>
              <div style="color: #999999;font-size: 12px">
                钱包支付
              </div>
            </td>
            <td style="width: 12%">
              <div class="order_recipient">
                {{order.status=1?'待签收':'待付款'}}
              </div>
            </td>
            <td style="width: 10%">
              <div class="order_operate">
                <el-button type="text" size="mini">去付款</el-button>
                <el-button type="text" size="mini">申请售后</el-button>
                <el-button type="text" size="mini" @click="commentVisible=true">评价晒单</el-button>
              </div>
            </td>
          </tr>
        </table>
        <el-dialog title="商品评论" :visible.sync="commentVisible">
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
              <div style="width: 80%;text-align: left">
                <el-input type="textarea" v-model="commentForm.content" autosize :maxlength="1000"
                          show-word-limit placeholder="请输入您要评论的内容"></el-input>
              </div>
            </el-form-item>
            <el-form-item label="上传买家秀">
              <div style="width: 80%;text-align: left">
                <el-upload
                    action="https://jsonplaceholder.typicode.com/posts/"
                    list-type="picture-card"
                    :on-preview="handlePictureCardPreview"
                    :on-remove="handleRemove">
                  <i class="el-icon-plus"></i>
                  <div slot="file" slot-scope="{file}">
                    <img class="el-upload-list__item-thumbnail" :src="file.url" alt="" >
                    <span class="el-upload-list__item-actions">
                        <span class="el-upload-list__item-preview" @click="handlePictureCardPreview(file)" >
                          <i class="el-icon-zoom-in"></i>
                        </span>
                        <span v-if="!disabled" class="el-upload-list__item-delete" @click="handleRemove(file)" >
                          <i class="el-icon-delete"></i>
                        </span>
                      </span>
                  </div>
                </el-upload>
                <el-dialog :visible.sync="dialogVisible" append-to-body>
                  <img width="100%" :src="dialogImageUrl" alt="">
                </el-dialog>
              </div>
            </el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisible = false">取 消</el-button>
            <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
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
        //评论对话框
        commentVisible: false,
        //评论表单
        commentForm: {
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
          pageSize: 6,//每页显示个数
          totalCount: 400,//总记录数
          totalPage: 1,//总页数
        },
        orderList: [
          {
            status: 1,
            orderNumber: '00000',
            time: '2020-4-1',
            recipient: '方鸿鑫电话还贷款水电费尽快',
            amount: '45895898168',
            productList: [
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
            ]
          },
          {
            status: 1,
            orderNumber: '00000',
            time: '2020-4-1',
            recipient: '方df',
            amount: '48',
            productList: [
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
            ]
          },
          {
            status: 1,
            orderNumber: '00000',
            time: '2020-4-1',
            recipient: '方',
            amount: '4568',
            productList: [
              {
                img: 'http://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg',
                name: 'ssasdas',
                number: '65'
              },
            ]
          },],
        dialogImageUrl: '',
        dialogVisible: false,
        disabled: false
      }
    },
    methods: {
      selectFile(file){
        const isJPG = file.raw.type === 'image/jpeg';
        const isPNG = file.raw.type === 'image/png';
        const isBMP = file.raw.type === 'image/bmp';
        const isLt2M = file.size / 1024 / 1024 < 2;
        if (!isJPG && !isPNG && !isBMP) {
          return this.$message.error('上传图片必须是JPG/PNG/BMP 格式!');
        }
        if (!isLt2M) {
           return this.$message.error('上传头像图片大小不能超过 2MB!');
        }
      },
      handleRemove(file) {
        console.log(file);
      },
      handlePictureCardPreview(file) {
        this.dialogImageUrl = file.url;
        this.dialogVisible = true;
      },
      handleDownload(file) {
        console.log(file);
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.orderParams.currentPage = currentPage;
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.orderParams.pageSize = pageSize;
      }
    }
  }
</script>

<style scoped>
  table, table tr th, table tr td {
    border: 1px solid #dcdfe6;
    vertical-align: top;

  }

  .order_operate {
    margin-top: 3%;
    font-size: 12px;
    padding-left: 10%;
    padding-right: 10%;
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