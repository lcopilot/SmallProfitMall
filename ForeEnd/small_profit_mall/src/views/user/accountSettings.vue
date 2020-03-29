<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage />
        <el-col :span="15" :push="3">
          <el-card>
            <div slot="header" style="text-align: left;font-size: 17px;font-weight:600;">账户设置</div>
            <div style="width: 80%;text-align: left;">
              <el-form label-position="right" label-width="100px" :model="accountForm">
                <el-form-item label="账户密码">
                  **********
                  <el-button type="text">修改</el-button>
                </el-form-item>
                <el-form-item label="支付密码">
                  未设置
                  <el-button type="text">
                    修改
                  </el-button>
                  <el-button type="text">
                    设置
                  </el-button>
                </el-form-item>
                <el-form-item label="刷脸支付">
                  已开启
                  <el-button type="text">更新人脸</el-button>
                  <el-button type="text">关闭刷脸支付</el-button>
                </el-form-item>
              </el-form>
            </div>
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
  const personalPage = () => import("../../components/admin/personalHubPage");

  export default {
    name: "accountSettings",
    components: { personalPage },
    data() {
      return {
        accountForm: {

        }
      }
    },
    methods: {

    }
  }
</script>

<style scoped>

</style>