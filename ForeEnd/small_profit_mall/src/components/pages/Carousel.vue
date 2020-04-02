<template>
  <el-container>
    <el-header height="100px">
      <search/>
    </el-header>
    <el-main>
      <el-row type="flex" justify="center" :gutter="20">
        <el-col :span="4">
          <el-card style="height: 370px;">
            <productCategories/>
          </el-card>
        </el-col>
        <el-col :span="10">
          <el-carousel height="370px">
            <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
              <a>
                <el-image @click="goto()" :src="rotationChart.rotationChartOne"/>
              </a>
            </el-carousel-item>
          </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-carousel height="370px" indicator-position="none" :interval="6500">
            <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_1"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_2"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)"
                            :src="rotationChart.rotationChartTwo_3"/>
                </a>
              </div>
            </el-carousel-item>
          </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-card class="box-card" style="height: 370px">
            <div slot="header" style="height: 50px">
              <div class="user_avatar_div">
                <img :src="avatar" style="width: 45px; border-radius: 50%;">
              </div>
              <div class="username_div">
                <span v-if="username!=null" class="username_span">
                  <router-link to="/personalCenter" :title="username">Hi,{{username}}</router-link>
                </span>
                <span v-if="username==null" class="username_span">
                  <router-link to="/login">Hi~欢迎逛微利</router-link>
                </span>
                <span v-if="username!=null">
                  <router-link to="/" title="微利值1564">
                    <svg-icon name="integral" class="icon" style="margin-left: 6px"/>
                  </router-link>
                  <router-link to="/" title="钻石会员">
                    <svg-icon name="member" class="icon"/>
                  </router-link>
                  <router-link to="/login" @click.native="exit">退出</router-link>
                </span>
                <span v-if="username==null">
                  <router-link to="/login">登录 |</router-link>
                  <router-link to="/register" style="margin-left: 5px">注册</router-link>
                </span>
              </div>
            </div>
            <div style="height: 80px;">
              快报区域 预留 height=80
            </div>
            <div style="height: 160px;">
              <div class="CommonFunction"
                   v-for="CommonFunctions in CommonFunctionsList" :key="CommonFunctions.id">
                <router-link :to="CommonFunctions.iconSite">
                  <el-image :src="CommonFunctions.icon" class="CommonFunction_1"></el-image>
                  <div style="font-size: 12px">{{CommonFunctions.iconName}}</div>
                </router-link>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
  </el-container>
</template>

<script>
  import *as homeApi from '../../api/page/home'
  import *as commonApi from '../../api/util/common'
  const search = () => import("./Search");
  const productCategories=()=>import("./productCategories");
  export default {
    name: "Carousel",
    components: {
      search,productCategories
    },
    data() {
      return {
        //轮播图
        rotationCharts: [],
        //用户名
        username: null,
        addressData:[],
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
        CommonFunctionsList: [],
      }
    },

    methods: {
      //轮播图跳转
      goto() {
        this.$router.push({
          name: "Login",
          params: {

          }
        });
      },
      //获取轮播图
      getRotationChart() {
        homeApi.getRotationChart().then(res => {
          if (res.success) {
            this.rotationCharts = res.queryResult.list;
          }
        })
      },
      //退出
      exit() {
        sessionStorage.clear();
        this.$router.push("/login");
      },
      //获取常用功能
      getCommonFunctionsList() {
        homeApi.getCommonFunctionsList().then(res => {
          if (res.success) {
            this.CommonFunctionsList = res.queryResult.list[0];
          }
        })
      },

      getAddressData() {
        if (JSON.parse(sessionStorage.getItem('addressData'))==null){
          commonApi.getAddressData().then(res => {
            if (res.length!=0) {
              sessionStorage.setItem("addressData",JSON.stringify(res));
            }
          })
        }
      },
    },
    beforeMount() {
      //dom加载完成再加载数据
      this.$nextTick(()=>{
        this.avatar=sessionStorage.getItem("avatar");
        this.getRotationChart();
        this.getCommonFunctionsList();
        this.username = sessionStorage.getItem("username");
        this.getAddressData();
      })
    }
  }
</script>

<style scoped>

  .username_span {
    overflow: hidden;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    white-space: nowrap;
    width: 90px;
    display: block;
  }

  .username_div {
    font-size: 12px;
    float: left;
    width: 80px;
    height: 20px
  }

  .user_avatar_div {
    float: left;
    height: 45px;
    width: 45px;
    margin-left: -10px;
  }

  .icon {
    width: 20px;
    height: 20px;
    margin-right: 5px;
  }

  .CommonFunction {
    float: left;
    margin-left: 3px
  }

  .CommonFunction_1 {
    width: 32px;
    height: 32px
  }


</style>