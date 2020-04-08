const CompressionPlugin = require("compression-webpack-plugin")
module.exports = {
  publicPath:'./',    // 公共路径
  devServer: {
    // 设置主机地址
    host: '0.0.0.0',
    // 设置默认端口
    port: 13000,
    // 设置代理
    proxy: {
      '/apiUrl': {
        // 目标 API 地址
        target: 'http://localhost:3167',
        pathRewrite: {
          '^/apiUrl': ''
        },
        // 是否要代理 websockets
        ws: false,
        //是否跨域
        changeOrigin: true,

      }
    }
  },

  /**
   * 压缩配置
   * @param config
   * @returns {{plugins: [CompressionPlugin]}}
   */
  configureWebpack: config => {
    if (process.env.NODE_ENV === 'production') {
      return {
        plugins: [
          new CompressionPlugin({
            test: /\.js$|\.html$|\.css/,
            threshold: 1024,
            deleteOriginalAssets: false
          })
        ]
      }
    }
  },

  /**
   * svg的使用
   * @param config
   */

  chainWebpack: config => {
    config.module
    .rule('svg-sprite')
    .use('svgo-loader')
    .loader('svgo-loader');
  },

  /**
   * autoprefixer 在项目编译的时候，会根据 loader 的规则编译相应的 CSS。
   * Vue-Cli 创建的项目，默认只处理了 .vue 文件中的 CSS，
   * 对于直接 import 引入的样式，需要另外配置 loader 规则。
   */
  css: {
    loaderOptions: {
      css: {
        // 这里的选项会传递给 css-loader
        importLoaders: 1,
      },
      less: {
        // 这里的选项会传递给 postcss-loader
        importLoaders: 1,
      }
    }
  }
}
