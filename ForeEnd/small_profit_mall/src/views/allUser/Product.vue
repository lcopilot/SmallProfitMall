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
                                  :url="bigImg" :scale="2.5"
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
                        ￥{{productForm.price?productForm.price.toFixed(2):''}}
                      </el-col>
                      <el-col :span="4" style="color: #999999"> 累计销量<br/>
                        <span class="product_sales"> {{product.sales}}</span></el-col>
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
                  <el-select v-model="productForm.size" filterable placeholder="请选择尺码"
                             @change="attributeChange">
                    <el-option
                        v-for="size in product.size"
                        :label="size.attributeContent"
                        :value="size.attributeId"
                        :key="size.attributeId"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="配置"
                            v-if="product.specification!==undefined && product.specification.length > 0 ">
                <div class="form_left">
                  <el-select v-model="productForm.specification" filterable placeholder="请选择配置"
                             @change="attributeChange">
                    <el-option
                        v-for="specification in product.specification"
                        :label="specification.attributeContent"
                        :value="specification.attributeId"
                        :key="specification.attributeId"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="颜色"
                            v-if="product.colour!==undefined && product.colour.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.colour" size="medium"
                                  @change="attributeChange">
                    <el-radio-button :class="index>=1?'product_radio_btn':'product_radio_btn_first'"
                                     v-for="(colour,index) in product.colour" :key="colour.attributeId"
                                     :label="colour.attributeId">{{colour.attributeContent}}
                    </el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="版本"
                            v-if="product.version!==undefined && product.version.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.version" size="medium"
                                  @change="attributeChange">
                    <el-radio-button :class="index>=1?'product_radio_btn':'product_radio_btn_first'"
                                     v-for="(version,index) in product.version" :key="version.attributeId"
                                     :label="version.attributeId">{{version.attributeContent}}
                    </el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="种类" v-if="product.kind!==undefined && product.kind.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.kind" size="medium"
                                  @change="attributeChange">
                    <el-radio-button :class="index>=1?'product_radio_btn':'product_radio_btn_first'"
                                     v-for="(kind,index) in product.kind"
                                     :key="kind.attributeId"
                                     :label="kind.attributeId">{{kind.attributeContent}}
                    </el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="套餐"
                            v-if="product.combo!==undefined && product.combo.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.combo" size="medium"
                                  @change="attributeChange">
                    <el-radio-button :class="index>=1?'product_radio_btn':'product_radio_btn_first'"
                                     v-for="(combo,index) in product.combo"
                                     :label="combo.attributeId"
                                     :key="combo.attributeId">
                      {{combo.attributeContent}}
                    </el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="口味"
                            v-if="product.taste!==undefined && product.taste.length > 0 ">
                <div class="form_left">
                  <el-radio-group v-model="productForm.taste" size="medium"
                                  @change="attributeChange">
                    <el-radio-button :class="index>=1?'product_radio_btn':'product_radio_btn_first'"
                                     v-for="(taste,index) in product.taste" :label="taste.attributeId"
                                     :key="taste.attributeId">
                      {{taste.attributeContent}}
                    </el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item size="large">
                <div class="form_left">
                  <el-input-number v-model="productForm.quantity" style="width: 30%" :min="1"
                                   :max="99"/>
                  <el-button type="danger" @click="addCart" style="margin-left: 10px"
                             icon="el-icon-circle-plus-outline">加入购物车
                  </el-button>
                  <el-button type="danger" @click="buyNow()"
                             :disabled="(productForm.inventory)<=0">
                    立即购买
                  </el-button>
                </div>
                <div class="form_left" style="color:#999999;">
                  剩余库存 <span class="product_repertory">{{productForm.inventorys}}</span>
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
            <div style="margin-left: 15px">
              <el-row>
                <el-col :span="6" style="color: #999999">
                  ———
                </el-col>
                <el-col :span="8" style="font-weight: 600;margin: 0 10px">
                  看了又看
                </el-col>
                <el-col :span="6" style="color: #999999">
                  ———
                </el-col>
              </el-row>
            </div>
            <div v-for="product in productRecommend">
              <router-link :to="{path: '/product', query: {productId:product.productId}}">
                <el-image style="max-width: 150px;max-height: 150px"
                          :src="product.imageSite"></el-image>
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
                <div v-html="productDescription"></div>
              </el-tab-pane>
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="evaluation"></svg-icon>
                  商品评价
                </div>
                <el-row>
                  <el-col :span="5">
                    <el-progress type="dashboard" :stroke-width="8"
                                 :percentage="CommentQuantity.goodCommentPercentage?CommentQuantity.goodCommentPercentage:100"></el-progress>
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
                      <el-tab-pane :label="'全部评价('+CommentQuantity.allCommentQuantity+')'" name="0"
                                   lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'晒图('+CommentQuantity.imageCommentQuantity+')'" name="1"
                                   lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'视频晒单('+CommentQuantity.videoCommentQuantity+')'"
                                   name="2" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'追评('+CommentQuantity.secondCommentQuantity+')'" name="3"
                                   lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'好评('+CommentQuantity.goodCommentQuantity+')'" name="4"
                                   lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'中评('+CommentQuantity.ordinaryCommentQuantity+')'"
                                   name="5" lazy>
                        <commentContent :genre="commentType"/>
                      </el-tab-pane>
                      <el-tab-pane :label="'差评('+CommentQuantity.differenceCommentQuantity+')'"
                                   name="6" lazy>
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
                <div v-html="productAfterSale"></div>
              </el-tab-pane>
              <el-tab-pane lazy>
                <div slot="label" style="font-size: 17px">
                  <svg-icon name="parameter"></svg-icon>
                  商品参数
                </div>
                <div v-html="productParameter"></div>
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
          //配置id
          distinctionId:0,
          //数字类型的库存
          inventory: 0,
          //字符类型的库存
          inventorys: '',
          //价格
          price: 0,
          //用户id
          userId: "",
          //商品id
          productId: 0,
          //名字
          name: ' ',
          //配置
          specification: 0,
          //版本
          version: 0,
          //尺码
          size: 0,
          //颜色
          colour: 0,
          //套餐
          combo: 0,
          //口味
          taste: 0,
          //数量
          quantity: 1,
          //种类
          kind: 0,
        },
        //评论数量
        CommentQuantity: {},
        //商品推荐
        productRecommend: [],
        //商品介绍
        productDescription: '',
        //商品售后
        productAfterSale: '',
        //商品参数
        productParameter: '',
        //加入购物车定时器 如果点击速度太快，小于200毫秒的话就不会向后台发请求，但是最后总会进行一次请求的。
        addCartTimer: '',
      }
    },
    components: {search, commentContent},
    methods: {
      ...mapActions([
        "modifyCartSum",
      ]),
      //鼠标切换商品图片
      enter(index) {
        this.stopSwitchProductImg();
        this.bigImg = this.product.imageSite[index];
      },
      //停止商品图片切换
      stopSwitchProductImg(){
        clearInterval(this.timer);
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
      handleChange(value) {
        const checkedNodes = this.$refs['cityAll'].getCheckedNodes()
        checkedNodes[0].pathLabels.forEach((item) => {
          this.address += item + ' ';
        });
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
                this.product = res.objectReturn.object;
                const product = res.objectReturn.object;
                //设置默认选项
                this.bigImg = res.objectReturn.object.imageSite[1];
                this.productForm.price = product.productPrice;
                this.productForm.inventory = product.productInventory;
                this.productForm.inventorys = product.productInventorys;
                this.productForm.version = (product.version !== undefined
                    && product.version.length > 0) ? product.version[0].attributeId : 0;
                this.productForm.colour = (product.colour !== undefined
                    && product.colour.length > 0) ? product.colour[0].attributeId : 0;
                this.productForm.combo = (product.combo !== undefined
                    && product.combo.length > 0) ? product.combo[0].attributeId : 0;
                this.productForm.taste = (product.taste !== undefined
                    && product.taste.length > 0) ? product.taste[0].attributeId : 0;
                this.productForm.kind = (product.kind !== undefined && product.kind.length > 0)
                    ? product.kind[0].attributeId : 0;
                this.productForm.specification = (product.specification !== undefined
                    && product.specification.length > 0) ? product.specification[0].attributeId : 0;
                this.productForm.size = (product.size !== undefined
                    && product.size.length > 0) ? product.size[0].attributeId : 0;
                if (this.product.productDistinctions){
                  this.attributeChange();
                }
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
        const product={
          productId:this.productId,
          userId:sessionStorage.getItem("uId"),
          distinctionId:this.productForm.distinctionId,
          quantity:this.productForm.quantity
        }
        //如果点击速度太快，小于200毫秒的话就不会向后台发请求，但是最后总会进行一次请求的。
        clearTimeout(this.addCartTimer);
        this.addCartTimer = setTimeout(() => {
          productApi.addCart(product).then(res => {
            if (res.success) {
              this.$message({
                message: "商品已加入购物车",
                type: "success"
              })
              this.modifyCartSum(res.queryResult.total);
            } else {
              if (res.code ===11111) {
                return this.$message.warning("购物车已满!");
              }
              if (res.code === 10003) {
                return this.$message.warning("商品同一配置数量已达上限!无法再添加哦~");
              } else {
                this.$message({
                  message: "加入购物车失败,请稍后重试",
                  type: "error"
                })
              }
            }
          })
        }, 200);
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
        const product={
          productId:this.productId,
          userId:sessionStorage.getItem("uId"),
          distinctionId:this.productForm.distinctionId,
          quantity:this.productForm.quantity
        }
        productApi.buyNow(product).then(res => {
          if (res.success) {
            this.$router.push({
              name: "Order",
              params: {
                orderNumber: res.objectReturn.object,
              }
            });
          }else if (res.code === 10021) {
            this.$message.warning("库存不足,请重试!")
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
      addProductView() {
        let formData = new FormData()
        formData.append("productId", this.productId)
        if (sessionStorage.getItem("uId")) {
          formData.append("userId", sessionStorage.getItem("uId"))
        }
        productApi.addProductView(formData)
      },
      //获取评论数量
      getProductCommentQuantity() {
        productApi.getProductCommentQuantity(this.productId).then(res => {
          if (res.success) {
            this.CommentQuantity = res.objectReturn.object;
          }
        })
      },
      //获取商品推荐
      getProductRecommend() {
        productApi.getProductRecommend(this.productId).then(res => {
          if (res.success) {
            this.productRecommend = res.objectReturn.object
          }
        })
      },
      //获取商品介绍,售后,参数
      getProductDesciption() {
        productApi.getProductDesciption(this.productId).then(res => {
          if (res.success && res.objectReturn.object) {
            this.productDescription = res.objectReturn.object.productDescription;
            this.productAfterSale = res.objectReturn.object.productAfterSale;
            this.productParameter = res.objectReturn.object.productParameter;
          }
        })
      },
      //配置改变
      attributeChange() {
        const isVersion = this.productForm.version !== 0 && this.productForm.version !== '';
        const isColour = this.productForm.colour !== 0 && this.productForm.colour !== '';
        const isCombo = this.productForm.combo !== 0 && this.productForm.combo !== '';
        const isTaste = this.productForm.taste !== 0 && this.productForm.taste !== '';
        const isKind = this.productForm.kind !== 0 && this.productForm.kind !== '';
        const isSpecification = this.productForm.specification !== 0
            && this.productForm.specification !== '';
        const isSize = this.productForm.size !== 0 && this.productForm.size !== '';
        this.product.productDistinctions.some((item) => {
          if ((isVersion ? item.versionId === this.productForm.version : true)
              && (isColour ? item.colourId === this.productForm.colour : true)
              && (isCombo ? item.comboId === this.productForm.combo : true)
              && (isTaste ? item.tasteId === this.productForm.taste : true)
              && (isKind ? item.kindId === this.productForm.kind : true)
              && (isSpecification ? item.specificationId === this.productForm.specification : true)
              && (isSize ? item.sizeId === this.productForm.size : true)
          ) {
            this.productForm.price = item.productPrice;
            this.productForm.distinctionId = item.distinctionId;
            this.productForm.inventory = item.productInventory;
            this.productForm.inventorys = item.productInventorys;
            //返回true终止循环 在some 里面 遇到 return true 就是终止遍历 map无法终止
            return true;
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
      this.getProductRecommend();
      this.switchProductImg();
      this.getProductDesciption();
    }

  }
</script>

<style scoped>
  .product_radio_btn {
    border-left: 1px solid #dcdfe6;
    margin: 0 5px 5px 0;
  }
  .product_radio_btn_first {
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