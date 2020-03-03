<template>
  <el-container>
    <el-header height="80px">
      <Header/>
    </el-header>
    <el-main>
      <search/>
      <el-main>
        <el-row type="flex" justify="center" :gutter="20" style="margin-top: 40px">
          <el-col :span="6">
            <div>
              <vue-photo-zoom-pro style="width: 355px;" type="circle"
                                  :url="bigImg" :high-url="magnifierImg"
                                  @mouseenter="stopSwitchProductImg()"
                                  @mouseleave="switchProductImg()"/>
            </div>
            <div>
              <el-row type="flex" justify="center" :gutter="6">
                <el-col :span="5" v-for="(productImg,index) in productImgList">
                  <div class="product_small_img" @mouseenter="enter(index)"
                       @mouseleave="switchProductImg()">
                    <el-image :src="productImg.img" fit="scale-down"></el-image>
                  </div>
                </el-col>
              </el-row>
              <el-row style="font-size: 13px;color: red">
                <el-col :span="4">
                  <el-link :underline="false">
                    <svg-icon name="Favorite"
                              style="margin-bottom: -2px;width: 18px;height: 18px"></svg-icon>
                    收藏
                  </el-link>

                </el-col>
                <el-col :span="4">
                  <el-link :underline="false">
                    <svg-icon name="share"
                              style="margin-bottom: -2px;width: 18px;height: 18px"></svg-icon>
                    分享
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
                  Apple 2019新品 MacBook Pro 16【带触控栏】九代六核i7 16G 512G 深空灰 Radeon Pro 5300M显卡 笔记本电脑 轻薄本
                  MVVJ2CH/A
                </div>
              </el-form-item>
              <el-form-item label="价格">
                <div class="form_left">
                  <el-card class="box-card" shadow="never">
                    <el-row>
                      <el-col :span="4" style="color: #999999"> 微利价:</el-col>
                      <el-col :span="16" class="product_price">
                        ￥189.00
                      </el-col>
                      <el-col :span="4" style="color: #999999"> 累计销量<span
                          class="product_sales">6.7W+</span></el-col>
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
                  5.67Kg
                </div>
              </el-form-item>
              <el-form-item label="尺码">
                <div class="form_left">
                  <el-select v-model="productForm.size" filterable placeholder="请选择尺码">
                    <el-option
                        v-for="item in sizeList"
                        :label="item.label"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="规格">
                <div class="form_left">
                  <el-select v-model="productForm.specification" filterable placeholder="请选择规格">
                    <el-option
                        v-for="item in specificationList"
                        :label="item.label"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="颜色">
                <div class="form_left">
                  <el-radio-group v-model="productForm.colour" size="medium">
                    <el-radio-button label="1">星河银</el-radio-button>
                    <el-radio-button label="2">翡冷翠</el-radio-button>
                    <el-radio-button label="3">罗兰紫</el-radio-button>
                    <el-radio-button label="4">丹霞橙</el-radio-button>
                    <el-radio-button label="5">青山黛</el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="套餐">
                <div class="form_left">
                  <el-radio-group v-model="productForm.combo" size="medium">
                    <el-radio-button label="1">套餐一</el-radio-button>
                    <el-radio-button label="2">套餐二</el-radio-button>
                    <el-radio-button label="3">套餐三</el-radio-button>
                    <el-radio-button label="4">套餐四</el-radio-button>
                    <el-radio-button label="5">套餐五</el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="口味">
                <div class="form_left">
                  <el-radio-group v-model="productForm.taste" size="medium">
                    <el-radio-button label="1">草莓</el-radio-button>
                    <el-radio-button label="2">抹茶</el-radio-button>
                    <el-radio-button label="3">香蕉</el-radio-button>
                    <el-radio-button label="4">蜜桃</el-radio-button>
                    <el-radio-button label="5">巧克力</el-radio-button>
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
                  <el-button type="danger" @click="onSubmit">立即购买</el-button>
                </div>
                <div class="form_left" style="color:#999999;">
                  剩余库存 <span class="product_repertory">7.8</span>万件
                </div>
              </el-form-item>
              <el-form-item label="保障">
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

    </el-main>
    <el-footer>
      <Footer/>
    </el-footer>
  </el-container>
