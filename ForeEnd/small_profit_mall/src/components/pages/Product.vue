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
            </div>
          </el-col>
          <el-col :span="10">
            <el-form ref="form" :model="sizeForm" label-width="80px" style="width: 90%" size="small" label-position="right">
              <el-form-item >
                <div style="text-align:left;font-size: 14px;font-weight:600;">
                  Apple 2019新品 MacBook Pro 16【带触控栏】九代六核i7 16G 512G 深空灰 Radeon Pro 5300M显卡 笔记本电脑 轻薄本 MVVJ2CH/A
                </div>
              </el-form-item>
              <el-form-item label="价格">
                <div style="text-align: left">
                  <el-card class="box-card">
                    <div>微利价: ￥189.00</div>
                    <div>促销 会员特价: <router-link to="/login">登录</router-link>,确认是否享受优惠</div>
                  </el-card>
                </div>
              </el-form-item>
              <el-form-item label="配送至">
                <div style="text-align: left">
                  <el-cascader :options="options" :props="defaultParams" v-model="selectedOptions"
                               @change="handleChange" separator=" " :filterable="true" placeholder="请选择地址"
                               :clearable="true"  ref="cityAll"/>
                </div>

              </el-form-item>
              <el-form-item label="重量">
                <div style="text-align: left">
                    5.67Kg
                </div>
              </el-form-item>
              <el-form-item label="尺码">
                <div style="text-align: left">
                  <el-select v-model="value" placeholder="请选择">
                    <el-option
                        v-for="item in options"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value"
                    >
                    </el-option>
                  </el-select>
                </div>
              </el-form-item>
              <el-form-item label="颜色">
                <div style="text-align: left">
                  <el-radio-group v-model="sizeForm.resource" size="medium">
                    <el-radio-button label="上海"></el-radio-button>
                    <el-radio-button label="北京"></el-radio-button>
                    <el-radio-button label="广州"></el-radio-button>
                    <el-radio-button label="深圳"></el-radio-button>
                    <el-radio-button label="深圳"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item label="套餐">
                <div style="text-align: left">
                  <el-radio-group v-model="sizeForm.resource" size="medium">
                    <el-radio-button label="上海" ></el-radio-button>
                    <el-radio-button label="北京"></el-radio-button>
                    <el-radio-button label="广州"></el-radio-button>
                    <el-radio-button label="深圳"></el-radio-button>
                    <el-radio-button label="深圳"></el-radio-button>
                  </el-radio-group>
                </div>
              </el-form-item>
              <el-form-item size="large">
                <div style="text-align: left">
                  <el-input-number v-model="num1" style="width: 30%" max="99"></el-input-number>
                  <el-button type="danger" @click="onSubmit" style="margin-left: 10px" icon="el-icon-circle-plus-outline">加入购物车</el-button>
                  <el-button type="danger" @click="onSubmit">立即购买</el-button>
                </div>
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
        num1:1,
        bigImg: '',
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
        options:[],
        selectedOptions: [],
        defaultParams: {
          label: 'name',
          value: 'code',
          children: 'children'
        },
        address:'',
        sizeForm: {
          name: '',
          region: '',
          date1: '',
          date2: '',
          delivery: false,
          type: [],
          resource: '',
          desc: ''
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
          this.address+=item+' ';
        });
        console.log(this.address);
      },
      getAddressData() {
        if (JSON.parse(sessionStorage.getItem('addressData'))==null){
          this.axios.get("http://img.fhxasdsada.xyz/pcas-code.json").then(res => {
            if (res.status == 200) {
              this.options=res.data;
              sessionStorage.setItem("addressData",JSON.stringify(res.data));
            }
          })
        }else{
          this.options=JSON.parse(sessionStorage.getItem('addressData'));
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
</style>