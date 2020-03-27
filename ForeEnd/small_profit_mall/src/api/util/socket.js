
let websocket = null;
let globalCallback = null;
let timeout = 30 * 1000;//30秒一次心跳
let heartbeatTimer=0; //心跳计时器
let isHeartbeat=false; //连接状态
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
  // stopHeartbeat();
  globalCallback = callback;
  if (websocket.readyState === websocket.OPEN) {
    //若是ws开启状态
    websocketSend(msg)
  } else if (websocket.readyState !== websocket.CONNECTING) {
    initWebSocket();
    // 若未开启 ，则等待1.2s后重新调用
    setTimeout(function () {
      sendMessage(msg, callback);
    }, 1200);
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
}

//数据接收
function websocketOnMessage(e) {
  // startHeartbeat();
  globalCallback(JSON.parse(e.data));
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
  // startHeartbeat();
  console.log("连接成功");
  return true;
}



//心跳包
// function startHeartbeat() {
//   console.log('心跳包启动')
//   isHeartbeat=false;
//   const heartbeatPacket={userId:sessionStorage.getItem("uId"),code:"80001",message:"Confirm heartbeat link"}
//   sendMessage(JSON.stringify(heartbeatPacket),HeartbeatMessageCallback());
//   heartbeatTimer=setTimeout(()=>{
//     checkConnection();
//   },timeout)
// }
//
// //心跳消息回调
// function HeartbeatMessageCallback(msg) {
//     if (msg.code==80002){
//       isHeartbeat=true;
//     }
// }
//
// //连接状态
// function checkConnection(){
//     if (isHeartbeat){
//       clearTimeout(heartbeatTimer);
//       startHeartbeat();
//     }else {
//       initWebSocket();
//       clearTimeout(heartbeatTimer);
//     }
// }
// //停止心跳
// function stopHeartbeat() {
//   isHeartbeat=false;
//   clearTimeout(heartbeatTimer);
// }

export {sendMessage, close}