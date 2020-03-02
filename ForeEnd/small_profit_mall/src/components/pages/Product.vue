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
            <div>
              商品名字
            </div>
            <div>
              价格
            </div>
            <div>
              <el-cascader :options="options" :props="defaultParams" v-model="selectedOptions"
                           @change="handleChange" separator=" " :filterable="true" placeholder="请选择地址"
                           :clearable="true" style="width: 300px" ref="cityAll"/>
            </div>
            <div>
              颜色 尺码
            </div>
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
  import {mapActions} from "vuex";

  const Header = () => import("./Header"); //组件懒加载
  const Footer = () => import("./Footer");
  const search = () => import("./Search");

  export default {
    name: "Product",
    data() {
      return {
        show2: true,
        bigImg: '',
        magnifierImg: '',
        productImgList: [
          {
            img: 'http://img.fhxasdsada.xyz/O1CN01jRWwWw22AEIAVOrqe_%21%211917047079.jpeg_430x430q90.png',
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

      }
    },
    components: {Header, Footer, search},
    computed: {
      //vuex
      options() {
        return this.$store.state.addressData;
      },
    },
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
        if (JSON.parse(sessionStorage.getItem('addressData'))){
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