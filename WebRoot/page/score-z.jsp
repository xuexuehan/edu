<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'echart.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="<%=path%>/js/echarts.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript">
	$(function() {

		//debugger;
		// 基于准备好的dom，初始化echarts图表
		var myChart = echarts.init(document.getElementById('main'));

		var option = {
			tooltip : {
				show : true
			},
			legend : {
				data : [ '成绩' ]
			},
			xAxis : [ {
				type : 'category',
				data : (function() {
					var arr = [];
					$.ajax({
						type : "post",
						async : false, //同步执行
						url : "ScoreServlet",
						data : {},
						dataType : "json", //返回数据形式为json
						success : function(result) {
							if (result) {
								for (var i = 0; i < result.length; i++) {
									console.log(result[i].name);
									arr.push(result[i].name);
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

			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				"name" : "成绩",
				"type" : "bar",
				
				itemStyle: {
                    normal: {
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                              '#B5C334','#FCCE10','#E87C25','#27727B','#FE8463',
                              '#9BCA63','#FAD860','#F3A43B','#60C0DD','#C1232B',
                              '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                            ];
                            return colorList[params.dataIndex]
                        },
                        label: {
                            show: true,
                            position: 'top',
                            formatter: '{c}'
                        }
                    }
                  },
                  
				"data" : (function() {
					var arr = [];
					$.ajax({
						type : "post",
						async : false, //同步执行
						url : "ScoreServlet",
						data : {},
						dataType : "json", //返回数据形式为json
						success : function(result) {
							debugger;
							if (result) {
								for (var i = 0; i < result.length; i++) {
									console.log(result[i].score1);
									arr.push(result[i].score1);
								}
							}
						},
						error : function(errorMsg) {
							alert("不好意思，大爷，图表请求数据失败啦!");
							myChart.hideLoading();
						}
					})
					return arr;
				})()

			} ]
		};

		// 为echarts对象加载数据 
		myChart.setOption(option);
	});
</script>
</head>

<body>
	<div id="main" style="height: 300px; width: 600Px" align="center"></div>
</body>
</html>
