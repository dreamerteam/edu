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
<link rel="stylesheet" type="text/css" href="${contextPath }/common/css/content.css" />
</head>
<body>
<div class="easyui-panel" title="新增课程类型" >
        <form id="ff" action="form1_proc.php" method="post">
            <table>
                <tr>
                    <td>课程名称:</td>
                    <td><input name="cname" type="text"></input></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input name="email" type="text"></input></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><input name="phone" type="text"></input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></input></td>
                </tr>
            </table>
        </form>
    </div>
</body>
<script type="text/javascript" src="${contextPath }/common/easyui/js/jquery.min.js" ></script>
<script type="text/javascript" src="${contextPath }/common/easyui/js/jquery.easyui.min.js" ></script>
<script type="text/javascript" src="${contextPath }/common/js/common.js" ></script>
<script type="text/javascript">
var contextPath = "${contextPath}";
</script>
<script type="text/javascript" src="${contextPath }/main/js/coursetype.js" ></script>
</html>