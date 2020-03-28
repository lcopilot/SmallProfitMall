let websocket = null;
let globalCallback = null;
let websocketStatus=false; //websocket链接状态
const timeout = 30 * 1000;//30秒一次心跳
let heartbeatTimer=0; //心跳计时器
let HeartbeatStatus=false; //心跳连接状态

export const initWebSocket = () => { //初始化websocket
  if (!sessionStorage.getItem("uId")) {
    return;
  }
  const wsUri = "ws://localhost:3167/notification/" + sessionStorage.getItem(
      "uId");
  websocket = new WebSocket(wsUri);
  //接收服务器的消息
  websocket.onmessage = function (e) {
    websocketOnMessage(e);
  };
  //关闭连接
  websocket.onclose = function (e) {
    websocketClose(e);
  };
  //建立连接
  websocket.onopen = function () {
    websocketOpen();
  };
  //连接报错
  websocket.onerror = function () {
    console.log("WebSocket连接发生错误");
  };
};

// 发送信息
const sendMessage = (msg, callback) => {
  globalCallback = callback;
  if (websocket.readyState === websocket.OPEN) {
    //停止心跳
    stopHeartbeat();
    //若是ws开启状态
    websocketSend(msg);
  } else if (websocket.readyState !== websocket.CONNECTING) {
    initWebSocket();
    // 若未开启 ，则等待1s后重新调用
    setTimeout(function () {
      sendMessage(msg, callback);
    }, 1000);
  } else {
    // 若是 正在开启状态，则等待1s后重新调用
    setTimeout(function () {
      sendMessage(msg, callback);
    }, 1000);
  }
};

//关闭连接
const close = () => {
  websocket.onclose();
  //停止心跳
  stopHeartbeat();
};

//数据接收
function websocketOnMessage(e) {
  console.log('数据接收')
  if (e!=null){
    globalCallback(JSON.parse(e.data));
    //开启心跳
    startHeartbeat();
  }
}

//数据发送
function websocketSend(agentData) {
  websocket.send(JSON.stringify(agentData));
}

//关闭
function websocketClose() {
  console.log("连接断开");
}
//连接成功
function websocketOpen(e) {
  //修改连接状态
  websocketStatus=true;
  console.log("连接成功");
  startHeartbeat();
}


//启动心跳包
function startHeartbeat() {
  clearTimeout(heartbeatTimer);
  HeartbeatStatus=false;
  const heartbeatPacket={userId:sessionStorage.getItem("uId"),code:"80001",message:"Confirm heartbeat link"}
  heartbeatTimer=setTimeout(()=>{
     sendMessage(heartbeatPacket,HeartbeatMessageCallback());
  },timeout)
}
//心跳消息回调
function HeartbeatMessageCallback(msg) {
    if (msg!=null && msg.code===80002){
      HeartbeatStatus=true;
    }
    checkConnection();
}
//心跳连接状态
function checkConnection(){
    if (HeartbeatStatus){
      clearTimeout(heartbeatTimer);
      startHeartbeat();
    }else {
      clearTimeout(heartbeatTimer);
      //尝试重连 2秒一次
      let reconnection=setInterval(()=>{
        if (websocketStatus){
          console.log('重连成功')
          clearTimeout(reconnection);
        }
        initWebSocket();
      },2000)
    }
}
//停止心跳
function stopHeartbeat() {
  HeartbeatStatus=false;
  clearTimeout(heartbeatTimer);
}

//获取websocket链接状态
const getWebsocketStatus=()=>{
  return websocketStatus;
};

export {sendMessage, close,getWebsocketStatus}