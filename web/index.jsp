<%--
  Created by IntelliJ IDEA.
  User: guai
  Date: 2020/6/9
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>hello websocket</h1>
  <br>
  <p><input type="button" value="发送" id="send"></p>
  <script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>

  <script type="text/javascript">
    var userName="tiger";
    //webSocket对象
    var socket=null;
    //初始化websocket
    function init(){
      socket=new WebSocket("ws:/localhost/chatroom/chat/"+userName);
      console.info(socket);
      if(typeof (WebSocket)==null){
        alert("你的浏览器不支持webSocket！");
      }else{
        socket.onopen=function(){
          console.info("链接打开了");
        }
        socket.onclose=function(){
          console.info("连接关闭了");
        }
        socket.onerror=function(error){
          alert("出错了！");
          console.info("连接出错了");
          console.info(error)
        }
        socket.onmessage=function(msg){
          console.info("接收到消息");
          console.info(msg);
        }
      }
    }

    //创建发送消息方法
    function send(message){
      if(socket==null){
        init();
      }
      if(socket.readyState==1){
        socket.send(JSON.stringify(message));
      }
    }

    $("#send").bind("click",function(){
      send("hello server");
    })

    $(function () {
      init();
    })
  </script>
  </body>
</html>
