<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>教师管理菜单【左侧】</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/content.css" />
</head>
<body>
	<div class="easyui-accordion" data-options="fit:true,border:false">
		<div title="课程类型管理" style="padding: 10px;">
			<a href="javascript:void(0)" class="easyui-linkbutton left_menu" onclick="openTab('easyui-tabs', '列表','${contextPath}/page/main/course/add', true)" data-options="toggle:true,group:'leftCourseType'">列表</a><br>
			<a href="javascript:void(0)" class="easyui-linkbutton left_menu" onclick="openTab('easyui-tabs', '添加','${contextPath}/page/main/course/add', true)" data-options="toggle:true,group:'leftCourseType'">添加</a>
		</div>
		<div title="课程管理" style="padding: 10px;">
			<a href="javascript:void(0)" class="easyui-linkbutton left_menu" onclick="openTab('easyui-tabs', '列表','${contextPath}/page/main/course/add', true)" data-options="toggle:true,group:'leftCourse'">列表</a><br>
			<a href="javascript:void(0)" class="easyui-linkbutton left_menu" onclick="openTab('easyui-tabs', '添加','http://jquery.com/', true)" data-options="toggle:true,group:'leftCourse'">添加</a>
		</div>
	</div>
</body>
<script type="text/javascript">
var contextPath = "${contextPath}";
</script>
<script type="text/javascript" src="${contextPath }/main/js/left.js" ></script>
</html>