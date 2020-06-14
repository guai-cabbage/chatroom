<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/chat.css">

		<title>聊天室</title>
	</head>
	<body>
		<div class="container">
			<div class="header-nav">
				<a id="chat-title">群聊中...</a>
			</div>
			<div class="content-top">
				<span> <span class="chat-username"></span> <a class="chat-title" id="switch-list">用户列表</a> <a class="chat-close" id="logout">退出</a>
				</span>
				<div class="online-list" id="online-list">
					<div class="panel-nav">
						<a>在线列表</a> <a class="opt-close" href="javascript:;" id="opt-close">关闭</a>
					</div>
					<div class="contact-list">
						<ul class="users-list">
							<li class="user-cell">
							   <span class="user-info">用户名:<a class="user-name">{{username}}</a> 昵称:<a class="user-nick">{{nickname}}</a></span>
						   </li>
						</ul>
					</div>
				</div>
			</div>
			<div class="content-message">
				<ul class="messages-list">
					<li class="message-cell message-recieved">
						<span class="message-info">
							<a class="message-time">10:24:22</a>
							<a class="send-user">tiger说:<br /></a>
							<a class="message-content">你好</a>
						</span>
					</li>
					<li class="message-cell message-sent">
						<span class="message-info">
							<a class="message-time">10:24:22</a>
							<a class="send-user">明天说:<br /></a>
							<a class="message-content">我热爱</a>
						</span>
					</li>
				</ul>
				<a class="bottom-anchors"></a>
			</div>
			<div class="message-operate">
				<form id="form" method="post"  class="fm-message">
					<input type="text" name="message" id="message-content" class="message-input" placeholder="输入消息内容" autocomplete="off">
				</form>
				<input type="text" value="发送" id="send-message" class="message-send"/>
			</div>
		</div>
	</body>
<script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
    $("#logout").bind("click",function () {
        logout();
    })

    function logout(){
        if(null!=socket&&socket.readyState==WebSocket.OPEN){
            socket.close();
        }
        location.href="logout";
    }
    $("#switch-list").bind("click",function () {
        $("#online-list").css("display","block");
    })

    $("#opt-close").bind("click",function () {
        $("#online-list").css("display","none");
    })
    window.onbeforeunload=function () {
       backupHistory();
    }

    //控制聊天室输入框底端与输入框顶端对齐
    function scrollToBottom() {
        var destView = $('.bottom-anchors')[0];
        destView.scrollIntoView(false);
    }

    
</script>
</html>
