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
                  <el-form label-position="left" label-width="80px" :model="userFrom"
                           :rules="rule" :status-icon="true">
                    <el-form-item label="昵称" prop="name">
                      <el-input type="text" v-model="userFrom.name" maxlength="15"
                                :show-word-limit="true" style="max-width: 200px"></el-input>
                      <span class="user_name_span">
                        可用于登录，请牢记哦~
                      </span>
                    </el-form-item>
                    <el-form-item label="生日">
                      <el-row>
                        <el-col :span="13">
                          <DataSelect :year="userFrom.birthday.year"
                                      :month="userFrom.birthday.month" :day="userFrom.birthday.day"
                                      @change="dateChange"/>
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
                <div>
                  <img v-if="!progressFlag" class="avatar" :src="imageUrl"/>
                  <div v-show="progressFlag" >
                    <el-progress type="circle" :percentage="progressPercent"></el-progress>
                  </div>
                  <el-upload class="img-btn" action="#" :data="params"
                             :show-file-list="false" :before-upload="beforeAvatarUpload"
                             :http-request="uploadImg">
                    <el-button type="success" plain round size="mini">更改头像</el-button>
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
        //头像上传的进度条切换
        progressFlag: false,
        //进度条
        progressPercent: 0,
        userFrom: {
          name: '小白',
          gender: 3,
          birthday: {
            year: '',
            month: '',
            day: '',
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
        //头像上传携带的参数
        params: {
          userId: "",
        },
        imageUrl: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
      };
    },
    methods: {
      //头像上传的方法
      uploadImg(f) {
        console.log(f)
        this.progressFlag = true
        let formData = new FormData()
        formData.append('file', f.file)
        formData.append('userId', f.data.userId)
        this.axios({
          url: '/apiUrl/user/updatePortrait',
          method: 'post',
          data: formData,
          headers: {'Content-Type': 'multipart/form-data'},
          onUploadProgress: progressEvent => {
            // progressEvent.loaded:已上传文件大小
            // progressEvent.total:被上传文件的总大小
            this.progressPercent = (progressEvent.loaded / progressEvent.total * 100)
          }
        }).then(res => {
          this.imageUrl = res.data.data
          if (this.progressPercent === 100) {
            this.progressFlag = false
            this.progressPercent = 0
          }
        }).then(error => {
          console.log(error)
        })
      },
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isPNG = file.type === 'image/png';
        const isBMP = file.type === 'image/bmp';
        const isLt2M = file.size / 1024 / 1024 < 4;
        if (!isJPG && !isPNG && !isBMP) {
          this.$message.error('上传图片必须是JPG/PNG/BMP 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 4MB!');
        }
        return (isJPG || isBMP || isPNG) && isLt2M;
      },
      getUser() {
        let id = sessionStorage.getItem("uId");
        this.axios.get("/apiUrl/user/findById", {
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
      this.params.userId = sessionStorage.getItem("uId");
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


  .user_name_span {
    font-size: 14px;
    color: #999999;
    margin-left: 10px
  }

  .avatar {
    width: 84%;
    height: 84%;
    border-radius: 100px;
  }

  .img-btn {
    margin-top: 12%;
  }
</style>