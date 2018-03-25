<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="<%=path %>/admin/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="content">
  <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
    <tr>
      <th rowspan="3" class="sized"><img src="<%=path %>/admin/images/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
      <th class="topleft"></th>
      <td id="tbl-border-top">&nbsp;</td>
      <th class="topright"></th>
      <th rowspan="3" class="sized"><img src="<%=path %>/admin/images/side_shadowright.jpg" width="20" height="300" alt="" /></th>
    </tr>
    <tr>
      <td id="tbl-border-left"></td>
      <td><!--  start content-table-inner -->
          <div id="content-table-inner">
            <table border="0" width="100%" cellpadding="0" cellspacing="0">
              <tr >
                <td><!--  start step-holder -->
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="50" valign="top"><div class="error-left"></div>
                            <div class="error-inner">
                              <h3 class="add">欢迎您，${stu.name }, 您打算下一步做什么？</font></h3>
                            </div></td>
                      </tr>
                    </table>
                  <ul class="shortcut-buttons-set">
                      <li><a class="shortcut-button" href="biaodan.html" ><span> <img src="<%=path %>/admin/images/icons/pencil_48.png" alt="icon" /><br />
                        新添加一篇文章 </span></a></li>
                    <li><a class="shortcut-button" href="biaodan2.html"><span> <img src="<%=path %>/admin/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
                      浏览所有文章 </span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/image_add_48.png" alt="icon" /><br />
                      栏目管理</span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/clock_48.png" alt="icon" /><br />
                      媒体管理 </span></a></li>
                    <li><a class="shortcut-button" href="#messages" rel="modal"><span><img src="<%=path %>/admin/images/icons/comment_48.png" alt="icon" /><br />
                      用户管理 </span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/pencil_48.png" alt="icon" /><br />
                      模块管理 </span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
                      扩展管理</span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/image_add_48.png" alt="icon" /><br />
                      模板管理</span></a></li>
                    <li><a class="shortcut-button" href="#"><span> <img src="<%=path %>/admin/images/icons/clock_48.png" alt="icon" /><br />
                      后台风格</span></a></li>
                    <li><a class="shortcut-button" href="#messages" rel="modal"><span><img src="<%=path %>/admin/images/icons/comment_48.png" alt="icon" /><br />
                      修改我的信息 </span></a></li>
                  </ul></td>
              </tr>
              <tr>
                <td><img src="<%=path %>/admin/images/blank.gif" width="695" height="1" alt="blank" /></td>
                <td></td>
              </tr>
            </table>
            <div class="clear"></div>
          </div>
        <!--  end content-table-inner  --></td>
      <td id="tbl-border-right"></td>
    </tr>
    <tr>
      <th class="sized bottomleft"></th>
      <td id="tbl-border-bottom">&nbsp;</td>
      <th class="sized bottomright"></th>
    </tr>
  </table>
</div>



</body>
</html>
