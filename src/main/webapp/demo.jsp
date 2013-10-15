<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/tags.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Demo</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/base.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/content.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/jquery/jquery-ui/themes/jquery.ui.all.css" />
</head>
<body>
<div id="accordion">
	<h3>Section 1</h3>
	<div></div>
	<h3>Section 2</h3>
	<div></div>
	<h3>Section 3</h3>
	<div></div>
	<h3>Section 4</h3>
	<div></div>
</div>
</body>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery.js" ></script>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery-ui/jquery.ui.core.js" ></script>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery-ui/jquery.ui.widget.js" ></script>
<script type="text/javascript" src="${contextPath }/common/jquery/jquery-ui/jquery-ui.custom.js" ></script>
<script type="text/javascript" src="${contextPath }/common/js/common.js" ></script>
<script type="text/javascript">
$(function() {
	$( "#accordion" ).accordion({
		collapsible: true
	}); 
});
</script>
</html>