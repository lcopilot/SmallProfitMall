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
            <div style="width: 1210px">
              <el-card class="box-card">
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

                                :hourTxt="''" :minutesTxt="''" :secondsTxt="''">
                    </count-down>
                  </div>
                </div>
                <!-- 秒杀商品部分 -->
                <div style="float: left;width: 808px;margin-top:-20px ">
                  <el-carousel :interval="10000" indicator-position="none" arrow="hover" height="260px" >
                    <el-carousel-item v-for="item in 4" :key="item">
                      <div class="Spike_div" >
                        <a>
                          <div>
                            <el-image src="http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg"
                                      fit="scale-down"/>
                          </div>
                          <div>商品名称</div>
                          <div>
                      <span
                          style="color: white;background-color: red">秒杀价</span><span>秒杀之前的价格</span>
                          </div>
                        </a>
                      </div>
                      <div class="Spike_div">
                        <a>
                          <div>
                            <el-image src="http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg"
                                      fit="scale-down"/>
                          </div>
                          <div>商品名称</div>
                          <div>
                      <span
                          style="color: white;background-color: red">秒杀价</span><span>秒杀之前的价格</span>
                          </div>
                        </a>
                      </div>
                      <div class="Spike_div">
                        <a>
                          <div>
                            <el-image src="http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg"
                                      fit="scale-down"/>
                          </div>
                          <div>商品名称</div>
                          <div>
                      <span
                          style="color: white;background-color: red">秒杀价</span><span>秒杀之前的价格</span>
                          </div>
                        </a>
                      </div>
                      <div class="Spike_div">
                        <a>
                          <div>
                            <el-image src="http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg"
                                      fit="scale-down"/>
                          </div>
                          <div>商品名称</div>
                          <div>
                      <span
                          style="color: white;background-color: red">秒杀价</span><span>秒杀之前的价格</span>
                          </div>
                        </a>
                      </div>
                    </el-carousel-item>
                  </el-carousel>
                </div>

                <div style="margin: -20px -10px 0 0; float: right;width: 150px">
                  <el-carousel :interval="4000" arrow="hover" height="260px" indicator-position="none">
                    <el-carousel-item v-for="item in 4" :key="item">
                      <a>
                        <el-image src="http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg"
                                  fit="scale-down"/>
                      </a>

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
            <div style="width: 1210px">
              <el-card class="box-card">
                <div v-for="o in 4" :key="o" class="text item">
                  低价推荐区
                  {{'列表内容 ' + o }}
                </div>
              </el-card>
            </div>
          </el-col>
        </el-row>
      </el-main>
    </el-main>

    <el-footer>
      <Footer></Footer>
    </el-footer>
  </div>
</template>

<script>
  // @ is an alias to /src
  import Header from "./Header.vue";
  import Footer from "./Footer.vue";
  import Carousel from "./Carousel";
  import CountDown from '../UtilsComponent/vue2-countdown'

  export default {
    name: 'Home',
    components: {Header, Footer, Carousel, CountDown},
    data() {
      return {
        startTime: new Date().getTime(), //开始时间
        endTime: new Date('2020/2/25 21:00:00').getTime(), //结束时间
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
      }
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
    margin: -20px 0px 0px 2px;
    position: relative;
  }

  .icon {
    color: white;
    margin-top: -10px;
    margin-left: 30px;
    width: 100px;
    height: 100px
  }
</style>
