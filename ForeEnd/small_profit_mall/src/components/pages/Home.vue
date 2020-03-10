<template>
  <div class="home">
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <Carousel/>
      <el-main>
        <el-row>
          <el-col :span="19" :push="2">
            <div style="width: 1198px">
              <el-card>
                <!-- 到计时部分 -->
                <div class="se-kl">
                  <div class="se-cn">微利秒杀</div>
                  <div class="se-en">
                    <svg-icon name="seckill" class="icon"/>
                  </div>
                  <div class="se-info"><span style="font-weight:700;font-size: 21px">{{spikeSessions}} </span>场到计时
                  </div>
                  <div class="se-count">
                    <count-down v-on:start_callback="countDownS_cb(1)"
                                v-on:end_callback="countDownE_cb(1)"
                                :startTime="startTime"
                                :endTime="this.endTime"
                                :secondsTxt="''">
                    </count-down>
                  </div>
                </div>
                <!-- 秒杀商品部分 -->
                <div class="spike_product">
                  <el-carousel :interval="10000" indicator-position="none" arrow="hover"
                               height="260px">
                    <el-carousel-item v-for="(spikeProducts,index) in spikeProductList.seckillProduct"
                                      :key="index">
                      <div class="Spike_div" v-for="spikeProduct in spikeProducts"
                           :key="spikeProduct.id">
                        <router-link to="/"
                                     :title="spikeProduct.productName">
                          <div class="Spike_Product_img">
                            <el-image :src="spikeProduct.imageSite"
                                      fit="fill"/>
                          </div>
                          <div class="spike_product_name">{{spikeProduct.productName}}
                          </div>
                          <div style="margin-top: 10px">
                            <span class="spike_price">￥{{spikeProduct.spikePrice}}</span>
                            <span class="spike_before_price">￥{{spikeProduct.productPrice}}</span>
                          </div>
                        </router-link>
                      </div>
                    </el-carousel-item>
                  </el-carousel>
                </div>
                <div class="spike_product_ad">
                  <el-carousel :interval="4000" arrow="hover" height="280px"
                               indicator-position="none">
                    <el-carousel-item v-for="spikeAd in spikeAdList" :key="spikeAd.id">
                      <router-link :to="spikeAd.site">
                        <el-image :src="spikeAd.img"
                                  fit="fill"/>
                      </router-link>
                    </el-carousel-item>
                  </el-carousel>
                </div>
              </el-card>
            </div>
          </el-col>
        </el-row>
      </el-main>
      <el-main>
        <el-row>
          <el-col :span="19" :push="2">
            <div style="width: 1198px">
              <el-card>
                <div class="low_price_div">
                  <router-link to="/" class="low_price_name1">品质好物·天天低价</router-link>
                  <router-link to="/" class="low_price_name2">美好生活抢先到 ></router-link>
                </div>
                <div
                    v-for="(lowPriceProducts,index) in lowPriceProductList.slice(firstItem,lastItem)"
                    :key="index">
                  <div v-for="(lowPriceProduct,index) in lowPriceProducts" :key="index"
                       style="float: left;width: 182px;height: 250px;margin-left: 10px">
                    <router-link to="/">
                      <transition name="el-zoom-in-center">
                        <div v-show="display" class="low_price_product">
                          <el-image :src="lowPriceProduct.productImage" fit="fill"></el-image>
                          <svg-icon name="lowPrice" class="low_Price_icon"/>
                          <!-- 价格不能超过6位 -->
                          <div class="low_price">￥{{lowPriceProduct.price}}</div>
                        </div>
                      </transition>
                    </router-link>
                  </div>
                </div>

              </el-card>
            </div>
          </el-col>
        </el-row>
      </el-main>
      <ProductsFeatured/>
    </el-main>

    <el-footer>
      <Footer></Footer>
    </el-footer>
  </div>
</template>

