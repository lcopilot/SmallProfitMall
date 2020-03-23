<template>
  <el-container>
    <el-header>
      <el-row type="flex" class="row-bg" justify="center" :gutter="20">
        <el-col :span="3">
          <router-link to="/">
            <img src="../../assets/images/logo.png" class="logo">
          </router-link>
        </el-col>
        <el-col :span="10">
          <el-autocomplete
              style="width:75%;margin-right:2% "
              v-model="searchContent"
              :fetch-suggestions="querySearch"
              placeholder="搜索 商品 / 品牌"
              @select="handleSelect"
              prefix-icon="el-icon-search"
          />
          <el-button plain icon="el-icon-search" type="danger" round>搜索</el-button>

        </el-col>
        <el-col :span="3">
          <el-badge :value="CartSum" :max="99" class="item">
            <el-popover
                placement="bottom"
                width="440"
                trigger="hover"
                transition="el-zoom-in-top"
                :open-delay="200"
                @show="getCartPreview()"
            >
              <div v-if="!toke" style="text-align: center;padding: 6%;">
                <router-link to="/login">您还没有登录,请先登录吧</router-link>
              </div>
              <el-table v-if="toke" empty-text="购物车中还没有商品,赶紧选购吧!" :data="cartList"
                        :show-header="false">
                <el-table-column width="80">
                  <template slot-scope="product">
                    <el-image fit="scale-down" :src="product.row.imageSite"/>
                  </template>
                </el-table-column>
                <el-table-column width="215">
                  <template slot-scope="product">
                    <router-link :to="{path: '/product',query:{productId:product.row.productId}}">
                      <div class="cart_preview_product_name">
                        {{product.row.productName}}
                      </div>
                    </router-link>
                  </template>
                </el-table-column>
                <el-table-column width="60">
                  <template slot-scope="product">
                    <el-tag  size="small"  effect="dark" type="success">
                      {{product.row.quantity<=99?'x'+product.row.quantity:'99+'}}
                    </el-tag>
                  </template>
                </el-table-column>
                <el-table-column width="60">
                  <template slot-scope="product">
                    <el-button size="medium" @click="removeCartProduct(product.row.shoppingCartId)"
                               icon="el-icon-delete" circle></el-button>
                  </template>
                </el-table-column>
              </el-table>
              <el-button slot="reference" type="danger" @click="EnterCart">
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
            <el-image src="http://img.fhxasdsada.xyz/qrcode.jpg"/>
            <el-image slot="reference" :lazy="true" style="width: 50px; height: 50px"
                      src="http://img.fhxasdsada.xyz/qrcode.jpg"/>
          </el-popover>
        </el-col>
      </el-row>
      <el-row type="flex" justify="space-around">
        <el-col :span="12">
          <div style="margin: 10px 0 -18px 0">
            <router-link :to="PagePilot.goodsId_1_c" class="navigation_span"
                         v-for="PagePilot in PagePilotList" :key="PagePilot.cid">
              {{PagePilot.goodsName_1_c}}
            </router-link>
          </div>
        </el-col>
      </el-row>
      <el-divider/>
    </el-header>
  </el-container>
</template>

