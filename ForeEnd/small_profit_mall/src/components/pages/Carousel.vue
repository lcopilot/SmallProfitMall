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
            <el-carousel height="370px">
              <el-carousel-item v-for="item in 4" :key="item">
                <el-image src="http://img.fhxasdsada.xyz/56a05078N6add136b.jpg"></el-image>
              </el-carousel-item>
            </el-carousel>
        </el-col>
        <el-col :span="3">
          <el-carousel height="370px" indicator-position="none">
            <el-carousel-item v-for="item in 4" :key="item">
              <div>
                <a>
                  <el-image fit="scale-down" @click="goto(1)" src="http://img.fhxasdsada.xyz/56cdc97aN3e1b0fe9.jpg"/>
                </a>

              </div>
              <div>
                <el-image fit="scale-down" src="http://img.fhxasdsada.xyz/56cdc97aN3e1b0fe9.jpg"/>
              </div>
              <div>
                <el-image fit="scale-down" src="http://img.fhxasdsada.xyz/56cdc97aN3e1b0fe9.jpg"/>
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
    }
  }
</script>

<style scoped>

</style>