<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="<%=path %>/admin/css/style.css" type="text/css" media="screen" title="default" />
</head>
<body>
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	 2018 &copy; Copyright 学生工作大数据分析平台.. All rights reserved. 
    <font color="#FFFFFF">(本系统在火狐浏览器下为最佳显示效果)</font>    </div>
<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
</body>
</html>

