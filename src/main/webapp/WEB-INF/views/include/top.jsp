<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>top页面</title>
</head>
<body>
	<div style="height: 89px;">
		<label>梦想家</label> 
		<label style="float: right;">当前时间：<span id="time"></span></label>
	</div>
	<div id="nav" class="easyui-tabs">
		<div title="首页" id="homeNav" style="padding: 20px;"></div>
		<div title="教师管理" id="teacherNav" style="padding: 20px;"></div>
		<div title="课程管理" id="courseNav" style="padding: 20px;"></div>
	</div>
</body>
<script type="text/javascript" src="${contextPath }/common/easyui/js/jquery.min.js" ></script>
<script type="text/javascript" src="${contextPath }/common/js/common.js" ></script>
<script type="text/javascript">
var contextPath = "${contextPath}";
</script>
<script type="text/javascript" src="${contextPath }/main/js/top.js" ></script>
</html>