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
      <div class="order_information">
        <el-row>
          <el-col :span="5" :push="1">时间:{{order.time}}</el-col>
          <el-col :span="10" :push="1">订单号:{{order.orderNumber}}</el-col>
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
                    <div style="margin-top: 19%;font-size: 14px">
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
            <td style="width: 12%">
              <div class="order_recipient" style="font-size:13px;color: red">
                ￥{{order.amount}}
              </div>
            </td>
            <td style="width: 12%">
              <div class="order_recipient">
                {{order.status=1?'待签收':'待付款'}}
              </div>
            </td>
            <td style="width: 10%">
              <div style="margin-top:10%;font-size:14px;padding-left: 10%;padding-right: 10%;">
                <el-button type="text">去付款</el-button>
                <el-button type="text">申请售后</el-button>
                <el-button type="text">删除记录</el-button>
              </div>
            </td>
          </tr>
        </table>
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
          },],
      }
    },
    methods: {
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

  .order_recipient {
    margin-top: 10%;
    font-size: 14px;
    padding-left: 10%;
    padding-right: 10%
  }

  table {
    border-color: #dcdfe6;
    text-align: center;
    border-collapse: collapse;
    padding: 2px;

  }

  .order_product_img {
    margin: 5% 0 0 15%;
    width: 55%
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
</style>