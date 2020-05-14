<template>
  <div>
    <el-dialog>


    </el-dialog>
    <el-dialog
        :title="isPayment?collectionPrompt:'人脸采集'"
        :top="isPayment?'35vh':'15vh'"
        :close-on-press-escape="isPayment?false:true"
        :close-on-click-modal="isPayment?false:true"
        :show-close="isPayment?false:true"
        :visible.sync="faceVisible" center
        :width="isPayment?'15%':'30%'"
        @opened="getCompetence"
        @close="shutDown()">
      <div>
        <div v-if="isPayment" style="text-align: center">
          <div >
            <img :src="faceAnimation" style="object-fit: cover;width: 160px"/>
          </div>
        </div>
        <div v-if="!isPayment">
          <div style="font-size: 13px;margin-top: -5%;">尊敬的用户您好，请按照以下条件进行采集：
            <div style="margin:0 0 2% 10%;">
              1.采集环境光线柔和；
              <br/>2.采集背景最好是纯白色，背景不要杂乱，背后不要有人；
            </div>
          </div>
        </div>
        <video ref="videoCamera" v-show="!isPayment" :width="videoWidth" :height="videoHeight"
               autoplay></video>
        <canvas ref="canvasCamera" style="display:none;"
                :width="videoWidth" :height="videoHeight"></canvas>
        <div style="color: red;font-size: 16px" v-if="!isPayment">{{collectionPrompt}}</div>
        <el-button type="primary" @click="collectionFace" v-if="!isPayment"
                   style="margin:3% 3% 0 21%;width: 60%;" :loading="faceLoading">
          {{faceBtnContent}}
        </el-button>
      </div>
    </el-dialog>
  </div>

</template>

<script>

  import encryption from "../../util/encryption";

  export default {
    name: "face",
    props: {
      isPayment: {
        type: Boolean,
        required: false,
        defaults: false,
      }
    },
    data() {
      return {
        //人脸识别动画
        faceAnimation: "http://img.fhxasdsada.xyz/beforeRecognition.gif",
        //视频大小
        videoWidth: 410,
        videoHeight: 320,
        //画布
        thisCanvas: null,
        thisContext: null,
        //视频
        thisVideo: null,
        //人脸弹出框
        faceVisible: false,
        //采集按钮加载框
        faceLoading: false,
        //采集按钮内容
        faceBtnContent: '开始采集',
        //摄像头状态
        cameraStatus: false,
        //采集失败的提示语
        collectionPrompt: '',
        //MediaRecorder对象
        recorder:'',
        //视频流
        stream:'',
        //录制的视频
        chunks:[],
        //保存的视频文件
        faceImg:'',
      }
    },
    methods: {
      //识别采集失败提示语
      recognitionFailure(code){
        if (code==null){
          return  this.collectionPrompt="摄像头启动中...";
        }
        if(code==20190415){
          this.faceBtnContent='面部识别中...';
          return  this.collectionPrompt="面部识别中...";
        }
        if (code==222202){
         return  this.collectionPrompt="未检测到人脸...";
        }
        if (code==222203){
         return  this.collectionPrompt="人脸无法解析...";
        }
        if (code==223116 || code==223114){
          return  this.collectionPrompt="人脸模糊...";
        }
        if (code==223115){
          return  this.collectionPrompt="请保证环境光线柔和...";
        }
        if (code==223120 || code==30000){
         return  this.collectionPrompt="活体检测失败...";
        }
        if (code==223102){
         return  this.collectionPrompt="该用户已与其他账号绑定...";
        }
        return  this.collectionPrompt="录入失败,请重新录入...";
      },
      //采集人脸照片
      collectionFace() {
        if (!this.cameraStatus) {
          return this.$message.warning("摄像头还未开启,请稍后等一会哦~")
        }
        this.faceLoading = true;
        this.faceBtnContent = '人脸采集中';
        this.recorder.start();
        setTimeout(() => {
          this.photograph();
        }, 3000);
      },
      //更新人脸弹出框关闭的回调
      shutDown() {
        this.stopNavigator();
      },
      //调用摄像头
      getCompetence() {
        let vm = this;
        vm.thisCanvas = this.$refs.canvasCamera;
        vm.thisContext = this.thisCanvas.getContext('2d');
        vm.thisVideo = this.$refs.videoCamera;
        // 旧版本浏览器可能根本不支持mediaDevices，首先设置一个空对象
        if (navigator.mediaDevices === undefined) {
          navigator.mediaDevices = {};
        }
        // 一些浏览器实现了部分mediaDevices，我们不能只分配一个对象
        // 使用getUserMedia，因为它会覆盖现有的属性。
        // 这里，如果缺少getUserMedia属性，就添加它。
        if (navigator.mediaDevices.getUserMedia === undefined) {
          navigator.mediaDevices.getUserMedia = function (constraints) {
            // 首先获取现存的getUserMedia(如果存在)
            let getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia
                || navigator.getUserMedia;
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
        let constraints = {
          audio: false,
          video: {width: this.videoWidth, height: this.videoHeight, transform: 'scaleX(-1)'}
        };
        navigator.mediaDevices.getUserMedia(constraints).then(function (stream) {
          vm.recorder = new window.MediaRecorder(stream);
          vm.stream = stream;
          // 旧的浏览器可能没有srcObject
          if ('srcObject' in vm.thisVideo) {
            vm.thisVideo.srcObject = stream
          } else {
            // 避免在新的浏览器中使用它，因为它正在被弃用。
            vm.thisVideo.src = window.URL.createObjectURL(stream)
          }
          vm.thisVideo.onloadedmetadata = function (e) {
            vm.thisVideo.play()
          };

          vm.cameraStatus = true;
          vm.collectionPrompt='';
        }).catch(err => {
          console.log(err);
          vm.cameraStatus = false;
        })
      },
      //拍照
      photograph() {
        // 点击，canvas画图
        this.thisContext.drawImage(this.thisVideo, 0, 0, this.videoWidth, this.videoHeight)
        // 获取图片base64链接
        this.faceImg = encryption.encrypt(this.thisCanvas.toDataURL('image/png').substring(22));
        setTimeout(()=>{
          //停止录制
          this.recorder.stop();
          //保存录制的视频
          this.bindEvents();
        },1000);
      },
      //关闭摄像头
      stopNavigator() {
        this.thisVideo.srcObject.getTracks()[0].stop();
        this.cameraStatus = false;
      },
      //保存录制的视频
      saveRecordingData() {
        let blob = new Blob(this.chunks, {'type': 'video/webm'});
            // videoStream = URL.createObjectURL(blob);
        // this.chunkList.push({stream: videoStream});
        this.chunks = [];
        let videoFile = new File([blob], 'msr-' + (new Date).toISOString().replace(/:|\./g, '-') + '.webm', {
          type: 'video/webm'
        });
        this.$emit('upload-face', videoFile,this.faceImg);
        this.faceImg='';
      },
      //获取录制的视频
      getRecordingData(e) {
        this.chunks.push(e.data);
      },
      //获取录制的视频 停止时保存视频
      bindEvents() {
        this.recorder.ondataavailable = this.getRecordingData;
        this.recorder.onstop = this.saveRecordingData;
      },
    }
  }
</script>

<style scoped>

</style>