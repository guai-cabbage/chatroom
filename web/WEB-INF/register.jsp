<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="../css/register.css">
</head>
<body>
	<div class="container">
		<div class="register-area">
			<span class="register-title"> 用户注册 </span>
			<form id="form" method="post" class="fm-register">
				<div class="fm-group">
					<span class="input-info">用户名</span><input type="text"
						placeholder="用户名" name="username" id="username"
						required="required" autocomplete="off">
				</div>
				<div class="fm-group">
					<span class="input-info">昵称</span><input type="text"
						placeholder="昵称" name="nickname" id="nickname" required="required"
						autocomplete="off">
				</div>
				<div class="fm-group">
					<span class="input-info">密码</span><input type="password"
						id="password" name="password" placeholder="密码" required="required"
						autocomplete="off">
				</div>
				<div class="operate-grid">
					<input type="submit" id="register" value="立即注册"
						class="btn btn-primary"> <a class="notify">*请填写每一项</a>
				</div>
			</form>

		</div>
	</div>
</body>
<script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
</html>