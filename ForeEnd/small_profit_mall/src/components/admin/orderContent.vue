<template>
  <div>
    <div
        style="font-size: 14px;height:38px;padding-top:7px;color: #999999;background-color: #f3f3f3">
      <el-row>
        <el-col :span="13">商品详情</el-col>
        <el-col :span="3">收件人</el-col>
        <el-col :span="3">金额</el-col>
        <el-col :span="3">状态</el-col>
        <el-col :span="2">操作</el-col>
      </el-row>
    </div>
    <div style="margin-top: 20px;border: 1px solid #E4E7ED;border-radius: 4px">
      <div style="text-align:left;font-size: 14px;color: #999999;background-color: #f3f3f3">
        <el-row>
          <el-col :span="5" :push="1">时间</el-col>
          <el-col :span="10" :push="1">订单号:</el-col>
        </el-row>
      </div>
      <div>
        <el-row>
          <el-col :span="13">
            <div>
              <el-row>
                <el-col :span="5">sad</el-col>
                <el-col :span="14">asda</el-col>
                <el-col :span="5">asdas</el-col>
              </el-row>
            </div>
          </el-col>
          <el-col :span="3">
            <div>
              dd
            </div>
          </el-col>
          <el-col :span="3">

          </el-col>
          <el-col :span="3">

          </el-col>
          <el-col :span="2">

          </el-col>
        </el-row>
      </div>
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
      return {}
    },
  }
</script>

<style scoped>

</style>