<template>
  <el-main>
    <el-row type="flex" class="row-bg" justify="center" :gutter="20">
      <el-col :span="3">
        <router-link to="/">
          <img src="../../assets/images/logo.png" class="logo">
        </router-link>
      </el-col>
      <el-col :span="10">
        <el-input v-model="searchContent" style="width:75%;margin-right:2% " clearable
                  placeholder="请输入内容"
                  prefix-icon="el-icon-search"/>
        <el-button plain icon="el-icon-search" type="success" round>搜索</el-button>
      </el-col>
      <el-col :span="3">
        <el-badge :value="80" :max="99" class="item">
          <el-popover
              placement="bottom"
              width="440"
              trigger="hover"
              transition="el-zoom-in-top"
              :open-delay="200"
              >
            <el-table empty-text="购物车中还没有商品,赶紧选购吧!" :show-header="false">
              <el-table-column width="100" ></el-table-column>
              <el-table-column width="200" ></el-table-column>
              <el-table-column width="60" ></el-table-column>
              <el-table-column width="50" ><el-button type="text" size="small" @click="del()">删除</el-button></el-table-column>
            </el-table>
            <el-button slot="reference" type="danger">
              <svg-icon name="shoppingCart" class="cart"/>
              我的购物车
            </el-button>
          </el-popover>
        </el-badge>

      </el-col>
      <el-col :span="2">
        <el-popover
            placement="bottom"
            width="150"
            trigger="hover"
            transition="el-zoom-in-top"
            :open-delay="150"
        >
          打开微信扫一扫
          <el-image src="http://img.fhxasdsada.xyz/qrcode.png"/>
          <el-image slot="reference" :lazy="true"  style="width: 50px; height: 50px" src="http://img.fhxasdsada.xyz/qrcode.png"/>
        </el-popover>
      </el-col>
    </el-row>
  </el-main>
</template>

<script>
  export default {
    name: "Search",
    data() {
      return {
        searchContent: '',
      }
    }
  }
</script>

<style scoped>
  .logo {
    width: 150px;
    height: 50px;
  }

  .cart {
    width: 15px;
    height: 15px
  }

  .item {
    margin-right: 30px;
  }
</style>