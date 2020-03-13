<template>
  <el-col :span="15" :push="3">
    <el-card>
      <div slot="header" style="text-align: left">
        <span style="font-weight: bold">修改手机号</span>
      </div>
      <div>
        <el-steps :space="200" :active="1" finish-status="success">
          <el-step title="已完成"></el-step>
          <el-step title="进行中"></el-step>
          <el-step title="步骤 3"></el-step>
        </el-steps>
      </div>
    </el-card>
  </el-col>
</template>

<script>
  export default {
    name: "phoneModification"
  }
</script>

<style scoped>

</style>