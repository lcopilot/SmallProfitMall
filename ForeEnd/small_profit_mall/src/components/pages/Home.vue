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
                  <div class="se-info"><span style="font-weight:700;font-size: 21px">18:00 </span>场到计时
                  </div>
                  <div class="se-count">
                    <count-down v-on:start_callback="countDownS_cb(1)"
                                v-on:end_callback="countDownE_cb(1)"
                                :startTime="startTime" :endTime="endTime"
                                :secondsTxt="''">
                    </count-down>
                  </div>
                </div>
                <!-- 秒杀商品部分 -->
                <div style="float: left;width: 808px;margin-top:-20px ">
                  <el-carousel :interval="10000" indicator-position="none" arrow="hover"
                               height="260px">
                    <el-carousel-item v-for="item in 4" :key="item">
                      <div class="Spike_div" v-for="o in 4" :key="o">
                        <router-link to="/"
                                     title="联想ThinkPad 翼480（1ACD）英特尔酷睿i7 14英寸轻薄笔记本电脑(i7-8550U 8G 128GSSD+1T 2G独显 FHD)冰原银">
                          <div class="Spike_Product_img">
                            <el-image src="http://img.fhxasdsada.xyz/8e4b9d53e41b72a4.jpg"
                                      fit="fill"/>
                          </div>
                          <div class="spike_product_name">{{o}}联想ThinkPad 翼480（1ACD）英特尔酷睿i7
                            14英寸轻薄笔记本电脑(i7-8550U 8G 128GSSD+1T 2G独显 FHD)冰原银
                          </div>
                          <div style="margin-top: 10px">
                            <span class="spike_price">￥59.00</span><span class="spike_before_price">￥70.00</span>
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
                          <el-image :src="lowPriceProduct.img" fit="fill"></el-image>
                          <svg-icon name="lowPrice" class="low_Price_icon"/>
                          <!-- 价格不能超过6位 -->
                          <div class="low_price">￥{{lowPriceProduct.a}}</div>
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
  // @ is an alias to /src
  const Header = ()=>import("./Header"); //组件懒加载
  const Footer = ()=>import("./Footer");
  const Carousel = ()=>import("./Carousel");
  const CountDown = ()=>import("../UtilsComponent/vue2-countdown");
  const ProductsFeatured = ()=>import("./ProductsFeatured");

  export default {
    name: 'Home',
    components: {ProductsFeatured, Header, Footer, Carousel, CountDown},
    data() {
      return {
        display: true,
        startTime: new Date().getTime(), //开始时间
        endTime: new Date('2020/2/26 21:00:00').getTime(), //结束时间
        firstItem: 0,
        lastItem: 1,
        timer: 0,
        spikeAdList:[],
        lowPriceProductList: [
          [
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
          ],
          [
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 2},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},

          ],
          [
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 3},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},

          ],
          [
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 4},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},

          ],
          [
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 5},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},
            {'img': 'http://img.fhxasdsada.xyz/cee1d8b002df_340x340_90.jpg', 'a': 1},

          ],

        ],
      }
    },
    methods: {
      countDownS_cb(value) {
        console.log('callBack--' + value + '--开始倒计时结束回调');
      },
      countDownE_cb(value) {
        console.log('callBack--' + value + '--活动剩余倒计时结束回调');
        if (this.endTime <= 0) {
          return
        }
      },
      lowPriceProductSwitch() {
        this.timer = setInterval(() => {
          this.lowPriceProductSwitch_1();
          this.lowPriceProductSwitch_2();
        }, 3000);
      },
      lowPriceProductSwitch_1() {
        this.display = false;
      },
      lowPriceProductSwitch_2() {
        setTimeout(() => {
          clearInterval(this.timer);
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
      getSpikeAdList(){
        this.axios.get('/api/CommodityController/findAd').then(res=>{
          if (res.data.success){
            this.spikeAdList=res.data.queryResult.list[0];
          }
        })
      },
    },
    created() {
      this.lowPriceProductSwitch();
      this.getSpikeAdList();
    }

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
