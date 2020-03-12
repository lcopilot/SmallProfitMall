<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col :span="15" :push="3">
          <el-card class="box-card">
            <div slot="header" style="text-align: left">
              <span style="font-weight: bold">修改个人信息</span>
            </div>
            <el-row :gutter="30">
              <el-col :span="18">
                <div style="text-align: left">
                  <el-form label-position="right" label-width="80px" :model="userFrom"
                           :rules="rule" :status-icon="true">
                    <el-form-item label="用户名" prop="name">
                      <el-input type="text" v-model="userFrom.name" maxlength="15"
                                :show-word-limit="true" style="max-width: 200px"></el-input>
                      <span class="user_name_span">
                        可用于登录，请牢记哦~
                      </span>
                    </el-form-item>
                    <el-form-item label="生日">
                      <el-row>
                        <el-col :span="13">
                          <DataSelect :year="userFrom.birthday.year" :month="userFrom.birthday.month" :day="userFrom.birthday.day" @change="dateChange"/>
                        </el-col>
                        <el-col :span="11">
                           <span class="user_name_span">
                            填生日有惊喜哦~
                          </span>
                        </el-col>
                      </el-row>
                    </el-form-item>
                    <el-form-item label="性别">
                      <el-radio-group v-model="userFrom.gender">
                        <el-radio :label="1">男</el-radio>
                        <el-radio :label="2">女</el-radio>
                        <el-radio :label="3">保密</el-radio>
                      </el-radio-group>
                    </el-form-item>
                    <el-form-item label="电话">
                      {{userFrom.phone}}
                    </el-form-item>
                    <el-form-item label="邮箱">
                      {{userFrom.email}}
                    </el-form-item>
                    <el-form-item>
                      <el-button type="primary">提交</el-button>
                    </el-form-item>
                  </el-form>
                </div>
              </el-col>
              <el-col :span="5">
                <span style="font-weight: bold">修改头像<em
                    class="user_avatar_span">点击头像修改</em></span>
                <div>
                  <el-upload
                      action="/api/user/avatarUpload"
                      :show-file-list="false"
                      :data="params"
                      :on-success="handleAvatarSuccess">
                    <img v-if="avatar" :src="avatar" class="avatar">
                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                  </el-upload>
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
  const DataSelect = () => import("../../components/UtilsComponent/DateSelect");
  export default {
    name: "personalInformation",
    components: {Header, Footer, personalPage, DataSelect},
    data() {
      return {
        yearsModel: null,
        years: [],
        monthsModel: null,
        months: [],
        daysModel: null,
        days: [],
        userFrom: {
          name: '小白',
          gender: 3,
          birthday: {
            year:'',
            month:'',
            day:'',
          },
          phone: 0,
          email: 0,
        },
        rule: {
          name: [
            {required: true, message: '请输入用户名', trigger: 'blur'},
            {min: 2, max: 15, message: '长度在 2 到 15 个字符', trigger: 'blur'},
            {
              required: true,
              pattern: /^[\u4e00-\u9fa5_a-zA-Z0-9.·-]+$/,
              message: '用户名不支持特殊字符,支持中文,字母,数字,"-","_"组合',
              trigger: 'blur'
            }
          ],
        },
        params: {
          uId: "",
        },
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
      };
    },
    methods: {
      handleAvatarSuccess() {
        this.getUser();
      },
      getUser() {
        let id = sessionStorage.getItem("uId");
        this.axios
        .get("/api/user/findById", {
          params: {id}
        })
        .then(res => {
          this.signature = res.data.queryResult.list[0].signature;
          this.introduction = res.data.queryResult.list[0].introduction;
          this.avatar = res.data.queryResult.list[0].avatar;
        })
        .catch(error => {
          console.log(error);
        });
      },
      modifyUser() {
        if (this.signature == "") {
          this.$message({
            message: "签名不能为空",
            type: "warning"
          });
        } else {
          let uId = sessionStorage.getItem("uId");
          this.axios.post("/api/user/updateUser", {
            uid: uId,
            signature: this.signature,
            introduction: this.introduction,
          }).then(res => {
            if (res.data.success) {
              this.$message({
                message: "修改成功!",
                type: "success",
                onClose: this.getUser()
              });
            } else {
              this.$message({
                message: "修改失败!",
                type: "error",
              })
            }
          }).catch(error => {
            console.log(error);
          })
        }
      },
      //生日选择算法
      dateChange(Data) {
        console.log(Data.year + '-' + Data.month + '-' + Data.day);
      }
    },
    created() {
      this.params.uId = sessionStorage.getItem("uId");
      this.getUser();
    }
  }
</script>

<style scoped>

  .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }

  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }

  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }

  .user_avatar_span {
    color: #999999;
    font-size: 70%;
    font-weight: lighter;
    margin-left: 2%
  }

  .user_name_span {
    font-size: 14px;
    color: #999999;
    margin-left: 10px
  }

  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>