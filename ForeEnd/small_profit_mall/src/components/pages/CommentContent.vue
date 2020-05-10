<template>
  <div>
    <div v-for="(comment,index) in commentList" :key="index">
      <el-row :gutter="10">
        <el-col :span="4">
          <img :src="comment.userImage?comment.userImage:avatar"
               class="product_comment_avatar">
          <span style="font-size: 12px">{{comment.userName}}</span>
        </el-col>
        <el-col :span="20" style="text-align: left">
          <div>
            <el-rate
                v-model="comment.favorability"
                disabled
                show-text
                text-color="#ff9900"
                score-template="{value}"
                :colors="colors"
                :texts="['1.0', '2.0', '3.0', '4.0', '5.0']">
            </el-rate>
          </div>
          <div>
            {{comment.textComment}}
          </div>
          <div>
            <div class="product_comment_img">
              <el-image
                  v-if="comment.videoComment"
                  src="http://img.fhxasdsada.xyz/safd20200406141323.png"
                  fit="scale-down"/>
              <div class="product_play" v-if="comment.videoComment">
                <el-link :underline="false"
                         @click.native="playerVideoComment(index,comment.videoComment)">
                  <svg-icon name="play" class="icon_play"/>
                </el-link>
              </div>
            </div>
            <div class="product_comment_img" v-for="(img,index) in comment.commentPicture"
                 :key="index">
              <el-image title="查看大图"
                        :src="img"
                        fit="scale-down" :preview-src-list="comment.commentPicture"/>
            </div>
            <div v-if="comment.commentVideoSign" class="product_comment_video">
              <video-player class="video-player vjs-custom-skin"
                            :ref="comment.videoComment"
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
                                        src: comment.videoComment,
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
                            @play="onPlayerPlay($event,comment.videoComment)"
                            @ended="onPlayerEnded($event,comment.videoComment)"
                            style="width: 355px;height: 355px">
              </video-player>
              <div class="product_end">
                <a>
                  <svg-icon name="ended" class="icon_ended" @click.native="endedVideo(index)"/>
                </a>
              </div>
            </div>
          </div>
          <el-row class="product_comment_information">
            <el-col :span="20">
            <span style="margin-right: 20px">
              {{comment.productConfiguration}}
            </span>
              <span>
                {{moment(comment.commentTime).format('YYYY-MM-DD HH:mm')}}
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
          <div v-if="comment.secondComment">
            <div>
              {{comment.secondComment.textSecondComment}}
            </div>
            <div>
              <div class="product_comment_img">
                <el-image
                    v-if="comment.secondComment.videoSecondComment"
                    src="http://img.fhxasdsada.xyz/safd20200406141323.png"
                    fit="scale-down"/>
                <div class="product_play" v-if="comment.secondComment.videoSecondComment">
                  <el-link :underline="false"
                           @click.native="playerVideoComment(index,comment.secondComment.videoSecondComment,true)">
                    <svg-icon name="play" class="icon_play"/>
                  </el-link>
                </div>
              </div>
              <div class="product_comment_img"
                   v-for="(img,index) in comment.secondComment.secondCommentPicture" :key="index">
                <el-image title="查看大图"
                          :src="img"
                          fit="scale-down" :preview-src-list="comment.secondComment.secondCommentPicture"/>
              </div>
              <div v-if="comment.secondComment.secondCommentVideoSign" class="product_comment_video">
                <video-player class="video-player vjs-custom-skin"
                              :ref="comment.secondComment.videoSecondComment"
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
                                        src: comment.secondComment.videoSecondComment,
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
                              @play="onPlayerPlay($event,comment.secondComment.videoSecondComment)"
                              @ended="onPlayerEnded($event,comment.secondComment.videoSecondComment)"
                              style="width: 355px;height: 355px">
                </video-player>
                <div class="product_end">
                  <a>
                    <svg-icon name="ended" class="icon_ended" @click.native="endedVideo(index,true)"/>
                  </a>
                </div>
              </div>
            </div>
            <el-row class="product_comment_information">
              <el-col :span="20">
                <span>
                {{moment(comment.secondComment.commentTime).format('YYYY-MM-DD HH:mm')}}
                </span>
              </el-col>

            </el-row>
          </div>
        </el-col>
      </el-row>
      <el-divider/>
    </div>
    <div style="text-align: right">
      <el-pagination
          background
          @size-change="changeNumber"
          @current-change="changePage"
          :current-page="commentParams.currentPage"
          :page-sizes="[6,7, 8, 10]"
          :page-size="commentParams.pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :hide-on-single-page="true"
          :total="commentParams.totalCount">
      </el-pagination>
    </div>
  </div>
</template>

<script>
  import *as productApi from '../../api/page/product'

  export default {
    name: "commentContent",
    data() {
      return {
        //评分
        score: 4,
        //头像
        avatar: 'http://img.fhxasdsada.xyz/iduyadfgjdekldjhf.png',
        colors: ['#99A9BF', '#F7BA2A', '#FF9900'],  // 等同于 { 2: '#99A9BF', 4: { value: '#F7BA2A', excluded: true }, 5: '#FF9900' }],
        //评论图片数组
        commentList: [],
        //评论分页参数
        commentParams: {
          currentPage: 1,//页码
          pageSize: 6,//每页显示个数
          totalCount: 0,//总记录数
          totalPage: 1,//总页数
        },
      }
    },
    props: {
      //评论类型
      genre: {
        type: String,
        required: false,
        default: "1"
      }
    },
    methods: {
      //获取评论
      getProductComment() {
        const params = {
          productId: sessionStorage.getItem("productId"),
          currentPage: this.commentParams.currentPage,
          pageSize: this.commentParams.pageSize,
          commentType: this.genre,
        };
        productApi.getProductComment(params).then(res => {
          if (res.success) {
            this.commentList = res.pagination.list
            this.commentParams.totalCount = res.pagination.totalCount
            this.commentParams.totalPage = res.pagination.totalPage
          }
        })
      },
      //评论视频的播放
      onPlayerPlayComment(e, videoComment) {
        const myPlayer = this.$refs[videoComment].player;
        myPlayer.play();
      },
      //播放视频
      playerVideoComment(index, videoComment,second) {
        if (second){
          this.commentList[index].secondComment.secondCommentVideoSign=true
        }else {
          this.commentList[index].commentVideoSign = true;
        }
        this.onPlayerPlayComment('e', videoComment)
      },
      //关闭视频
      endedVideo(index,second) {
        if (second){
          this.commentList[index].secondComment.secondCommentVideoSign=false
        }else {
          this.commentList[index].commentVideoSign = false;
        }
      },
      //切换评论分页时触发
      changePage(currentPage) {
        this.commentParams.currentPage = currentPage;
        this.getProductComment();
      },
      //切换每页显示多少条评论时触发
      changeNumber(pageSize) {
        this.commentParams.pageSize = pageSize;
        this.getProductComment();
      },
    },
    computed: {
      player() {
        return this.$refs.videoPlayer.player;
      }
    },
    mounted() {
      this.getProductComment();
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