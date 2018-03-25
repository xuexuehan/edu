<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<script type="text/javascript" src="<%=path%>/js/echarts.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-1.9.1.js"></script>

<script type="text/javascript">
	$(function() {

		debugger;
		// 基于准备好的dom，初始化echarts图表
		var myChart = echarts.init(document.getElementById('main'));

		var option = {
			title : {
				text : '个人成绩',
				subtext : '来源西安邮电'
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				data : [ '个人平均成绩', '专业平均成绩' ]
			},
			toolbox : {
				show : true,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'line', 'bar' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			xAxis : [ {
				type : 'category',
				boundaryGap : false,
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
				type : 'value',
				axisLabel : {
					formatter : '{value}'
				}
			} ],
			series : [ {
				name : '最高成绩',
				type : 'line',
				
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
									console.log(result[i].score);
									arr.push(result[i].score);
								}
							}

						},
						error : function(errorMsg) {
							alert("不好意思，图表请求数据失败啦!");
							myChart.hideLoading();
						}
					})
					return arr;
				})(),
				
				markPoint : {
					data : [ {
						type : 'max',
						name : '最大值'
					}, {
						type : 'min',
						name : '最小值'
					} ]
				},
				markLine : {
					data : [ {
						type : 'average',
						name : '平均值'
					} ]
				},
		
				markLine : {
					data : [ {
						type : 'average',
						name : '平均值'
					} ]
				}
			} ]
		};

		// 为echarts对象加载数据 
		myChart.setOption(option);
	});
</script>
</head>

<body>
	<div id="main" style="height: 600px; width: 1000Px" align="center"></div>
</body>
</html>
