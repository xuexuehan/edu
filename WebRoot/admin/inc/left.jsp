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
<script type="text/javascript" src="<%=path %>/admin/js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<%=path %>/admin/js/simpla.jquery.configuration.js"></script>
</head>
<body>
<div id="sidebar"><div id="sidebar-wrapper">
			<div id="profile-links" class="mypng"><img src="<%=path %>/admin/images/logo.png"  />
          您好, ${stu.name }, <a href="main.html"  target="mainFrame">我的桌面</a><br />
				<br />
				<a href="http://www.xiandianzhi.com" title="官网首页" target="blank">查看网站</a> | <a href="<%=path %>/InitLogin" title="Sign Out" target="_top">退出登陆</a>            </div>        
			
			 <ul id="main-nav">
			 <c:if test="${user.tyname=='学生' }">
				<li> 
					<a href="#" class="nav-top-item ">综合预警</a>
					<ul>
						<li><a href="<%=path %>/UserServlet?method=initAdminAdd" target="mainFrame">预警概况</a></li>
						<li><a href="user_list.html" target="mainFrame">预警查询</a></li> 
					</ul>
				</li>
				</c:if>
				<li>
					<a href="#" class="nav-top-item">行为画像</a>
					<ul>
						<li><a href="<%=path %>/page/studentPicture.jsp" target="mainFrame">学生个人画像</a></li>
						<li><a href="<%=path %>/StudyServlet?method=list" target="mainFrame">学生群体画像</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">精准资助跟踪</a>
					<ul>
						<li><a href="notice_add.html" target="mainFrame">精准资助跟踪</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">留言管理</a>
					<ul>
						<li><a href="leave_list.html" target="mainFrame">留言列表</a></li>
					</ul>
				</li>

				
				
			</ul> 
			
			<div id="messages" style="display: none"> 
				
				<h3>3 Messages</h3>
				<p>
					<strong>17th May 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>				</p>
				<p>
					<strong>2nd May 2009</strong> by Jane Doe<br />
					Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>				</p>
			 
				<p>
					<strong>25th April 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>				</p>
				
				<form action="#" method="post">
					
					<h4>New Message</h4>
					
					<fieldset>
						<textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
					</fieldset>
					
					<fieldset>
					
						<select name="dropdown" class="small-input">
							<option value="option1">Send to...</option>
							<option value="option2">Everyone</option>
							<option value="option3">Admin</option>
							<option value="option4">Jane Doe</option>
						</select>
						
						<input class="button" type="submit" value="Send" />
					</fieldset>
				</form>
			</div> 		
		</div></div>
</body>
</html>
