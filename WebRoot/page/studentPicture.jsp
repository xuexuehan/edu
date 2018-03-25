<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<%=path%>/js/bqy/css/jqcloud.css" />
<script src="<%=path%>/js/bqy/jquery-2.1.0.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/js/bqy/jqcloud-1.0.4.js" type="text/javascript" charset="utf-8"></script>

<style>
.append_div {
	background: black;
	color: #FFFFFF;
	opacity: 0.5;
	text-align: center;
	position: absolute;
	height: 100px;
	width: 80px;
}
</style>
<script type="text/javascript">

	var data = (function() {
		var arr = [];
		
		$.ajax({
			type : "post",
			async : false, //同步执行
			url : "StuPictureServlet",
			data : {},
			dataType : "json", //返回数据形式为json
			success : function(result) {
				if (result) {
					for (var i = 0; i < result.length; i++) {
						console.log(result[i].name);
						arr.push([result[i].name,Math.ceil(Math.random()*10),888]);
					}
				}
			},
			
		
			
			error : function(errorMsg) {
				alert("不好意思，图表请求数据失败啦!");
				myChart.hideLoading();
			}
		})
		return arr;
	})()

	var string_ = "";
	for (var i = 0; i < data.length; i++) {
		var string_f = data[i][0];
		var string_n = data[i][1];
		string_ += "{text: '"
				+ string_f
				+ "', weight: '"
				+ string_n
				+ "',html: {'class': 'span_list',onmouseover:'on_mouseover(this,event)',onmouseout:'on_mouseout()'}},";
	}

	function on_mouseover(e, ev) {
		var txt = $(e).html();
		ev = ev || event;
		$
				.each(
						data,
						function(i, item) {
							if (txt == item[0]) {
								
								return;
							}

						});
	}
	$(function() {
		$("#my_favorite_latin_words").jQCloud(word_list);
	});
	var string_list = string_;
	var word_list = eval("[" + string_list + "]");

	function on_mouseout() {
		$(".append_div").remove();
	}
</script>
</head>

<body>
	<div class="" style="width: 100%;">
		<div id="my_favorite_latin_words"
			style="width: 800px; margin: 0px auto; height: 400px; border: 1px solid #ccc; "></div>
	</div>
</body>
</html>