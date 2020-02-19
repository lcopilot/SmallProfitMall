module.exports = {
  devServer: {
    // 设置主机地址
    host: 'localhost',
    // 设置默认端口
    port: 13000,

    // 设置代理
    proxy: {
      '/api': {
        // 目标 API 地址
        target: 'http://localhost:3167',
        pathRewrite: {
          '^/api': ''
        },
        // 是否要代理 websockets
        ws: false,
        //是否跨域
        changeOrigin: true
      }
    }
  }
}