<script>
  import {mapActions} from 'vuex'
  import *as homeApi from '../../api/page/home';
  import *as productApi from '../../api/page/product';

  export default {
    name: "Search",
    data() {
      return {
        //判断登录状态
        toke: '',
        //购物车预览数据
        cartList: [
          {
            productId: '10001',
            imageSite: "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg",
            productName: "快闪店时间的话啥拉萨计划iOS家爱德华奥斯丁你发我奥士大夫 库数据案发时阿斯顿发生卡水电费卢卡申科的集合南科技撒地方猎杀对决好看可能是打飞机开始啦卡萨丁卷发梳嫁得好上刊登和安康啥的看法内连发忘记了as的好机会喀纳斯加速带回家加速带回家看",
            quantity: 20,
          }, {
            imageSite: "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg",
            productName: "快闪店时间的话啥拉萨计划iOS家爱德华奥斯丁你发我奥士大夫 库数据案发时阿斯顿发生卡水电费卢卡申科的集合南科技撒地方猎杀对决好看可能是打飞机开始啦卡萨丁卷发梳嫁得好上刊登和安康啥的看法内连发忘记了as的好机会喀纳斯加速带回家加速带回家看",
            quantity: 220,
          }, {
            imageSite: "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg",
            productName: "快闪店时间的话啥拉萨计划iOS家爱德华奥斯丁你发我奥士大夫 库数据案发时阿斯顿发生卡水电费卢卡申科的集合南科技撒地方猎杀对决好看可能是打飞机开始啦卡萨丁卷发梳嫁得好上刊登和安康啥的看法内连发忘记了as的好机会喀纳斯加速带回家加速带回家看",
            quantity: 20,
          }, {
            imageSite: "http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg",
            productName: "快闪店时间的话啥拉萨计划iOS家爱德华奥斯丁你发我奥士大夫 库数据案发时阿斯顿发生卡水电费卢卡申科的集合南科技撒地方猎杀对决好看可能是打飞机开始啦卡萨丁卷发梳嫁得好上刊登和安康啥的看法内连发忘记了as的好机会喀纳斯加速带回家加速带回家看",
            quantity: 220,
          }
        ],
        searchContent: '',
        restaurants: [],
        state1: '',
        state2: '',
        PagePilotList: [],
      }
    },
    computed: {
      //vuex
      CartSum() {
        return this.$store.state.CartSum;
      },
    },
    methods: {
      //进入购物车页面
      EnterCart() {
        this.$router.push({
          path: "/shoppingCart" //跳转的路径
        });
      },
      ...mapActions([
        "modifyCartSum",
        "getCartSum"
      ]),
      //获取购物车的预览内容
      getCartPreview() {
        console.log("购物车的预览内容")
      },
      //删除商品
      removeCartProduct(shoppingCartId) {
        let cartIdList = [];
        cartIdList.push(shoppingCartId);
        productApi.removeCart(cartIdList).then(res => {
          if (res.success) {
            this.$message({
              message: "商品已移出购物车!",
              type: "success"
            })
            this.modifyCartSum(-cartIdList.length);
            this.getCartPreview();
          } else {
            this.$message({
              message: "商品已移出购物车失败!,请重试",
              type: "error"
            })
          }
        })
      },
      //获取导航栏数据
      getPagePilot() {
        homeApi.getPagePilot().then(res => {
          if (res.success) {
            this.PagePilotList = res.queryResult.list[0];
          }
        })
      },
      //获取购物车数量
      getShoppingCartNum() {
        let userId = sessionStorage.getItem("uId");
        if (userId == null) {
          userId = 0;
        }
        productApi.getShoppingCartNumber(userId).then(res => {
          if (res.success) {
            this.getCartSum(res.queryResult.total);
          }
        })
      },
      querySearch(queryString, data) {
        let restaurants = this.restaurants;
        let results = queryString ? restaurants.filter(this.createFilter(queryString))
            : restaurants;
        // 调用 callback 返回建议列表的数据
        data(results);
      },
      createFilter(queryString) {
        return (restaurant) => {
          return (restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
        };
      },
      loadAll() {
        return [
          {"value": "三全鲜食（北新泾店）", "address": "长宁区新渔路144号"},
          {"value": "Hot honey 首尔炸鸡（仙霞路）", "address": "上海市长宁区淞虹路661号"},
          {"value": "新旺角茶餐厅", "address": "上海市普陀区真北路988号创邑金沙谷6号楼113"},
          {"value": "泷千家(天山西路店)", "address": "天山西路438号"},
          {"value": "胖仙女纸杯蛋糕（上海凌空店）", "address": "上海市长宁区金钟路968号1幢18号楼一层商铺18-101"},
          {"value": "贡茶", "address": "上海市长宁区金钟路633号"},
          {"value": "豪大大香鸡排超级奶爸", "address": "上海市嘉定区曹安公路曹安路1685号"},
          {"value": "茶芝兰（奶茶，手抓饼）", "address": "上海市普陀区同普路1435号"},
          {"value": "十二泷町", "address": "上海市北翟路1444弄81号B幢-107"},
          {"value": "星移浓缩咖啡", "address": "上海市嘉定区新郁路817号"},
          {"value": "阿姨奶茶/豪大大", "address": "嘉定区曹安路1611号"},
          {"value": "新麦甜四季甜品炸鸡", "address": "嘉定区曹安公路2383弄55号"},
          {"value": "Monica摩托主题咖啡店", "address": "嘉定区江桥镇曹安公路2409号1F，2383弄62号1F"},
          {"value": "浮生若茶（凌空soho店）", "address": "上海长宁区金钟路968号9号楼地下一层"},
          {"value": "NONO JUICE  鲜榨果汁", "address": "上海市长宁区天山西路119号"},
          {"value": "CoCo都可(北新泾店）", "address": "上海市长宁区仙霞西路"},
          {"value": "快乐柠檬（神州智慧店）", "address": "上海市长宁区天山西路567号1层R117号店铺"},
          {"value": "Merci Paul cafe", "address": "上海市普陀区光复西路丹巴路28弄6号楼819"},
          {"value": "猫山王（西郊百联店）", "address": "上海市长宁区仙霞西路88号第一层G05-F01-1-306"},
          {"value": "枪会山", "address": "上海市普陀区棕榈路"},
          {"value": "纵食", "address": "元丰天山花园(东门) 双流路267号"},
          {"value": "钱记", "address": "上海市长宁区天山西路"},
          {"value": "壹杯加", "address": "上海市长宁区通协路"},
          {"value": "唦哇嘀咖", "address": "上海市长宁区新泾镇金钟路999号2幢（B幢）第01层第1-02A单元"},
          {"value": "爱茜茜里(西郊百联)", "address": "长宁区仙霞西路88号1305室"},
          {"value": "爱茜茜里(近铁广场)", "address": "上海市普陀区真北路818号近铁城市广场北区地下二楼N-B2-O2-C商铺"},
          {"value": "鲜果榨汁（金沙江路和美广店）", "address": "普陀区金沙江路2239号金沙和美广场B1-10-6"},
          {"value": "开心丽果（缤谷店）", "address": "上海市长宁区威宁路天山路341号"},
          {"value": "超级鸡车（丰庄路店）", "address": "上海市嘉定区丰庄路240号"},
          {"value": "妙生活果园（北新泾店）", "address": "长宁区新渔路144号"},
          {"value": "香宜度麻辣香锅", "address": "长宁区淞虹路148号"},
          {"value": "凡仔汉堡（老真北路店）", "address": "上海市普陀区老真北路160号"},
          {"value": "港式小铺", "address": "上海市长宁区金钟路968号15楼15-105室"},
          {"value": "蜀香源麻辣香锅（剑河路店）", "address": "剑河路443-1"},
          {"value": "北京饺子馆", "address": "长宁区北新泾街道天山西路490-1号"},
          {"value": "饭典*新简餐（凌空SOHO店）", "address": "上海市长宁区金钟路968号9号楼地下一层9-83室"},
          {"value": "焦耳·川式快餐（金钟路店）", "address": "上海市金钟路633号地下一层甲部"},
          {"value": "动力鸡车", "address": "长宁区仙霞西路299弄3号101B"},
          {"value": "浏阳蒸菜", "address": "天山西路430号"},
          {"value": "四海游龙（天山西路店）", "address": "上海市长宁区天山西路"},
          {"value": "樱花食堂（凌空店）", "address": "上海市长宁区金钟路968号15楼15-105室"},
          {"value": "壹分米客家传统调制米粉(天山店)", "address": "天山西路428号"},
          {"value": "福荣祥烧腊（平溪路店）", "address": "上海市长宁区协和路福泉路255弄57-73号"},
          {"value": "速记黄焖鸡米饭", "address": "上海市长宁区北新泾街道金钟路180号1层01号摊位"},
          {"value": "红辣椒麻辣烫", "address": "上海市长宁区天山西路492号"},
          {"value": "(小杨生煎)西郊百联餐厅", "address": "长宁区仙霞西路88号百联2楼"},
          {"value": "阳阳麻辣烫", "address": "天山西路389号"},
          {"value": "南拳妈妈龙虾盖浇饭", "address": "普陀区金沙江路1699号鑫乐惠美食广场A13"}
        ];
      },
      handleSelect(item) {
        console.log(this.searchContent);
      }
    },
    created() {
      this.getPagePilot();
      this.getShoppingCartNum();
    },
    mounted() {
      this.toke = sessionStorage.getItem('token');
      this.restaurants = this.loadAll();
    }

  }
</script>

<style scoped>
  .cart_preview_product_name {
    font-size: 13px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }

  .cart_preview_product_name:hover {
    color: #409EFF;
  }

  .logo {
    width: 150px;
    height: 50px;
  }

  .navigation_span {
    margin-right: 20px;
    font-size: 16px;
    font-weight: 600;

  }

  .cart {
    width: 15px;
    height: 15px
  }

  .item {
    margin-right: 30px;
  }

  a:hover {
    color: #e1251b;
  }
</style>