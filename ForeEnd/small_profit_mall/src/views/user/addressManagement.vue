<template>
  <el-container>
    <el-header v-if="!isOrder">
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage v-if="!isOrder" />
        <el-col :span="16" :push="3">
          <el-card v-if="!isOrder" class="address_top_card">
            <div>
              <span class="address_top_span1">
                 收货地址管理
              </span>
              <span class="address_top_span2">已添加{{addressList.length}}个,一共可以添加9个</span>
              <el-button class="el-icon-plus address_top_btn" type="text"
                         @click="addAddress()">新增
              </el-button>
            </div>
          </el-card>
          <el-card v-if="!isOrder" class="address_bottom_card"
                   v-for="(address,index) in addressList" :key="index">
            <div slot="header">
              <el-row :gutter="20">
                <el-col :span="8">
                  <el-tag type="success" v-if="address.alias" effect="dark" size="small">
                    {{address.alias}}
                  </el-tag>
                </el-col>
                <el-col :span="3" :offset="address.alias==''? 17:9">
                  <el-button type="text" class="address_Btn" @click="editAddress(index)">编辑
                  </el-button>
                </el-col>
                <el-col :span="3">
                  <el-button type="text" class="address_Btn" @click="removeAddress(index)">删除
                  </el-button>
                </el-col>
              </el-row>
            </div>
            <div style="text-align: left;">
              <el-form label-position="right" id="addressList" label-width="70px"
                       :model="addressForm">
                <el-form-item label="姓名">
                  <div class="address_message_div">{{address.name}}</div>
                </el-form-item>
                <el-form-item label="电话">
                  <div class="address_message_div">{{address.phone}}</div>
                </el-form-item>
                <el-form-item label="所在区域">
                  <div class="address_message_div">{{address.areas}}</div>
                </el-form-item>
                <el-form-item label="地址">
                  <div class="address_message_div">{{address.detailedAddress}}</div>
                </el-form-item>
                <el-form-item label="邮箱">
                  <div class="address_message_div">{{address.email}}</div>
                </el-form-item>
              </el-form>
              <div class="address_bottom_card_def">
                <el-switch
                    class="address_top_btn"
                    v-model="address.defaults"
                    active-text="默认" @change="changeDefault(index)">
                </el-switch>
              </div>
            </div>
          </el-card>
          <el-dialog  :title="editBtn==false ? '新增收货地址':'修改收货地址'" :visible.sync="dialogFormVisible" @close="cancel">
            <div class="address_add_div">
              温馨提示:*号为必填哦~
            </div>
            <div style="width: 70%;margin-left: 12%">
              <el-form :model="addressForm" :rules="rules" label-position="right" ref="addressForm"
                       label-width="110px" :status-icon="true">
                <el-form-item label="收件人姓名" prop="name">
                  <el-input v-model="addressForm.name"
                            clearable></el-input>
                </el-form-item>
                <el-form-item label="收件人电话" prop="phone">
                  <el-input v-model.number="addressForm.phone" clearable :maxlength="11"
                            show-word-limit></el-input>
                </el-form-item>
                <el-form-item label="邮件" prop="email">
                  <el-input v-model="addressForm.email" clearable></el-input>
                </el-form-item>
                <el-form-item label="选择所在地区" prop="areaCode">
                  <div style="text-align: left">
                    <el-cascader :options="options" :props="defaultParams"
                                 v-model="addressForm.areaCode"
                                 @change="handleChange" separator=" " :filterable="true"
                                 placeholder="请选择地址"
                                 :clearable="true" ref="cityAll" style="width:100%;"/>
                  </div>
                </el-form-item>
                <el-form-item label="具体地址" prop="detailedAddress">
                  <el-input type="textarea" v-model="addressForm.detailedAddress" rows="3"
                            :maxlength="250" show-word-limit></el-input>
                </el-form-item>
                <el-form-item label="地址别名" prop="alias">
                  <div style="text-align: left">
                    <el-autocomplete  :maxlength="12"
                                     show-word-limit v-model="addressForm.alias"
                                     :fetch-suggestions="querySearch" placeholder="建议填写常用地址名称"
                                     clearable></el-autocomplete>
                  </div>
                </el-form-item>
                <el-form-item>
                  <div style="text-align: left">
                    <el-switch
                        v-model="addressForm.defaults"
                        active-text="默认"
                        inactive-text="不默认">
                    </el-switch>
                  </div>
                </el-form-item>
              </el-form>
              <div slot="footer">
                <el-button v-if="addBtn" type="primary" @click="submitAddress('addressForm')"
                           style="width: 28%">确
                  定
                </el-button>
                <el-button v-if="editBtn" type="primary"
                           @click="submitAddress('addressForm',addressForm.addressId)"
                           style="width: 28%">提交
                </el-button>
                <el-button @click="cancel()" style="width: 28%">取 消</el-button>
              </div>
            </div>
          </el-dialog>
        </el-col>
      </el-row>
    </el-main>
    <el-footer v-if="!isOrder">
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  import * as commonApi from "../../api/util/common";
  import * as userApi from "../../api/page/user";

  const personalPage = () => import("../../components/admin/personalHubPage");

  export default {
    inject: ["reload"],
    name: "addressManagement",
    components: { personalPage},
    props:{
      isOrder:{
        type:Boolean,
        required:false,
        defaults:false,
      }
    },
    data() {
      //手机号校验
      let checkPhone = (rule, value, callback) => {
        const phoneReg = /^1[3|4|5|6|7|8][0-9]{9}$/
        if (!value) {
          return callback(new Error('电话号码不能为空'))
        }
        setTimeout(() => {
          if (!Number.isInteger(+value)) {
            callback(new Error('请输入数字值'))
          } else {
            if (phoneReg.test(value)) {
              callback()
            } else {
              callback(new Error('手机号码格式不正确'))
            }
          }
        }, 100)
      };
      return {
        //新增按钮
        addBtn: false,
        //编辑按钮
        editBtn: false,
        //地址别名输入建议的提示数据
        restaurants: [],
        //对话框
        dialogFormVisible: false,
        //地址级联选择器绑定的参数
        options: [],
        //新增地址的表单
        addressForm: {
          //用户id
          userId: '',
          //地址备注限制10个字
          alias: '',
          //收件人姓名
          name: "",
          //收件人手机
          phone: '',
          //所在地区
          areaCode: [],
          //所在区域
          areas: '',
          //具体地址
          detailedAddress: "",
          //邮件
          email: "",
          //是否默认地址 1不默认 2默认
          defaults: false,
        },
        //地址选择的级联列表参数
        defaultParams: {
          label: 'name',
          value: 'code',
          children: 'children',
          //单选任意一级
          // checkStrictly: true,
        },
        //地址列表
        addressList: [],
        //新增地址表单校验
        rules: {
          name: [
            {required: true, message: "请填写收件人名字", trigger: 'blur'}
          ],
          phone: [
            {required: true, validator: checkPhone, trigger: 'blur'}
          ],
          email: [
            {required: false, message: '请输入邮箱地址', trigger: 'blur'},
            {type: 'email', message: '请输入正确的邮箱地址', trigger: ['blur', 'change']}
          ],
          areaCode: [
            {required: true, message: "请选择所在区域", trigger: 'blur'}
          ],
          detailedAddress: [
            {required: true, message: "请填写具体地址", trigger: 'blur'}
          ],
          alias: [
            {required: false, trigger: 'blur'},
            {max: 12, message: '地址别名只能在0-12位之间', trigger: 'blur'},
          ],
        }
      }
    },
    methods: {
      //地址别名输入框建议的相关方法
      querySearch(queryString, cb) {
        let restaurants = this.restaurants;
        let results = queryString ? restaurants.filter(this.createFilter(queryString))
            : restaurants;
        // 调用 callback 返回建议列表的数据
        cb(results);
      },
      createFilter(queryString) {
        return (restaurant) => {
          return (restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
        };
      },
      loadAll() {
        return [
          {"value": "家", "alias": "家"},
          {"value": "父母家", "alias": "父母家"},
          {"value": "闺蜜家", "alias": "闺蜜家"},
          {"value": "学校", "alias": "学校"},
          {"value": "公司", "alias": "公司"},
        ];
      },
      //新增调用的方法
      addAddress() {
        if (this.addressList.length < 9) {
          this.addBtn = true,
              this.dialogFormVisible = true;
          this.getAddressData();
        } else {
          this.$message({
            message: "只能添加9个哦~",
            type: "warning"
          })
        }
      },
      //编辑按钮调用的方法
      editAddress(index) {
        this.editBtn = true;
        this.dialogFormVisible = true;
        this.getAddressData();
        this.addressForm = this.addressList[index];
        sessionStorage.setItem("addressListIndex", index);
        sessionStorage.setItem("addressListData", JSON.stringify(this.addressList[index]))
      },
      //修改默认时的方法
      changeDefault(index, addressId) {
        if (!this.addressList[index].defaults) {
          this.$message({
            message: "必须拥有默认地址哦~",
            type: "warning"
          })
          this.addressList.forEach((address) => {
            address.defaults = false;
          });
          this.addressList[index].defaults = true;
        }else{
          this.addressList.forEach((address) => {
            address.defaults = false;
          });
          this.addressList[index].defaults = true;
          let addressModificationParams={
            "userId":sessionStorage.getItem("uId"),
            "addressId":this.addressList[index].addressId
          };
          userApi.modifyDefault(addressModificationParams).then(res=>{
            if (res.success){
              this.$message({
                message: "默认地址修改成功",
                type: "success"
              })
            }
          })
        }
      },
      //关闭取消的回调
      cancel() {
        this.reload();
      },
      //编辑,提交修改
      submitAddress(formName, addressId) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            if (addressId != null) {
              let addressList = JSON.parse(sessionStorage.getItem('addressListData'));
              console.log()
              let index = sessionStorage.getItem("addressListIndex");
              let addressForm = this.addressForm;
              if (addressList.name == addressForm.name &&
                  addressList.phone == addressForm.phone &&
                  addressList.areaCode.toString() == addressForm.areaCode.toString() &&
                  addressList.address == addressForm.address &&
                  addressList.email == addressForm.email &&
                  addressList.default == addressForm.default &&
                  addressList.alias == addressForm.alias
              ) {
                this.$message({
                  message: "您还没有修改哦~",
                  type: "warning"
                })
              } else {
                if (this.addressList.length == 1) {
                  this.addressForm.defaults = true;
                }
                userApi.addAddress(this.addressForm).then(res => {
                  if (res.success) {
                    this.$message({
                      message: "地址修改成功!",
                      type: "success",
                    })
                    this.dialogFormVisible = false
                  } else {
                    this.$message({
                      message: "地址修改失败!,请重试",
                      type: "error",
                    })
                  }
                })
              }
            } else {
              if (this.addressList.length == 0) {
                this.addressForm.defaults = true;
              }
              this.addressForm.userId = sessionStorage.getItem("uId");
              userApi.addAddress(this.addressForm).then(res => {
                if (res.success) {
                  this.$message({
                    message: "添加成功!",
                    type: "success",
                  })
                  this.dialogFormVisible = false
                } else {
                  this.$message({
                    message: "添加失败!,请重试",
                    type: "error",
                  })
                }
              })
            }

          }
        });

      },
      //删除地址
      removeAddress(index) {
        this.$confirm('此操作将永久删除该地址, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          userApi.removeAddress(sessionStorage.getItem("uId"), this.addressList[index].addressId,
              this.addressList[index].defaults).then(res => {
            if (res.success) {
              this.$message({
                type: 'success',
                message: '删除成功!'
              });
              this.cancel();
            }
          })
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          });
        });
      },
      //获取地址
      getAddress() {
        userApi.getAddress(sessionStorage.getItem("uId")).then(
            res => {
              if (res.success) {
               this.addressList = res.queryResult.list;
              }
            }
        );
      },
      //地址级联选择器变化时调用的方法
      handleChange(value) {
        const checkedNodes = this.$refs['cityAll'].getCheckedNodes()
        if (checkedNodes.length != 0) {
          checkedNodes[0].pathLabels.forEach((item) => {
            this.addressForm.areas += item + ' ';
          });
        }
      },
      //获取级联列表的数据
      getAddressData() {
        if (JSON.parse(sessionStorage.getItem('addressData')) == null) {
          commonApi.getAddressData().then(res => {
            if (res.length != 0) {
              sessionStorage.setItem("addressData", JSON.stringify(res));
            }
          })
        } else {
          this.options = JSON.parse(sessionStorage.getItem('addressData'));
        }
      },
    },
    created() {
      this.restaurants = this.loadAll();
      this.getAddress();
    }
  }
</script>

<style scoped>
  #addressList .el-form-item {
    margin-bottom: 0;
  }

  .address_message_div {
    width: 99%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .address_Btn:hover {
    color: #e2231a;
  }

  .address_top_card {
    width: 97%;
    text-align: left
  }

  .address_top_span1 {
    font-weight: 600;
    font-size: 18px
  }

  .address_top_span2 {
    font-size: 12px;
    color: #999999;
    margin-left: 2%;
  }

  .address_top_btn {
    float: right;
    font-size: 16px;
    padding: 3px 0;
    margin-right: 2%
  }

  .address_top_btn:hover {
    color: #e2231a;
  }

  .address_bottom_card_def {
    margin-top: 3%;
    height: 15px
  }

  .address_bottom_card {
    margin: 2% 2% 0 0;
    width: 31%;
    float: left
  }

  .address_add_div {
    text-align: left;
    margin: 0 0 3% 20%;
    font-size: 12px;
    color: #999999
  }
</style>