<script>

  import { mapGetters } from 'vuex'
  import *as homeApi from '../../api/page/home';
  const Header = () => import("./Header"); //组件懒加载
  const Footer = () => import("./Footer");
  const Carousel = () => import("./Carousel");
  const CountDown = () => import("../UtilsComponent/vue2-countdown");
  const ProductsFeatured = () => import("./ProductsFeatured");

  export default {
    name: 'Home',
    components: {ProductsFeatured, Header, Footer, Carousel, CountDown},
    data() {
      return {
        display: true,
        spikeSessions:'',
        firstItem: 0,
        lastItem: 1,
        spikeAdList: [],
        spikeProductList: [],
        lowPriceProductList: [],
      }
    },
    methods: {
      countDownS_cb(value) {
        console.log('callBack--' + value + '--开始倒计回调');
      },
      countDownE_cb(value) {
        this.$router.go(0);
        console.log('callBack--' + value + '--结束倒计时回调');
      },
      //低价商品转换动画
      lowPriceProductSwitch() {
        setTimeout(() => {
          this.lowPriceProductSwitch_1();
          this.lowPriceProductSwitch_2();
        }, 4000);
      },
      lowPriceProductSwitch_1() {
        this.display = false;
      },
      lowPriceProductSwitch_2() {
        setTimeout(() => {
          this.firstItem += 1;
          this.lastItem += 1;
          if (this.lowPriceProductList.length < this.lastItem) {
            this.firstItem = 0;
            this.lastItem = 1;
          }
          this.display = true;
          this.lowPriceProductSwitch();
        }, 300);
      },
      //秒杀商品部分的广告
      getSpikeAdList() {
        homeApi.getSpikeAdList().then(res => {
          if (res.success) {
            this.spikeAdList = res.queryResult.list[0];
          }
        })
      },
      //秒杀商品
      getSpikeProductList() {
        homeApi.getSpikeProductList().then(res => {
          if (res.success) {
            this.spikeProductList = res.queryResult.list[0];
          }
        })
      },
      //秒杀场次
      getSpikeSessions(){
        let hours=new Date().getHours();
        if (hours%2!==1){
          if (hours==22){
            this.spikeSessions='00:00';
          }else {
            this.spikeSessions=hours+2+':00';
          }
        }else {
          if (hours==23){
            this.spikeSessions='00:00';
          }else {
            this.spikeSessions=hours+1+':00';
          }
        }
      },
      //低价商品
      getLowPriceProductList(){
        homeApi.getLowPriceProductList().then(res => {
          if (res.success) {
            this.lowPriceProductList = res.queryResult.list[0].productLowPrice;

          }
        })
      },

    },
    computed: {
      startTime(){
        return this.$store.state.startTime;
      },
      endTime:{
        get(){
          return this.$store.getters.endTime;
        },
        set(val){
          return this.$store.getters.endTime=val;
        }
      }
    },
    beforeMount() {
      this.getLowPriceProductList();
      this.getSpikeSessions();
      this.getSpikeAdList();
      this.lowPriceProductSwitch();
      this.getSpikeProductList();
    },

  }
</script>

<style scoped>
  .se-kl {
    width: 221px;
    height: 285px;
    background-color: #e83632;
    margin: -20px 0 0 -20px;
    position: relative;
    float: left;
  }

  .se-cn {
    position: absolute;
    top: 42px;
    left: 0;
    width: 100%;
    text-align: center;
    font-size: 34px;
    color: #fff;
  }

  .se-en {
    position: absolute;
    top: 90px;
    left: 0;
    width: 100%;
    text-align: center;
    font-size: 20px;
    color: rgba(255, 255, 255, 0.5);
  }


  .se-count {
    position: absolute;
    top: 212px;
    left: 40px;
    height: 40px;
  }

  .se-info {
    position: absolute;
    top: 170px;
    text-align: center;
    width: 100%;
    font-size: 16px;
    color: #fff;
  }

  .Spike_div {
    width: 200px;
    height: 285px;
    float: left;
    margin: 0px 0px 0px 2px;
    position: relative;
  }

  .Spike_Product_img:hover {
    transform: scale(1.05);
  }

  .Spike_Product_img {
    width: 170px;
    height: 170px;
    margin-top: 20px
  }

  .spike_price {
    width: 92px;
    height: 25px;
    text-align: center;
    color: #fff;
    font-size: 18px;
    font-weight: 700;
    line-height: 25px;
    float: left;
    background-color: #e1251b;
  }

  .spike_before_price {
    height: 100%;
    width: 92px;
    float: left;
    background: #fff;
    text-align: center;
    color: #999;
    font-size: 12px;
    line-height: 22px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    text-decoration: line-through;
    vertical-align: top;
    border: 2px solid #e1251b;
  }

  .spike_product_name {
    margin-top: 10px;
    overflow: hidden;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    white-space: nowrap;
    width: 190px;
    font-size: 12px;
    display: block;
  }

  .spike_product_ad {
    margin: -20px -20px 0 0;
    float: right;
    width: 155px
  }

  .spike_product {
    float: left;
    width: 808px;
    margin-top: -20px
  }

  .icon {
    color: white;
    margin-top: -10px;
    margin-left: 30px;
    width: 100px;
    height: 100px
  }

  .low_price_div {
    width: 1156px;
    height: 40px;
    margin-bottom: 10px
  }

  .low_price_name1 {
    float: left;
    font-size: 25px;
    font-weight: 500;
  }

  .low_price_name2 {
    float: right;
    line-height: 3.1
  }

  .low_price_name2:hover {
    color: #24292e;
  }

  .low_price_name1:hover {
    color: #24292e;
  }

  .low_price_product:hover {
    transform: scale(1.1);
  }

  .low_Price_icon {
    width: 80px;
    height: 28px;
    float: left;
    margin-left: 10px
  }

  .low_price {
    float: left;
    font-size: 18px;
    margin-left: 5px
  }

  a:hover {
    color: #e1251b;
  }

</style>
