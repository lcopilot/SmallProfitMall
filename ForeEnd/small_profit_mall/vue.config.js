module.exports = {
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

  chainWebpack: config => {
    config.module
      .rule('svg-sprite')
      .use('svgo-loader')
      .loader('svgo-loader')
  }
}
