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
                  <el-link :underline="false" @click="addFavorite">
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
                        ￥{{product.productPrice?product.productPrice.toFixed(2):''}}
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
              <el-form-item label="重量" v-if="product.weight">
                <div class="form_left">
                  {{product.weight}}
                </div>
              </el-form-item>
              <el-form-item label="尺码" v-if="product.size!==undefined && product.size.length > 0 ">
                <div class="form_left">
                  <el-select v-model="productForm.size" filterable placeholder="请选择尺码">
                    <el-option
                        v-for="(size,index) in product.size"
                        :label="size"
                        :value="size"
                        :key="index"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="配置" v-if="product.specification!==undefined && product.specification.length > 0 ">
                <div class="form_left">
                  <el-select v-model="productForm.specification" filterable placeholder="请选择规格">
                    <el-option
                        v-for="(specification,index) in product.specification"
                        :label="specification"
                        :value="specification"
                        :key="index"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="颜色" v-if="product.colour!==undefined && product.colour.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.colour" size="medium">
                    <el-radio-button class="product_radio_btn"
                                     v-for="(colour,index) in product.colour" :key="index"
                                     :label="colour" :value="index"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="版本" v-if="product.version!==undefined && product.version.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.version" size="medium">
                    <el-radio-button class="product_radio_btn"
                                     v-for="(version,index) in product.version" :key="index"
                                     :label="version" :value="index"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="种类" v-if="product.kind!==undefined && product.kind.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.kind" size="medium">
                    <el-radio-button class="product_radio_btn" v-for="(kind,index) in product.kind"
                                     :key="index"
                                     :label="kind" :value="index"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="套餐" v-if="product.combo!==undefined && product.combo.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.combo" size="medium">
                    <el-radio-button class="product_radio_btn" :label="combo" :value="index"
                                     :key="index"
                                     v-for="(combo,index) in product.combo"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="口味" v-if="product.taste!==undefined && product.taste.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.taste" size="medium">
                    <el-radio-button class="product_radio_btn" :label="taste" :value="index"
                                     :key="index"
                                     v-for="(taste,index) in product.taste"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item size="large">
                <div class="form_left">
                  <el-input-number v-model="productForm.quantity" style="width: 30%" :min="1"
                                   :max="product.inventorys>99?99:product.inventorys"/>
                  <el-button type="danger" @click="addCart" style="margin-left: 10px"
                             icon="el-icon-circle-plus-outline">加入购物车{{productForm.quantitys}}
                  </el-button>
                  <el-button type="danger" @click="buyNow()" :disabled="(product.inventorys)<=0">
                    立即购买
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
          <el-col :span="4">
            <div>
              <el-row>
                <el-col :span="6" style="color: #999999">
                  ———
                </el-col>
                <el-col :span="8" style="font-weight: 600;">
                  看了又看
                </el-col>
                <el-col :span="6" style="color: #999999">
                  ———
                </el-col>
              </el-row>
            </div>
            <div v-for="item in 3">
              <router-link to="/">
                <el-image style="max-width: 170px;max-height: 170px"
                          src="http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg"></el-image>
              </router-link>
            </div>
          </el-col>
        </el-row>
      </el-main>
      <el-main>
        <el-row>
          <el-col :span="20" :push="2">
            <el-tabs type="border-card">
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="introduction"></svg-icon>
                  商品介绍
                </div>
                <div v-html=""></div>
              </el-tab-pane>
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="evaluation"></svg-icon>
                  商品评价
                </div>
                <el-row>
                  <el-col :span="5">
                    <el-progress type="dashboard" :stroke-width="8" :percentage="CommentQuantity.goodCommentPercentage?CommentQuantity.goodCommentPercentage:100"></el-progress>
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
                    <el-tabs style="margin-top: 20px" v-model="commentType">
                      <el-tab-pane :label="'全部评价('+CommentQuantity.allCommentQuantity+')'" name="0" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'晒图('+CommentQuantity.imageCommentQuantity+')'" name="1" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'视频晒单('+CommentQuantity.videoCommentQuantity+')'" name="2" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'追评('+CommentQuantity.secondCommentQuantity+')'" name="3" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'好评('+CommentQuantity.goodCommentQuantity+')'" name="4" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'中评('+CommentQuantity.ordinaryCommentQuantity+')'" name="5" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'差评('+CommentQuantity.differenceCommentQuantity+')'" name="6" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                    </el-tabs>
                  </el-col>
                </el-row>
              </el-tab-pane>
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="afterSale"></svg-icon>
                  售后保障
                </div>
                <div v-html=""></div>
              </el-tab-pane>
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="parameter"></svg-icon>
                  商品参数
                </div>
                <div v-html=""></div>
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
  import *as userApi from '../../api/page/user'
  import {mapActions} from "vuex";
  const search = () => import("../../components/pages/Search");
  const commentContent = () => import("../../components/pages/CommentContent");

  export default {
    name: "Product",
    data() {
      return {
        //商品Id
        productId: 0,
        //评论类型
        commentType: "0",
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
        timer: '',//商品图片切换的定时器
        item: 1, //商品图片切换的序号
        options: [],
        selectedOptions: [],
        //地址选择的级联列表参数
        defaultParams: {
          label: 'name',
          value: 'code',
          children: 'children',
          //单选任意一级
          // checkStrictly: true,
        },
        //地址数据
        address: '',
        product: [],
        productForm: {
          //用户id
          userId: "",
          //商品id
          productId: 0,
          //名字
          name: ' ',
          //配置
          specification: ' ',
          //版本
          version: ' ',
          //尺码
          size: ' ',
          //颜色
          colour: ' ',
          //套餐
          combo: ' ',
          //口味
          taste: ' ',
          //数量
          quantity: 1,
          //种类
          kind: ' ',
        },
        //评论数量
        CommentQuantity:{},

      }
    },
    components: {search, commentContent},

    methods: {
      ...mapActions([
        "modifyCartSum",
        "getCartSum"
      ]),
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
      //获取商品数据
      getProduct(productId) {
        productApi.getProduct(productId).then(res => {
              if (res.success) {
                this.product = res.queryResult.list[0];
                //设置默认选项
                this.bigImg = res.queryResult.list[0].imageSite[1];
                this.productForm.version = res.queryResult.list[0].version[0];
                this.productForm.colour = res.queryResult.list[0].colour[0];
                this.productForm.combo = res.queryResult.list[0].combo[0];
                this.productForm.taste = res.queryResult.list[0].taste[0];
                this.productForm.kind = res.queryResult.list[0].kind[0];
                this.productForm.specification = res.queryResult.list[0].specification[0];
                this.productForm.size = res.queryResult.list[0].size[0];
              }
            }
        )
      },
      //加入购物车
      addCart() {
        if (!sessionStorage.getItem("uId")) {
          return this.$message({
            dangerouslyUseHTMLString: true,
            message: '您还没有登录哦~请先去登录吧 <a href="/login">去登录</a>',
            type: "warning"
          })
        }
        this.productForm.productId = sessionStorage.getItem("productId");
        this.productForm.userId = sessionStorage.getItem("uId");
        productApi.addCart(this.productForm).then(res => {
          if (res.success) {
            this.$message({
              message: "商品已加入购物车",
              type: "success"
            })
            this.getCartSum(res.queryResult.total);
          } else {
            if (res.code == 11111) {
              return this.$message.warning("购物车已满!");
            }
            if (res.code == 10003) {
              return this.$message.warning("商品同一配置数量已达上限!无法再添加哦~");
            } else {
              this.$message({
                message: "加入购物车失败,请稍后重试",
                type: "error"
              })
            }
          }
        })
      },
      //立即购买
      buyNow() {
        if (!sessionStorage.getItem("uId")) {
          return this.$message({
            dangerouslyUseHTMLString: true,
            message: '您还没有登录哦~请先去登录吧 <a href="/login">去登录</a>',
            type: "warning"
          })
        }
        this.productForm.productId = sessionStorage.getItem("productId");
        this.productForm.userId = sessionStorage.getItem("uId");
        productApi.buyNow(this.productForm).then(res => {
          if (res.success) {
            this.$router.push({
              name: "Order",
              params: {
                orderNumber: res.queryResult.list[0],
              }
            });
          }
        })
      },
      //添加收藏
      addFavorite() {
        if (!sessionStorage.getItem("uId")) {
          return this.$message({
            dangerouslyUseHTMLString: true,
            message: '您还没有登录哦~请先去登录吧 <a href="/login">去登录</a>',
            type: "warning"
          })
        }
        let data = {
          productIds: [],
          userId: sessionStorage.getItem("uId"),
        };
        data.productIds.push(this.productId);
        userApi.addFavorite(data).then(res => {
          if (res.success) {
            this.$message.success("收藏成功!")
          } else {
            if (res.code == 11111) {
              this.$message({
                message: "商品已经被收藏,请勿重复收藏"
              })
            }
          }
        })
      },
      //添加足迹
      addFootprint() {
        if (sessionStorage.getItem("uId")) {
          let data = {
            userId: sessionStorage.getItem("uId"),
            productId: this.productId
          };
          userApi.addFootprint(data);
        }
      },
      //增加浏览量
      addProductView(){
        let formData=new FormData()
        formData.append("productId",this.productId)
        if (sessionStorage.getItem("uId")){
          formData.append("userId",sessionStorage.getItem("uId"))
        }
        productApi.addProductView(formData)
      },
      //获取评论数量
      getProductCommentQuantity(){
        productApi.getProductCommentQuantity(this.productId).then(res=>{
          if (res.success){
            this.CommentQuantity=res.objectReturn.object;
          }
        })
      },
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
      this.productId = sessionStorage.getItem("productId");
      this.getProductCommentQuantity();
      this.addFootprint();
      this.addProductView();
      this.getProduct(this.productId);
      this.getAddressData();
      this.switchProductImg();
    }

  }
</script>

<style scoped>
  .product_radio_btn {
    border-left: 1px solid #dcdfe6;
    margin: 0 5px 5px 0;
  }

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


</style>