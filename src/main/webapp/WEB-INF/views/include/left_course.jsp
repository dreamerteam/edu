<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>教师管理菜单【左侧】</title>
</head>
<body>
	<div class="easyui-accordion" data-options="fit:true,border:false">
		<div title="课程管理" style="padding: 10px;">
			<a href="#" class="easyui-linkbutton" onclick="openTab('easyui-tabs', '列表','http://jquery.com/', true)" data-options="selected:true">列表</a>
			<a href="#" class="easyui-linkbutton" onclick="openTab('easyui-tabs', '添加','http://jquery.com/', true)" data-options="selected:true">添加</a>
		</div>
		<div title="Title2" style="padding: 10px;">courese</div>
		<div title="Title3" style="padding: 10px">courese</div>
	</div>
</body>
</html>