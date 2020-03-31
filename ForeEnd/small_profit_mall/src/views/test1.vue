<template>
  <div>
    <el-upload class="upload-demo" action="" drag
               :auto-upload="false" :show-file-list="false" :on-change='changeUpload'>
      <i class="el-icon-upload"></i>
      <div class="el-upload__text">点击上传</div>
      <div class="el-upload__tip">支持绝大多数图片格式，单张图片最大支持5MB</div>
    </el-upload>Ï
    <!-- vueCropper 剪裁图片实现-->
    <el-dialog title="图片剪裁" :visible.sync="dialogVisible" append-to-body>
      <div class="cropper-content">
        <div class="cropper" style="text-align:center">
          <vueCropper
              ref="cropper"
              :img="option.img"
              :outputSize="option.size"
              :outputType="option.outputType"
              :info="true"
              :full="option.full"
              :canMove="option.canMove"
              :canMoveBox="option.canMoveBox"
              :original="option.original"
              :autoCrop="option.autoCrop"
              :fixed="option.fixed"
              :fixedNumber="option.fixedNumber"
              :centerBox="option.centerBox"
              :infoTrue="option.infoTrue"
              :fixedBox="option.fixedBox"
              @realTime="realTime"
          ></vueCropper>
        </div>
      </div>
      <div v-html="previews.html">

      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary"  :loading="loading" @click="finish">确认</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        dialogVisible: false,
        // 裁剪组件的基础配置option
        option: {
          img: '', // 裁剪图片的地址
          info: true, // 裁剪框的大小信息
          outputSize: 1, // 裁剪生成图片的质量
          outputType: 'jpeg', // 裁剪生成图片的格式
          canScale: true, // 图片是否允许滚轮缩放
          autoCrop: true, // 是否默认生成截图框
          // autoCropWidth: 300, // 默认生成截图框宽度
          // autoCropHeight: 200, // 默认生成截图框高度
          fixedBox: false, // 固定截图框大小 不允许改变
          fixed: true, // 是否开启截图框宽高固定比例
          fixedNumber: [1, 1], // 截图框的宽高比例
          full: false, // 是否输出原图比例的截图
          canMoveBox: false, // 截图框能否拖动
          original: false, // 上传图片按照原始比例渲染
          centerBox: true, // 截图框是否被限制在图片里面
          infoTrue: true // true 为展示真实输出图片宽高 false 展示看到的截图框宽高
        },
        picsList: [],  //页面显示的数组
        // 防止重复提交
        loading: false,
        previews:'',
        fileinfo:'',
      }

    },

    methods: {
      // 上传按钮   限制图片大小
      changeUpload(file) {
        const isLt5M = file.size / 1024 / 1024 < 5
        if (!isLt5M) {
          this.$message.error('上传文件大小不能超过 5MB!')
          return false
        }
        let vm=this;
        // 上传成功后将图片地址赋值给裁剪框显示图片
        this.$nextTick(() => {
          vm.option.img=URL.createObjectURL(file.raw);
          vm.dialogVisible = true
          // var reader = new FileReader();
          // reader.readAsDataURL(file.raw);
          // reader.onload = function(e){
          //   this.result;
          //   vm.option.img= this.result;
          //   vm.dialogVisible = true
          // }
        })
      },
      // 实时预览函数
      realTime(data) {
        console.log(data)
        this.previews = data;
      },
      finish() {
        this.$refs.cropper.getCropData((data) => {
          // do something
          console.log(data)
        });
        this.$refs.cropper.getCropBlob((data) => {
          // do something
          console.log(data)
        })
      }
    },

  }
</script>

<style scoped>
  .cropper-content {
      width: auto;
      height: 300px;
  }
  .cropper {
    width: 50%;
    height: 300px;
  }
</style>