<template>
  <el-container>
    <el-header height="80px">
      <Header/>
    </el-header>
    <el-main>
      <search/>
      <el-main>
        <el-row type="flex" justify="center" :gutter="20" style="margin-top: 40px">
          <!-- 商品图片区域-->
          <el-col :span="6">
            <div style="position: relative;" v-if="!videoShow">
              <vue-photo-zoom-pro style="width: 355px;" type="circle"
                                  :url="bigImg" :scale="2"
                                  @mouseenter="stopSwitchProductImg()"
                                  @mouseleave="switchProductImg()"/>
              <div class="product_play" v-if="product.video">
                <svg-icon name="play" class="icon_play" @click.native="playerVideo()"/>
              </div>
            </div>
            <div v-if="videoShow" style="position: relative;">
              <video-player class="video-player vjs-custom-skin"
                            ref="videoPlayer"
                            :playsinline="true"
                            :options="playerOptions"
                            @play="onPlayerPlay($event)"
                            @ended="onPlayerEnded($event)"
                            style="width: 355px;height: 355px">
              </video-player>
              <div class="product_end">
                <a>
                  <svg-icon name="ended" class="icon_ended" @click.native="endedVideo()"/>
                </a>
              </div>
            </div>
            <div>
              <el-row type="flex" justify="center" :gutter="6">
                <el-col :span="5" v-for="(productImg,index) in product.imageSite" :key="index">
                  <div class="product_small_img" @mouseenter="enter(index)"
                       @mouseleave="switchProductImg()">
                    <el-image :src="productImg" fit="scale-down"></el-image>
                  </div>
                </el-col>
              </el-row>
              <el-row style="font-size: 13px;color: red">
                <el-col :span="4">
                  <el-link :underline="false">
                    <svg-icon name="service"
                              class="icon"></svg-icon>
                    客服
                  </el-link>
                </el-col>
                <el-col :span="4">
                  <el-link :underline="false">
                    <svg-icon name="Favorite"
                              class="icon"></svg-icon>
                    收藏
                  </el-link>
                </el-col>
                <el-col :span="4">
                  <el-link :underline="false">
                    <svg-icon name="share"
                              class="icon"></svg-icon>
                    分享
                  </el-link>
                </el-col>
                <el-col :span="12">
                  <el-link :underline="false"
                           style="text-align: right;margin-left: 130px;color: #999999">
                    举报
                  </el-link>
                </el-col>
              </el-row>
            </div>
          </el-col>
          <el-col :span="10">
            <el-form ref="form" :model="productForm" label-width="80px" style="width: 90%"
                     size="small"
                     label-position="right">
              <el-form-item prop="name">
                <div class="product_name">
                  {{product.productName}}
                </div>
              </el-form-item>
              <el-form-item label="价格">
                <div class="form_left">
                  <el-card class="box-card" shadow="never">
                    <el-row>
                      <el-col :span="4" style="color: #999999"> 微利价:</el-col>
                      <el-col :span="16" class="product_price">
                        ￥{{product.productPrice}}
                      </el-col>
                      <el-col :span="4" style="color: #999999"> 累计销量<span
                          class="product_sales">{{product.sales}}</span></el-col>
                    </el-row>
                    <div style="color: #999999">促销 会员特价:
                      <router-link to="/login">登录</router-link>
                      ,确认是否享受优惠
                    </div>
                  </el-card>
                </div>
              </el-form-item>
              <el-form-item label="配送至">
                <div class="form_left">
                  <el-cascader :options="options" :props="defaultParams" v-model="selectedOptions"
                               @change="handleChange" separator=" " :filterable="true"
                               placeholder="请选择地址"
                               :clearable="true" ref="cityAll"/>
                  <svg-icon name="freeShipping"
                            style="width:62px;height: 35px;margin-bottom: -11px"/>
                  <svg-icon name="FS"
                            style="width:30px;height: 30px;margin-bottom: -8px"/>
                </div>
              </el-form-item>
              <el-form-item label="重量">
                <div class="form_left">
                  {{product.weight}}
                </div>
              </el-form-item>
              <el-form-item label="尺码" v-if="product.size[0]">
                <div class="form_left">
                  <el-select v-model="productForm.size" filterable placeholder="请选择尺码">
                    <el-option
                        v-for="size in product.size"
                        :label="size"
                        :value="size"
                        :key="index"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="配置" v-if="product.specification[0]">
                <div class="form_left">
                  <el-select v-model="productForm.specification" filterable placeholder="请选择规格">
                    <el-option
                        v-for="specification in product.specification"
                        :label="specification"
                        :value="specification"
                        :key="index"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="颜色" v-if="product.colour[0]">
                <div class="form_left">
                  <el-radio-group v-model="productForm.colour" size="medium">
                    <el-radio-button v-for="(colour,index) in product.colour" :key="index"
                                     :label="colour" :value="index"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="套餐" v-if="product.combo[0]">
                <div class="form_left">
                  <el-radio-group v-model="productForm.combo" size="medium">
                    <el-radio-button :label="combo" :value="index" :key="index"
                                     v-for="(combo,index) in product.combo"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="口味" v-if="product.taste">
                <div class="form_left">
                  <el-radio-group v-model="productForm.taste" size="medium">
                    <el-radio-button :label="taste" :value="index" :key="index"
                                     v-for="(taste,index) in product.taste"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item size="large">
                <div class="form_left">
                  <el-input-number v-model="productForm.quantity" style="width: 30%" :min="1"
                                   :max="99"/>
                  <el-button type="danger" @click="onSubmit" style="margin-left: 10px"
                             icon="el-icon-circle-plus-outline">加入购物车
                  </el-button>
                  <el-button type="danger" @click="onSubmit" :disabled="product.inventory>0">立即购买
                  </el-button>
                </div>
                <div class="form_left" style="color:#999999;">
                  剩余库存 <span class="product_repertory">{{product.inventory}}</span>
                </div>
              </el-form-item>
              <el-form-item>
                <el-collapse @change="handleChange">
                  <el-collapse-item title="服务承诺" name="1">
                    <div>支持七天与理由</div>
                    <div>
                      过敏包退 破损包退 正品保障 进口保税 赠运费险
                    </div>
                  </el-collapse-item>
                </el-collapse>
              </el-form-item>
            </el-form>
          </el-col>
          <el-col :span="3">
            <div style="background-color: red">
              ss
            </div>
          </el-col>
        </el-row>
      </el-main>
      <el-main>
        <el-row>
          <el-col :span="20" :push="2">
            <el-tabs type="border-card">
              <el-tab-pane>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="introduction"></svg-icon>
                  商品介绍
                </div>
                我的行程
              </el-tab-pane>
              <el-tab-pane>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="evaluation"></svg-icon>
                  商品评价
                </div>
                <el-row>
                  <el-col :span="5">
                    <el-progress type="dashboard" :stroke-width="8" :percentage="98"></el-progress>
                    <div style="margin-top: -28px;">
                      <h3>好评度</h3>
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="text-align: left">
                      <el-tag style="margin-right: 15px;margin-bottom: 10px"
                              v-for="item in tags"
                              :key="item.label"
                              :type="item.type"
                              effect="plain">
                        <el-link :underline="false" :type="item.type" v-text="item.label"/>
                      </el-tag>
                    </div>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="22" :push="1">
                    <el-tabs style="margin-top: 20px">
                      <el-tab-pane label="全部评价(600+)">
                        <div v-for="item in 6">
                          <el-row :gutter="10">
                            <el-col :span="4">
                              <img :src="avatar"
                                   class="product_comment_avatar">
                              <span style="font-size: 12px">小白第点还看电视</span>
                            </el-col>
                            <el-col :span="20" style="text-align: left">
                              <div>
                                <el-rate
                                    v-model="value"
                                    disabled
                                    show-text
                                    text-color="#ff9900"
                                    score-template="{value}"
                                    :colors="colors"
                                    :texts="['1.0', '2.0', '3.0', '4.0', '5.0']">
                                </el-rate>
                              </div>
                              <div>
                                评论内容水电费类似的啥电话客服卡萨丁福利卡开始大幅还看见爱上加速大部分卡水电费击杀的好机会阿萨德饭好加速度博览会家岁的女孩寄啥德令哈asUSDA
                              </div>
                              <div>
                                <div class="product_comment_img">
                                  <el-image
                                      src="http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"
                                      fit="scale-down"/>
                                  <div class="product_play" style="margin-top: -55px"
                                       v-if="product.video">
                                    <el-link :underline="false"
                                             @click.native="playerVideoComment()">
                                      <svg-icon name="play" class="icon_play"/>
                                    </el-link>
                                  </div>
                                </div>
                                <div class="product_comment_img" v-for="item in 10">
                                  <el-image title="查看大图"
                                            src="http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"
                                            fit="scale-down" :preview-src-list="srcList"/>
                                </div>
                                <div v-if="videoShow" class="product_comment_video">
                                  <video-player class="video-player vjs-custom-skin"
                                                ref="videoPlayer_1"
                                                :playsinline="true"
                                                :options="{
                                                    playbackRates: [0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
                                                    autoplay: false,
                                                    muted: false,
                                                    loop: true,
                                                    preload: 'auto',
                                                    language: 'zh-CN',
                                                    aspectRatio: '1:1',
                                                    fluid: true,
                                                    sources: [{
                                                    //类型
                                                    type: 'video/ogg',
                                                    type: 'video/webm',
                                                    type: 'video/mp4',
                                                    //url地址
                                                    src: 'http://productdata.fhxasdsada.xyz/sdkjj.mp4',
                                                    }],
                                                    //你的封面地址
                                                    poster: '',
                                                    //允许覆盖Video.js无法播放媒体源时显示的默认信息。
                                                    notSupportedMessage: '此视频暂无法播放，请稍后再试',
                                                    controlBar: {
                                                    timeDivider: true,
                                                    durationDisplay: true,
                                                    remainingTimeDisplay: false,
                                                    //全屏按钮
                                                    fullscreenToggle: true
                                                }}"
                                                @play="onPlayerPlay($event)"
                                                @ended="onPlayerEnded($event)"
                                                style="width: 355px;height: 355px">
                                  </video-player>
                                  <div class="product_end">
                                    <a>
                                      <svg-icon name="ended" class="icon_ended" @click.native="endedVideo()"/>
                                    </a>
                                  </div>
                                </div>
                              </div>
                              <el-row
                                  class="product_comment_information">
                                <el-col :span="20">
                                <span style="margin-right: 20px">
                                  牧马人黑色彩虹背光键盘+七彩黑鼠标
                                </span>
                                  <span>
                                  2020-03-07 11:59
                                </span>
                                </el-col>
                                <el-col :span="4">
                                <span style="margin-right: 10px">
                                  <router-link to="/">  举报</router-link>
                                </span>
                                  <span style="margin-right: 10px">
                                      <router-link to="/">
                                         <svg-icon name="like"
                                                   style="height: 19px;width: 18px"></svg-icon>
                                  2588
                                      </router-link>

                                </span>
                                  <span style="margin-right: 10px">
                                      <router-link to="/">
                                        <svg-icon name="reply"
                                                  style="height: 19px;width: 18px"></svg-icon>
                                  25
                                      </router-link>
                                </span>
                                </el-col>
                              </el-row>
                            </el-col>
                          </el-row>
                          <el-divider/>
                        </div>
                        <div style="text-align: right">
                          <el-pagination
                              background
                              @size-change="changeNumber"
                              @current-change="changePage"
                              :current-page="comment_params.currentPage"
                              :page-sizes="[6,7, 8, 10, 12,15]"
                              :page-size="comment_params.pageSize"
                              layout="total, sizes, prev, pager, next, jumper"
                              :hide-on-single-page="true"
                              :total="comment_params.totalCount">
                          </el-pagination>
                        </div>
                      </el-tab-pane>
                      <el-tab-pane label="晒图(111)">配置管理</el-tab-pane>
                      <el-tab-pane label="视频晒单(6)">角色管理</el-tab-pane>
                      <el-tab-pane label="追评(6)">定时任务补偿</el-tab-pane>
                      <el-tab-pane label="好评(9)">定时任务补偿</el-tab-pane>
                      <el-tab-pane label="中评(6)">定时任务补偿</el-tab-pane>
                      <el-tab-pane label="差评(6)">定时任务补偿</el-tab-pane>
                    </el-tabs>
                  </el-col>
                </el-row>
              </el-tab-pane>
              <el-tab-pane>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="afterSale"></svg-icon>
                  售后保障
                </div>
                lk;kl;kl;kl;
              </el-tab-pane>
              <el-tab-pane>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="parameter"></svg-icon>
                  商品参数
                </div>
                hjkhkjhjk
              </el-tab-pane>
            </el-tabs>
          </el-col>
        </el-row>
      </el-main>
    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>
  import *as productApi from '../../api/page/product'
  import *as commonApi from '../../api/util/common'

  const Header = () => import("./Header"); //组件懒加载
  const Footer = () => import("./Footer");
  const search = () => import("./Search");

  export default {
    name: "Product",
    data() {
      return {
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
        value: 1,
        bigImg: '',//商品大图
        videoShow: false,
        //商品视频相关的播放参数
        playerOptions: {
          //播放速度
          playbackRates: [0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
          //如果true,浏览器准备好时开始回放。
          autoplay: true,
          // 默认情况下将会消除任何音频。
          muted: false,
          // 导致视频一结束就重新开始。
          loop: true,
          // 建议浏览器在<video>加载元素后是否应该开始下载视频数据。auto浏览器选择最佳行为,立即开始加载视频（如果浏览器支持）
          preload: 'auto',
          language: 'zh-CN',
          // 将播放器置于流畅模式，并在计算播放器的动态大小时使用该值。值应该代表一个比例 - 用冒号分隔的两个数字（例如"16:9"或"4:3"）
          aspectRatio: '1:1',
          // 当true时，Video.js player将拥有流体大小。换句话说，它将按比例缩放以适应其容器。
          fluid: true,
          sources: [{
            //类型
            type: "video/ogg",
            type: "video/webm",
            type: "video/mp4",
            //url地址
            src: '',
          }],
          //你的封面地址
          poster: '',
          //允许覆盖Video.js无法播放媒体源时显示的默认信息。
          notSupportedMessage: '此视频暂无法播放，请稍后再试',
          controlBar: {
            timeDivider: true,
            durationDisplay: true,
            remainingTimeDisplay: false,
            //全屏按钮
            fullscreenToggle: true
          }
        },
        tags: [
          {type: '', label: '物流快(2)'},
          {type: 'success', label: '超级好用(5)'},
          {type: 'info', label: '做工细致(9)'},
          {type: 'danger', label: '商家服务态度好(12)'},
          {type: 'warning', label: '物超所值(3)'},
          {type: '', label: '舒适度高(19)'},
          {type: 'success', label: '外观漂亮(24)'},
          {type: 'info', label: '操作简便(16)'},
          {type: 'danger', label: '使用顺手(2)'},
          {type: 'warning', label: '操作简便(6)'}
        ],
        colors: ['#99A9BF', '#F7BA2A', '#FF9900'],  // 等同于 { 2: '#99A9BF', 4: { value: '#F7BA2A', excluded: true }, 5: '#FF9900' }],
        timer: '',//商品图片切换的定时器
        item: 1, //商品图片切换的序号
        options: [],
        selectedOptions: [],
        //地址选择的级联列表参数
        defaultParams: {
          label: 'name',
          value: 'code',
          children: 'children'
        },
        address: '',
        product: [],
        productForm: {
          name: '',
          specification: '',
          size: '',
          colour: '',
          combo: '',
          taste: '',
          quantity: 1,
        },
        //评论图片数组
        srcList: [
          'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
          'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
        ],
        //评论分页参数
        comment_params: {
          currentPage: 1,//页码
          pageSize: 6,//每页显示个数
          totalCount: 400,//总记录数
          totalPage: 1,//总页数
        },
      }
    },
    components: {Header, Footer, search},
    methods: {
      //鼠标切换商品图片
      enter(index) {
        this.stopSwitchProductImg();
        this.bigImg = this.product.imageSite[index];
      },
      //每隔三秒切换商品图片
      switchProductImg() {
        this.timer = setInterval(() => {
          if (this.item == this.product.imageSite.length) {
            this.item = 0;
          }
          this.bigImg = this.product.imageSite[this.item];
          this.item += 1;
        }, 3000);
      },
      stopSwitchProductImg() {
        clearInterval(this.timer);
      },
      handleChange(value) {
        console.log(value)
        const checkedNodes = this.$refs['cityAll'].getCheckedNodes()
        checkedNodes[0].pathLabels.forEach((item) => {
          this.address += item + ' ';
        });
        console.log(this.address);
      },
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
      onPlayerPlay() {
        const myPlayer = this.$refs.videoPlayer.player;
        myPlayer.play();
      },
      onPlayerEnded() {
        const myPlayer = this.$refs.videoPlayer.player;
        myPlayer.ended();
      },
      playerVideo() {
        this.playerOptions.sources[0].src = this.product.video;
        this.videoShow = true;
        this.onPlayerPlay()
      },
      endedVideo() {
        this.videoShow = false;
        this.onPlayerEnded()
      },
      //评论视频的播放
      onPlayerPlayComment() {
        const myPlayer = this.$refs.videoPlayer_1.player;
        myPlayer.play();
      },
      playerVideoComment() {
        this.videoShow = true;
        this.onPlayerPlayComment()
      },
      //获取商品数据
      getProduct(productId) {
        productApi.getProduct(productId).then(res => {
              if (res.success) {
                this.bigImg = res.queryResult.list[0].imageSite[1];
                this.product = res.queryResult.list[0];
              }
            }
        )
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.comment_params.currentPage = currentPage;
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize){
        this.comment_params.pageSize=pageSize;
      }
    },
    computed: {
      player() {
        return this.$refs.videoPlayer.player;
      }
    },
    beforeMount() {
      if (this.$route.query.productId != null) {
        sessionStorage.setItem("productId", this.$route.query.productId);
      }
      let productId = sessionStorage.getItem("productId")
      this.getProduct(productId);
      this.getAddressData();
      this.switchProductImg();
    }

  }
</script>

<style scoped>
  .product_small_img {
    width: 60px;
    height: 60px;
    display: inline-block;
    margin: 10px 4px 0 9px;
  }

  .product_small_img:hover {
    border: 1px solid red !important;
  }

  .form_left {
    text-align: left;
  }

  .product_name {
    text-align: left;
    font-size: 14px;
    font-weight: 600;
  }

  .product_price {
    font-size: 23px;
    font-weight: 800;
    color: red;
  }

  .product_sales {
    color: red;
    font-weight: 600
  }

  .product_repertory {
    color: red;
    font-weight: 750;
  }

  .icon_play {
    width: 40px;
    height: 40px;
  }

  .icon_play:hover {
    cursor: pointer;
    transform: scale(1.1);
  }

  .icon_ended {
    width: 28px;
    height: 28px;
  }

  .icon_ended:hover {
    cursor: pointer;
    transform: scale(1.1);
  }

  .icon {
    margin-bottom: -2px;
    width: 18px;
    height: 18px
  }

  .product_play {
    width: 24px;
    height: 24px;
    margin-left: 10px;
    margin-top: -50px;
    position: absolute;
    left: 0;
  }

  .product_end {
    width: 24px;
    height: 24px;
    margin-right: 7px;
    margin-top: 10px;
    position: absolute;
    top: 0;
    right: 0;
  }

  .product_comment_avatar {
    width: 25px;
    border-radius: 50%;
    margin-right: 5px
  }

  .product_comment_img {
    display: inline-block;
    position: relative;
    border: 1px solid #999999;
    margin-right: 5px;
    margin-bottom: 5px;
    max-width: 58px;
    max-height: 58px;
    overflow: hidden;
  }

  .product_comment_video {
    position: relative;
    width: 355px;
    height: 355px
  }

  .product_comment_information {
    font-size: 12px;
    margin-top: 10px;
    text-align: left;
    color: #999999;
  }
</style>