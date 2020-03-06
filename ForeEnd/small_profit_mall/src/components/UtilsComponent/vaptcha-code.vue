<template>
  <div ref="vaptcha" style="width: 300px;height: 10px;margin-left: 70px ">
    <div class="vaptcha-init-main">
      <div class="vaptcha-init-loading">
        <a href="https: //www.vaptcha.com/" target="_blank"><img src="https://cdn.vaptcha.com/vaptcha-loading.gif"/></a>
        <span class="vaptcha-text">VAPTCHA启动中...</span>
      </div>
    </div>
  </div>
</template>

<script>
  const extend = function(to, _from) {
    for (const key in _from) {
      to[key] = _from[key]
    }
    return to
  }

  export default {
    props: {
      type: {
        type: String,
        default: 'click'
      },
      scene: {
        type:Number,
        default: 1
      },
      vpStyle: {
        type: String,
        default: 'dark'
      },
      color: {
        type: String,
        default: '#3C8AFF'
      },
      lang: {
        type: String,
        default: 'zh-CN'
      },
    },
    mounted() {
      let config = extend({
        vid: '5e5090b0c7c282e4485ec606',
        container: this.$refs.vaptcha,
        style: this.vpStyle,
        offline_server: 'aaa',
        scene: this.scene
      }, this.$props)
      this.loadV2Script().then(() => {
        window.vaptcha(config).then(obj => {
          obj.listen('pass', res=> {
            this.success(obj.getToken());
          })
          //关闭验证弹窗时触发
          obj.listen('close', function() {
            obj.render();
          })
          obj.render();
        })
      })
    },
    data() {
      return {
      script: null,
      }
    },
    methods: {
      loadV2Script() {
        if (typeof window.vaptcha === 'function') { //如果已经加载就直接放回
          return Promise.resolve()
        } else {
          return new Promise(resolve => {
            let script = document.createElement('script')
            script.src = 'https://v.vaptcha.com/v3.js'
            script.async = true
            script.onload = script.onreadystatechange = function () {
              if (!this.readyState || this.readyState == 'loaded' || this.readyState
                  == 'complete') {
                resolve()
                script.onload = script.onreadystatechange = null
              }
            }
            document.getElementsByTagName("head")[0].appendChild(script)
          })
        }
      },
      success(toke) {
        this.$emit('success',toke)
      },
    }
  }
</script>

<style>
  .vaptcha-init-main {
    display: table;
    width: 100%;
    height: 100%;
    background-color: #EEEEEE;
  }
  .vaptcha-init-loading {
    display: table-cell;
    vertical-align: middle;
    text-align: center
  }
  .vaptcha-init-loading>a {
    display: inline-block;
    width: 18px;
    height: 18px;
  }
  .vaptcha-init-loading>a img{
    vertical-align: middle
  }
  .vaptcha-init-loading .vaptcha-text {
    font-family: sans-serif;
    font-size: 12px;
    color: #CCCCCC;
    vertical-align: middle
  }

  button {
    display: inline-block;
    margin-bottom: 0;
    font-weight: 400;
    text-align: center;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    padding: 5px 15px 6px;
    font-size: 12px;
    border-radius: 4px;
    transition: color .2s linear,background-color .2s linear,border .2s linear,box-shadow .2s linear;
    color: #515a6e;
    background-color: #fff;
    border-color: #dcdee2;
    outline: none
  }
  pre{
    padding: 20px 0;
  }
  button:active {
    color: #2b85e4;
    background-color: #fff;
    border-color: #2b85e4;
  }
</style>