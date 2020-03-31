<template>
  <el-container>
    <el-header>
      <Header></Header>
    </el-header>
    <el-main>
      <el-row :gutter="20">
        <personalPage />
        <el-col :span="15" :push="3">
          <el-card>
            <div slot="header" style="text-align: left;font-size: 17px;font-weight:600;">账户设置</div>
            <div style="width: 80%;text-align: left;">
              <el-form label-position="right" label-width="100px" :model="accountForm">
                <el-form-item label="账户密码">
                  **********
                  <el-button type="text">修改</el-button>
                </el-form-item>
                <el-form-item label="支付密码">
                  未设置
                  <el-button type="text">
                    修改
                  </el-button>
                  <el-button type="text">
                    设置
                  </el-button>
                </el-form-item>
                <el-form-item label="刷脸支付">
                  已开启
                  <el-button type="text" @click="updateFace()">更新人脸</el-button>
                  <el-button type="text">关闭刷脸支付</el-button>
                </el-form-item>
                <el-dialog
                    title="请对准摄像头,避免强光"
                    :visible.sync="faceVisible"
                    width="30%" @opened="getCompetence" @close="shutDown()">
                  <video id="videoCamera" :width="videoWidth" :height="videoHeight" autoplay></video>
                  <canvas style="display:none;" id="canvasCamera" :width="videoWidth" :height="videoHeight" ></canvas>
                  <span slot="footer">
                      <el-button @click="faceVisible = false">取 消</el-button>
                      <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
                  </span>
                </el-dialog>
              </el-form>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </el-main>
    <el-footer>
      <Footer></Footer>
    </el-footer>
  </el-container>
</template>

<script>
  const personalPage = () => import("../../components/admin/personalHubPage");

  export default {
    name: "accountSettings",
    components: { personalPage },
    data() {
      return {
        videoWidth: 380,
        videoHeight: 320,
        imgSrc: '',
        thisCancas: null,
        thisContext: null,
        thisVideo: null,
        validTip: '验证中',
        //人脸弹出框
        faceVisible:false,
        accountForm: {

        }
      }
    },
    methods: {
      //更新人脸弹出框关闭的回调
      shutDown(){
        this.stopNavigator();
      },
      updateFace(){
        this.faceVisible=true;
      },
      //调用摄像头
      getCompetence () {
        let _this = this
        this.thisCancas = document.getElementById('canvasCamera')
        this.thisContext = this.thisCancas.getContext('2d')
        this.thisVideo = document.getElementById('videoCamera')
        // 旧版本浏览器可能根本不支持mediaDevices，我们首先设置一个空对象
        if (navigator.mediaDevices === undefined) {
          navigator.mediaDevices = {}
        }
        // 一些浏览器实现了部分mediaDevices，我们不能只分配一个对象
        // 使用getUserMedia，因为它会覆盖现有的属性。
        // 这里，如果缺少getUserMedia属性，就添加它。
        if (navigator.mediaDevices.getUserMedia === undefined) {
          navigator.mediaDevices.getUserMedia = function (constraints) {
            // 首先获取现存的getUserMedia(如果存在)
            let getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.getUserMedia
            // 有些浏览器不支持，会返回错误信息
            // 保持接口一致
            if (!getUserMedia) {
              return Promise.reject(new Error('getUserMedia is not implemented in this browser'))
            }
            // 否则，使用Promise将调用包装到旧的navigator.getUserMedia
            return new Promise(function (resolve, reject) {
              getUserMedia.call(navigator, constraints, resolve, reject)
            })
          }
        }
        let constraints = { audio: false, video: { width: this.videoWidth, height: this.videoHeight, transform: 'scaleX(-1)' } }
        navigator.mediaDevices.getUserMedia(constraints).then(function (stream) {
          // 旧的浏览器可能没有srcObject
          if ('srcObject' in _this.thisVideo) {
            _this.thisVideo.srcObject = stream
          } else {
            // 避免在新的浏览器中使用它，因为它正在被弃用。
            _this.thisVideo.src = window.URL.createObjectURL(stream)
          }
          _this.thisVideo.onloadedmetadata = function (e) {
            _this.thisVideo.play()
          }
        }).catch(err => {
          console.log(err)
        })
      },
      //拍照
      setImage () {
        // 点击，canvas画图
        this.thisContext.drawImage(this.thisVideo, 0, 0, this.videoWidth, this.videoHeight)
        // 获取图片base64链接
        let image = this.thisCancas.toDataURL('image/png')
        this.imgSrc = image
        this.$emit('refreshDataList', this.imgSrc)
      },
      /*
       *@author wf_Huang
       *@Time 2019/6/5 0005 17:44
       *@function  base64转文件
       *****************************************/
      dataURLtoFile (dataurl, filename) {
        let arr = dataurl.split(',')
        let mime = arr[0].match(/:(.*?);/)[1]
        let bstr = atob(arr[1])
        let n = bstr.length
        let u8arr = new Uint8Array(n)
        while (n--) {
          u8arr[n] = bstr.charCodeAt(n)
        }
        return new File([u8arr], filename, { type: mime })
      },
      //关闭摄像头
      stopNavigator () {
        this.thisVideo.srcObject.getTracks()[0].stop()
      }
    }
  }
</script>

<style scoped>

</style>