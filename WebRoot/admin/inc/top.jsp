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
<link href="<%=path %>/admin/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="top_frame">
  <ul>
    <li><a href="<%=path %>/page/score.jsp" target="mainFrame" class="t_desc" title="学习">学习</a></li>
    <li><a href="<%=path %>/page/studentPicture.jsp" target="mainFrame" class="t_acc" title="我的桌面">综合画像</a></li>
    <li><a href="<%=path %>/page/sleep.jsp" target="mainFrame" class="t_msg" title="作息">作息</a></li>
    <li><a href="#" class="t_set"  title="三餐">三餐</a></li>
    <li><a href="<%=path %>/page/socialnet.jsp" target="mainFrame" class="t_theme" title="社交关系">社交关系</a></li>
    <li><a href="#" class="t_max"  title="上网">上网</a></li>
    <li><a href="#" class="t_copy" title="消费">消费</a></li>
    <li><a href="#" class="t_exit" title="成长推荐">成长推荐</a></li>
    <li><a href="#" class="t_desc" title="详细信息">详细信息</a></li>
  </ul>
</div>
</body>
</html>

