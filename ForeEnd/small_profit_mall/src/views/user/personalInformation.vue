<template>
  <el-container>
    <el-header>
      <Header :key="header"></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage/>
        <el-col v-if="!phoneSign && !emailSign" :span="15" :push="3">
          <el-card>
            <div slot="header" style="text-align: left">
              <span style="font-weight: bold">修改个人信息</span>
            </div>
            <el-row :gutter="30">
              <el-col :span="18">
                <div style="text-align: left">
                  <el-form label-position="left" label-width="80px" :model="userFrom"
                           :rules="rule" :status-icon="true" ref="userForm">
                    <el-form-item label="昵称" prop="name">
                      <el-input type="text" v-model="userFrom.name" :maxlength="15"
                                :show-word-limit="true" style="max-width: 200px"></el-input>
                      <span class="user_name_span" v-if="userFrom.name!='小白'">
                        可用于登录，请牢记哦~
                      </span>
                      <span class="user_name_span" v-if="userFrom.name=='小白'">
                        此用户名为初始用户名,不可用,请尽快修改哦~
                      </span>
                    </el-form-item>
                    <el-form-item label="生日">
                      <el-row>
                        <el-col :span="13">
                          <DataSelect :year="birthday[0]"
                                      :month="birthday[1]" :day="birthday[2]"
                                      @change="dateChange" :key="DataSelect"/>
                        </el-col>
                        <el-col :span="11">
                           <span class="user_name_span">
                            填生日有惊喜哦~
                          </span>
                        </el-col>
                      </el-row>
                    </el-form-item>
                    <el-form-item label="性别">
                      <el-radio-group v-model="userFrom.sex">
                        <el-radio :label="'1'">男</el-radio>
                        <el-radio :label="'2'">女</el-radio>
                        <el-radio :label="'3'">保密</el-radio>
                      </el-radio-group>
                    </el-form-item>
                    <el-form-item label="电话">
                      {{userFrom.phone}}
                      <el-button style="margin-left: 20px" type="text" @click="modifyPhone">修改
                      </el-button>
                    </el-form-item>
                    <el-form-item label="邮箱">
                      <div v-if="!userFrom.email">
                        未绑定~
                        <el-button style="margin-left: 20px" type="text" @click="bindEmail()">绑定邮箱</el-button>
                      </div>
                      <div v-if="userFrom.email">
                        {{userFrom.email}}
                        <el-button style="margin-left: 20px" type="text" @click="modifyEmail">修改</el-button>
                        <el-button style="margin-left: 20px" type="text" @click="untieEmail" >解绑</el-button>
                      </div>
                    </el-form-item>
                    <el-form-item>
                      <el-button type="primary" @click="modifyUser('userForm')">提交</el-button>
                    </el-form-item>
                  </el-form>
                </div>
              </el-col>
              <el-col :span="5">
                <div>
                  <img v-if="!progressFlag" class="avatar" :src="imageUrl"/>
                  <div v-show="progressFlag">
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
        <phoneModify v-if="phoneSign"/>
        <emailModify v-if="emailSign" :emailType="emailType"/>
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
  const phoneModify = () => import("../../components/admin/phoneModify");
  const emailModify = () => import("../../components/admin/emailModify");
  import *as userApi from '../../api/page/user'  //*as别名
  export default {
    name: "personalInformation",
    components: {Header, Footer, personalPage, DataSelect, phoneModify,emailModify},
    data() {
      return {
        //邮箱变更类型
        emailType:1,
        //生日选择的组件重载的key
        DataSelect: 0,
        //修改邮箱
        emailSign: false,
        //修改手机号
        phoneSign: false,
        //重载头部组件
        header: '',
        //头像上传的进度条切换
        progressFlag: false,
        //进度条
        progressPercent: 0,
        //用户信息
        birthday: [],
        birthdays: {
          year:"",
          month:"",
          day:"",
        },
        userFrom: {
          uid: '',
          name: '小白',
          birthday: '',
          sex: "3",
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
        //头像链接
        imageUrl: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
      };
    },
    methods: {
      //头像上传的方法
      uploadImg(f) {
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
          if (res.data.success) {
            sessionStorage.setItem("avatar", res.data.queryResult.list[0]);
            this.imageUrl = res.data.queryResult.list[0];
            this.header = new Date().getTime();
            if (this.progressPercent === 100) {
              this.progressFlag = false
              this.progressPercent = 0
            }
          }
        }).catch(error => {
          this.progressFlag = false
          this.progressPercent = 0
          this.$message({
            message: "头像上传失败,请重试",
            type: "error"
          });
          console.log(error)
        })
      },
      //头像上传之前的方法
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isPNG = file.type === 'image/png';
        const isBMP = file.type === 'image/bmp';
        const isLt2M = file.size / 1024 / 1024 < 2;
        if (!isJPG && !isPNG && !isBMP) {
          this.$message.error('上传图片必须是JPG/PNG/BMP 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 2MB!');
        }
        return (isJPG || isBMP || isPNG) && isLt2M;
      },
      //获取用户信息
      getUser() {
        let userId = sessionStorage.getItem("uId");
        userApi.getUserInformation(userId)
        .then(res => {

          this.birthday = res.queryResult.list[0].birthdays;
          this.userFrom.sex = res.queryResult.list[0].sex;
          this.userFrom.name = res.queryResult.list[0].name;
          this.userFrom.phone = res.queryResult.list[0].phone;
          this.userFrom.email = res.queryResult.list[0].email;
          this.imageUrl = res.queryResult.list[0].image;
          sessionStorage.setItem("userSex",this.userFrom.sex);
          this.DataSelect = new Date().getTime();
          setTimeout(()=>{
            this.birthdays.year=this.birthday[0];
            this.birthdays.month=this.birthday[1];
            this.birthdays.day=this.birthday[2];
          },200)
        })
        .catch(error => {
          console.log(error);
        });
      },
      //修改手机号
      modifyPhone() {
        this.phoneSign = true;
        sessionStorage.setItem("phoneSign", JSON.stringify(true));
      },
      //修改用户信息
      modifyUser(formName) {
        this.$refs[formName].validate((valid) => {
          if (this.userFrom.name==sessionStorage.getItem("username") && this.userFrom.sex==sessionStorage.getItem("userSex") && this.birthday[0]==this.birthdays.year && this.birthday[1]==this.birthdays.month && this.birthday[2]==this.birthdays.day ) {
            this.$message({
              message: "您还没有修改哦~",
              type: "warning",
            })
          } else if (valid) {
            userApi.modifyUser(this.userFrom).then(res => {
              if (res.success) {
                this.getUser();
                this.$message({
                  message: "修改成功!",
                  type: "success",
                });
                sessionStorage.setItem("username", this.userFrom.name);
              } else {
                this.$message({
                  message: "修改失败!",
                  type: "error",
                })
              }
            }).catch(error => {
              console.log(error);
            })
          } else {
            this.$message({
              message: "请输入正确的用户名哦~",
              type: "warning",
            })
          }
        })
      },
      //绑定邮箱
      bindEmail(){
        this.emailType=1;
        this.emailSign = true;
        sessionStorage.setItem("emailType", this.emailType);
        sessionStorage.setItem("emailSign", JSON.stringify(true));
      },
      //解绑邮箱
      untieEmail(){
        this.emailType=3;
        this.emailSign = true;
        sessionStorage.setItem("emailType", this.emailType);
        sessionStorage.setItem("emailSign", JSON.stringify(true));
      },
      //修改邮箱
      modifyEmail(){
        this.emailType=2;
        this.emailSign = true;
        sessionStorage.setItem("emailType", this.emailType);
        sessionStorage.setItem("emailSign", JSON.stringify(true));
      },
      //生日选择算法
      dateChange(Data) {
        this.birthdays.year=Data.year;
        this.birthdays.month=Data.month;
        this.birthdays.day=Data.day;
        this.userFrom.birthday = Data.year + '-' + Data.month + '-' + Data.day;
      },

    },
    created() {
      if (sessionStorage.getItem("phoneSign") == "true") {
        this.phoneSign = true;
      } else {
        this.phoneSign = false;
      }
      if (sessionStorage.getItem("emailSign") == "true") {
        this.emailSign = true;
      } else {
        this.emailSign = false;
      }
      this.userFrom.uid = sessionStorage.getItem("uId");
      this.imageUrl = sessionStorage.getItem("avatar");
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