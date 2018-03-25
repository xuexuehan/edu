<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!-- GrowingIO Analytics code version 2.1 -->
<!-- Copyright 2015-2017 GrowingIO, Inc. More info available at http://www.growingio.com -->

<script type='text/javascript'>
!function(e,t,n,g,i){e[i]=e[i]||function(){(e[i].q=e[i].q||[]).push(arguments)},n=t.createElement("script"),tag=t.getElementsByTagName("script")[0],n.async=1,n.src=('https:'==document.location.protocol?'https://':'http://')+g,tag.parentNode.insertBefore(n,tag)}(window,document,"script","assets.growingio.com/2.1/gio.js","gio");
  gio('init', 'a05d7db786ebd095', {});

//custom page code begin here

//custom page code end here


gio('send');
</script>

<!-- End GrowingIO Analytics code version: 2.1 -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<frameset cols="180px,*"  frameborder="no" border="0" framespacing="0"  name="allFrames">
  <frame src="<%=path %>/admin/inc/left.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
  <frameset rows="37px,*,28px"  frameborder="no" border="0" framespacing="0" >
      <frame src="<%=path %>/admin/inc/top.jsp" name="topFrame" id="topFrame" title="topFrame" />
      <frame src="<%=path %>/admin/inc/main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
      <frame src="<%=path %>/admin/inc/foot.jsp" name="footFrame" id="footFrame" title="footFrame" scrolling="no"/>
  </frameset>
</frameset><noframes></noframes>
</html>
