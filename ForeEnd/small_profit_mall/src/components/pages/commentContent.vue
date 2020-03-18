<template>
  <div>
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
                v-model="score"
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
              <div class="product_play" v-if="true">
                <el-link :underline="false"  @click.native="playerVideoComment()">
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
          <el-row class="product_comment_information">
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
              <router-link to="/"> 举报</router-link>
            </span>
              <span style="margin-right: 10px">
              <router-link to="/">
                 <svg-icon name="like" style="height: 19px;width: 18px"/>2588
              </router-link>

            </span>
              <span style="margin-right: 10px">
              <router-link to="/">
                <svg-icon name="reply" style="height: 19px;width: 18px"/>25
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
  </div>
</template>

<script>
  export default {
    name: "commentContent",
    data() {
      return {
        //评分
        score: 4,
        avatar: 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938',
        videoShow: false,
        colors: ['#99A9BF', '#F7BA2A', '#FF9900'],  // 等同于 { 2: '#99A9BF', 4: { value: '#F7BA2A', excluded: true }, 5: '#FF9900' }],
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
    props:{
      //评论类型
      genre: {
        type:String,
        required:false,
        default: "1"
      }
    },
    methods: {
      //评论视频的播放
      onPlayerPlayComment() {
        const myPlayer = this.$refs.videoPlayer_1.player;
        myPlayer.play();
      },
      playerVideoComment() {
        this.videoShow=true;
        this.onPlayerPlayComment()
      },
      //关闭视频
      endedVideo() {
        this.videoShow = false;
        this.onPlayerEnded()
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.comment_params.currentPage = currentPage;
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.comment_params.pageSize = pageSize;
      }
    },
    computed: {
      player() {
        return this.$refs.videoPlayer.player;
      }
    },
    created() {

    }
  }
</script>

<style scoped>
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
  .icon_play {
    width: 40px;
    height: 40px;
  }

  .icon_play:hover {
    cursor: pointer;
    transform: scale(1.1);
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
  .product_play {
    width: 24px;
    height: 24px;
    margin-left: 10px;
    margin-top: -55px;
    position: absolute;
    left: 0;
  }

</style>