import sysConfig from "./sysConfig";
const webSocket=sysConfig.webSocket;


let websocket = null;
let globalCallback = null;
let websocketStatus=false; //websocket链接状态
const timeout = 27 * 1000;//30秒一次心跳
let heartbeatTimer=0; //心跳计时器
let HeartbeatStatus=false; //心跳连接状态
let checkConnectionTimer=0; //心跳检测延迟定时器
let callbackNameMap=new Map();
let reconnectionTimer=0; //重连计时器

export const initWebSocket = () => { //初始化websocket
  if (!sessionStorage.getItem("uId")) {
    return;
  }
  clearTimeout(checkConnectionTimer);
  const wsUri =(window.location.protocol == 'http:') ?"ws://localhost:3167/notification/" + sessionStorage.getItem("uId") : "wss://localhost:3167/notification/" + sessionStorage.getItem("uId");
  // const wsUri =(window.location.protocol == 'http:') ?"ws://www.smallprofit.fhxasdsada.xyz/ws/notification/" + sessionStorage.getItem("uId") : "wss://www.smallprofit.fhxasdsada.xyz/ws/notification/" + sessionStorage.getItem("uId");
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
    console.error("WebSocket连接发生错误");
    //重连
    reconnection();
  };
};

// 发送信息
const sendMessage = (message, code,callback) => {
  depositMethod(code,callback);
  /**
   * webSocket的readyState属性用来定义连接状态，该属性的值有下面几种：
   0 ：对应常量CONNECTING (numeric value 0)，
   正在建立连接连接，还没有完成。The connection has not yet been established.
   1 ：对应常量OPEN (numeric value 1)，
   连接成功建立，可以进行通信。The WebSocket connection is established and communication is possible.
   2 ：对应常量CLOSING (numeric value 2)
   连接正在进行关闭握手，即将关闭。The connection is going through the closing handshake.
   3 : 对应常量CLOSED (numeric value 3)
   连接已经关闭或者根本没有建立。The connection has been closed or could not be opened.
   */
  if (websocket.readyState === websocket.OPEN) {
    //停止心跳
    stopHeartbeat();
    //若是ws开启状态
    websocketSend(message);
  } else if (websocket.readyState !== websocket.CONNECTING) {
    initWebSocket();
    // 若未开启 ，则等待1s后重新调用
    setTimeout(function () {
      sendMessage(message, callback);
    }, 1000);
  } else {
    // 若是 正在开启状态，则等待1s后重新调用
    //重新连接
    setTimeout(function () {
      sendMessage(message, callback);
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
  if (e!=null){
    stopHeartbeat();
    if (JSON.parse(e.data).code){
      if (JSON.parse(e.data).code!=81000){
        globalCallback=callbackNameMap.get(80000);
        globalCallback(JSON.parse(e.data));
      }
      globalCallback=callbackNameMap.get(JSON.parse(e.data).code);
      globalCallback(JSON.parse(e.data));
    }
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
  clearTimeout(reconnectionTimer);
  console.log("连接成功");
  startHeartbeat();
}

//启动心跳包
function startHeartbeat() {
  clearTimeout(heartbeatTimer);
  const heartbeatPacket={userId:sessionStorage.getItem("uId"),code:"81000",message:"Confirm heartbeat link"};
  heartbeatTimer=setTimeout(()=>{
     HeartbeatStatus=false;
     sendMessage(heartbeatPacket,81000,eval(heartbeatMessageCallback));
     checkConnection();
  },timeout)
}
//心跳消息回调
function heartbeatMessageCallback(msg) {
  clearTimeout(heartbeatTimer);
  if (msg!=null && msg.code==81000){
      HeartbeatStatus=true;
    }
}
//心跳连接状态
function checkConnection(){
  //心跳状态监测 延迟3秒防止服务器数据延迟
  checkConnectionTimer=setTimeout(()=>{
    if (HeartbeatStatus){
      clearTimeout(heartbeatTimer);
      startHeartbeat();
    }else {
      reconnection();
    }
  },3000)
}
//重连
function reconnection() {
  clearTimeout(heartbeatTimer);
  clearTimeout(reconnectionTimer);
  //尝试重连 2秒一次
  reconnectionTimer=setInterval(()=>{
    if (websocketStatus){
      clearTimeout(reconnectionTimer);
    }
    initWebSocket();
  },1500)
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

//将接收消息的方法放入map
const depositMethod=(code,callback)=>{
  if (callbackNameMap.get(code)==null){
    callbackNameMap.set(code,callback);
  }
};

export {sendMessage, close,getWebsocketStatus,depositMethod}