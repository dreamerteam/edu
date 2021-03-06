<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>title</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/common/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/base.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/login.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/validationEngine.jquery.css" />
</head>
<body>
<div class="col-md-5 col-md-offset-4">
	<div class="container">
		<div class="login-bg">
			<div style="text-align: center;">
				<h1>梦想家学前少儿英语国际外教课堂</h1>
			</div>
			<form action="${contextPath }/login" id="loginForm" class="form-horizontal mw380" role="form">
				<input type="hidden" id="captchaSessionID" name="captchaSessionID" />
				<div class="form-group">
					 <label class="col-lg-4 control-label">用户名</label>
					 <div class="col-lg-8">
					 	<input type="text" name="clogin" id="clogin" class="form-control validate[required]" placeholder="用户名"/>
					 </div>
				</div>
				<div class="form-group">
					<label class="col-lg-4 control-label">密码</label>
					<div class="col-lg-8">
						<input type="password" name="cpassword" id="cpassword" class="form-control validate[required]" placeholder="密码"/>
					 </div>
				</div>
				<div class="form-group">
					<label class="col-lg-4 control-label">验证码</label>
					<div class="col-lg-8">
						<input type="text" name="captcha" id="captcha" class="form-control validate[required]" placeholder="验证码"/>
					 </div>
				</div>
				<div class="form-group">
					<label class="col-lg-4 control-label"></label>
					<div class="col-lg-8">
						<img class="img-rounded cursor-pointer" id="captchaImg" src="" >
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-5 col-lg-7">
						<div class="checkbox">
							<label> <input type="checkbox"> Remember me </label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-5 col-lg-7">
						<input type="submit" class="btn btn-primary" value="登录"/>
					</div>
						<!-- <input type="submit" class="btn btn-primary btn-lg btn-block" value="登录"/> -->
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery.js" ></script>
<script type="text/javascript" src="${contextPath }/common/bootstrap/js/bootstrap.js" ></script>
<script type="text/javascript" src="${contextPath }/common/js/common.js" ></script>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery.validationEngine.js" ></script>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery.validationEngine-zh_CN.js" ></script>
<script type="text/javascript">
var contextPath = "${contextPath}";
var captchaImg = $("#captchaImg");
var captchaSessionID = $("#captchaSessionID");
</script>
<script type="text/javascript" src="${contextPath }/main/js/login.js" ></script>
</html>