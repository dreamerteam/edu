<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>梦想家</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/common/easyui/themes/bootstrap/easyui.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/easyui/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/base.css" />
</head>
<body class="easyui-layout">
	<div region="north" style="height:120px;overflow: hidden;">
		<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
	</div>  
    <div region="west" title="${param.leftPage eq 'home' ? '首页' : param.leftPage eq 'teacher' ? '教师管理' : param.leftPage eq 'course' ? '课程管理' : ''}" split="true" style="width:200px;" id="left">
    	<c:choose>
    		<c:when test="${param.leftPage eq 'home' }">
    			<jsp:include page="/WEB-INF/views/include/left_home.jsp"></jsp:include>
    		</c:when>
    		<c:when test="${param.leftPage eq 'teacher' }">
    			<jsp:include page="/WEB-INF/views/include/left_teacher.jsp"></jsp:include>
    		</c:when>
    		<c:when test="${param.leftPage eq 'course' }">
    			<jsp:include page="/WEB-INF/views/include/left_course.jsp"></jsp:include>
    		</c:when>
    	</c:choose>
    </div>  
    <div region="center" title="主页面" style="padding:5px;background:#eee;overflow: hidden;">
    	<div class="easyui-tabs" id="easyui-tabs" data-options="fit:true,border:false,plain:true">
		</div>
    </div>
</body>
<script type="text/javascript" src="${contextPath }/common/easyui/js/jquery.min.js" ></script>
<script type="text/javascript" src="${contextPath }/common/easyui/js/jquery.easyui.min.js" ></script>
<script type="text/javascript" src="${contextPath }/common/js/common.js" ></script>
<script type="text/javascript">
var contextPath = "${contextPath}";
</script>
<script type="text/javascript" src="${contextPath }/main/js/index.js" ></script>
</html>