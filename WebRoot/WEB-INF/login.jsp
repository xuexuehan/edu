<%@ page import="com.bean.UserBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	background-size: cover;
	no-repeat
}

.wrap {
	width: 700px;
	height: 506px;
	background: #444444;
	margin: 100px auto 0 auto;
}

.top {
	width: 443px;
	margin: 0 auto;
	padding: 50px 0 0 0;
}

.mainbg {
	width: 443px;
	background: url(<%=path%>/admin/images/login/mainbg.jpg) repeat-y;
	margin: 0 auto;
}

ul {
	margin: 0;
	padding: 0 0 0 100px;
	list-style: none;
}

ul li {
	padding: 8px 0 5px 0;
	font-size: 14px;
	font-family: "微软雅黑";
	color: #6fb501;
	font-weight: bold;
}

ul li a {
	color: #6fb501;
	text-decoration: underline;
}

ul li .inptext {
	width: 210px;
	border: 1px solid #fff;
	height: 23px;
	line-height: 23px;
}

ul li .inptext2 {
	width: 110px;
	border: 1px solid #fff;
	height: 23px;
	line-height: 23px;
}

.btn {
	width: 89px;
	background: url(<%=path%>/admin/images/login/login_btn.gif) no-repeat;
	height: 25px;
	border: 0;
}

.bottom {
	width: 443px;
	margin: 0 auto;
}

.text {
	color: #FFFFFF;
	font-size: 12px;
	font-family: "微软雅黑";
	text-align: center;
	margin: 10px 0 0 0;
}

.fontred {
	color: #C00;
}
</style>
<script type="text/javascript">
	function replaceKaptcha() {
		document.getElementById("mykaptcha").src = "${pageContext.request.contextPath}/kaptcha?"
				+ Math.random();
	}
	window.onload = function() {
		var username = document.getElementById("username");
		username.onblur = function() {
			var namespan = document.getElementById("namespan");
			if (this.value == "") {
				namespan.innerHTML = "用户名不能为空！";
				username.focus();
				return;
			} else {
				namespan.innerHTML = "<font color='green'>用户名输入正确!</font>";
			}
		}

	}

	function valid() {
		var username = document.getElementById("username");
		var namespan = document.getElementById("namespan");
		if (username == null || username.value == "") {
			namespan.innerHTML = "用户名不能为空！";
			namespan.focus();
			return false;
		} else {
			namespan.innerHTML = "<font color='green'>用户名输入正确!</font>";
		}

		return true;
	}
</script>
</head>

<body>
	<div
		style="background:url(<%=path%>/admin/images/timg.jpg) center 0 no-repeat;background-size:cover">
		<div class="wrap">
			<div class="top">
				<img src="<%=path%>/admin/images/login/top.jpg">
			</div>
			<div class="mainbg">
				<form action="${pageContext.request.contextPath }/LoginServlet"
					onsubmit="return valid()" method="post">
					<ul>
						<li>用户名Username:</li>
						<li><input type="text" name="username" id="username"
							class="inptext"> <span class="fontred" id="namespan">请输入用户名</span></li>
						<li>密 码Password：</li>
						<li><input type="password" name="pwd" class="inptext">
								<span class="fontred">请输入用密码</span></li>
						<li>用户类型Type： 

					<select name="type" class="styledselect_form_1">
                      <option value="">请选择</option>
                    <option value="学生" selected="selected" name="type">学生</option>
                    <option value="教师" name="type">教师</option>
                   
                   
                  	</select>
						</li>
						<li>验证码Captcha：</li>
						<li><input type="text" name="kapt" class="inptext2">
								&nbsp; <img id="mykaptcha"
								src="${pageContext.request.contextPath }/kaptcha"
								onclick="replaceKaptcha()" alt="验证码" /> <span class="fontred">请输入验证码</span></li>
						<li><input name="" type="checkbox" value="" />&nbsp;&nbsp;<a
							href="#">记住密码</a> &nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;<a
							href="#">忘记密码</a></li>
						<li><input type="submit" class="btn" value=" "></li>
					</ul>
				</form>
			</div>
			<div class="bottom">
				<img src="<%=path%>/admin/images/login/bottom.jpg">
			</div>
			<div class="text">2018 © Copyright 西安邮电在线学习平台.. All rights
				reserved.</div>
		</div>
	</div>

</body>
</html>