</template>

<script>

  const Header = () => import("./Header"); //组件懒加载
  const Footer = () => import("./Footer");
  const search = () => import("./Search");

  export default {
    name: "Product",
    data() {
      return {
        bigImg: '',
        sizeList: [
          {
            label: 'S(165)'
          }, {
            label: 'M(170)'
          }, {
            label: 'L(175)'
          }, {
            label: 'XL(180)'
          }, {
            label: 'XL(185)'
          }],
        specificationList: [
          {
            label: '[新品]16英寸 九代i7 16+512灰'
          }, {
            label: '[新品]16英寸 九代i7 16+512灰'
          }, {
            label: '[新品]16英寸 九代i7 16+512灰'
          }, {
            label: '[新品]16英寸 九代i7 16+512灰'
          }, {
            label: '[新品]16英寸 九代i7 16+512灰'
          }
        ],
        magnifierImg: '',
        productImgList: [
          {
            img: 'http://img.fhxasdsada.xyz/aee0a989e72627dab77f3fb1002bb739_2_3_photo.png',
            magnifierImg: 'http://img.fhxasdsada.xyz/aee0a989e72627dab77f3fb1002bb739_2_3_photo.png'
          },
          {
            img: 'http://img.fhxasdsada.xyz/O1CN01gDQHPJ22AEDl61L9W_%21%211917047079.jpg_430x430q90.jpg',
            magnifierImg: 'http://img.fhxasdsada.xyz/efbaa56776e405d6944fd9041040a19d_2_3_photo.jpg'
          },
          {
            img: 'http://img.fhxasdsada.xyz/O1CN01PweeQr22AEJuIJv81_%21%211917047079.png_430x430q90.png',
            magnifierImg: 'http://img.fhxasdsada.xyz/b202c8d2e990743cbfe239cb860e4a41_2_3_photo.png'
          },
          {
            img: 'http://img.fhxasdsada.xyz/O1CN01aVSHBx22AEJy0gFkG_%21%212-item_pic.png_430x430q90.png',
            magnifierImg: 'http://img.fhxasdsada.xyz/bcfee3e5a67cf23413e11d8afa99117f_2_3_photo.png'
          },
          {
            img: 'http://img.fhxasdsada.xyz/O1CN01PweeQr22AEJuIJv81_%21%211917047079.png_430x430q90.png',
            magnifierImg: 'http://img.fhxasdsada.xyz/b202c8d2e990743cbfe239cb860e4a41_2_3_photo.png'
          },
        ],
        item: 0,
        timer: '',
        options: [],
        selectedOptions: [],
        defaultParams: {
          label: 'name',
          value: 'code',
          children: 'children'
        },
        address: '',
        productForm: {
          name: '',
          specification: '',
          size: '',
          colour: 1,
          combo: 1,
          taste: 1,
          quantity: 1,
        }
      }
    },
    components: {Header, Footer, search},
    methods: {
      getProductImg() {
        this.bigImg = this.productImgList[1].img;
        this.magnifierImg = this.productImgList[1].magnifierImg;
      },
      enter(index) {
        this.stopSwitchProductImg();
        this.bigImg = this.productImgList[index].img;
        this.magnifierImg = this.productImgList[index].magnifierImg;
      },
      switchProductImg() {
        this.timer = setInterval(() => {
          if (this.item == this.productImgList.length) {
            this.item = 0;
          }
          this.bigImg = this.productImgList[this.item].img;
          this.magnifierImg = this.productImgList[this.item].magnifierImg;
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
          this.axios.get("http://img.fhxasdsada.xyz/pcas-code.json").then(res => {
            if (res.status == 200) {
              this.options = res.data;
              sessionStorage.setItem("addressData", JSON.stringify(res.data));
            }
          })
        } else {
          this.options = JSON.parse(sessionStorage.getItem('addressData'));
        }
      },
    },
    created() {
      this.getAddressData();
      this.getProductImg();
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
</style>