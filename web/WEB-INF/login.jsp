<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<title>用户登录</title>
</head>
<body>
	<div class="container">
		<div class="login-area">
			<span class="login-title">账号登录</span>
			<form method="post" id="form" class="fm-login">
				<div class="fm-group">
					<span class="input-info">用户名</span><input type="text"
						placeholder="用户名" id="username" name="username"
						required="required">
				</div>
				<div class="fm-group">
					<span class="input-info">密码</span><input type="password"
						placeholder="密码" id="password" name="password" required="required">
				</div>
				<input type="submit" value="登录" class="btn-primary">
				<div class="bottom-content">
					<div class="link-register">
						<a id="register" href="javascript:;">注册账号</a>
					</div>
					<div class="link-forget">
						<a href="javascript:;">忘记密码</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
</html>