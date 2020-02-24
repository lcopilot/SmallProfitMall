<template>
  <el-container>
    <el-header>
      <Search/>
    </el-header>
    <el-main>
      <el-row type="flex" class="row-bg" justify="center" :gutter="20">
        <el-col :span="3">
            <ul>
              <li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="hover">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li>
              <li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li>
              <li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li>
              <li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li><li>
                <el-popover
                    placement="right"
                    width="400"
                    trigger="click">
                  <el-table>
                    <el-table-column width="150" property="date" label="日期"></el-table-column>
                    <el-table-column width="100" property="name" label="姓名"></el-table-column>
                    <el-table-column width="300" property="address" label="地址"></el-table-column>
                  </el-table>
                  <el-button type="text" size="small" @click="del()" slot="reference">
                    <router-link to="/login">电器 /</router-link>
                  </el-button>
                </el-popover>
              </li>
            </ul>
        </el-col>
        <el-col :span="10">
            <el-carousel height="370px" interval="4000">
              <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
                <el-image :src="rotationChart.rotationChartOne"/>
              </el-carousel-item>
            </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-carousel height="370px" indicator-position="none" interval="4000">
            <el-carousel-item v-for="rotationChart in rotationCharts" :key="rotationChart.rid">
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)" :src="rotationChart.rotationChartTwo_1"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)" :src="rotationChart.rotationChartTwo_2"/>
                </a>
              </div>
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)" :src="rotationChart.rotationChartTwo_3"/>
                </a>
              </div>
            </el-carousel-item>
          </el-carousel>
        </el-col>
        <el-col :span="3">
          <div>

          </div>
        </el-col>
      </el-row>
    </el-main>
  </el-container>
</template>

<script>
  import Search from "./Search";

  export default {
    name: "Carousel",
    components: {
      Search
    },
    data(){
      return{
        rotationCharts:[],
      }
    },
    methods:{
      goto(articleId) {
        this.$router.push({
          name: "Login",
          params: {
            id: articleId,
          }
        });
      },
      getRotationChart(){
        this.axios.get("/api/homepageController/findRotationChart")
        .then(res=>{
          if (res.data.success){
            this.rotationCharts=res.data.queryResult.list;
          }
        })
      }
    },
    created() {
      this.getRotationChart();
    }
  }
</script>

<style scoped>

</style>