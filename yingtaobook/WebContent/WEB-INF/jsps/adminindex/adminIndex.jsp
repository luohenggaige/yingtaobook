<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>樱桃图书社区后台管理系统</title>
<style type="text/css">
	.clear {clear: both;}
	a{text-decoration:none;}
	a:hover {text-decoration:underline;}/* 鼠标经过时的效果,underline定义文本下的一条线。 */
	body,div,p,ul,li,tr,td { margin:0px auto; padding:0px;}
	body{text-align:center;}
	#navi{width:100%;height:40px;border:1px solid gray;background:#87CEFA;}
	#navi ul{width:100%;height:40px;border:1px solid yellow;}
	#navi ul li{float:left;padding: 0 6px;line-height: 40px;border:1px solid gray;}
	#navi ul li a{ display:block; text-decoration:none; font-family:"新宋体"; font-size:16px; height:35px; padding:0; }
	#navi ul li a:hover{color:red;}
	
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">
$(function(){

});


</script>
</head>
<body>

		<div style="width:100%;height:80px;">
			<div style="width:50%;height:80px;border:1px solid gray;margin-left:100px;">
			</div>
		</div>
		<div class="clear"></div>
		<div id="navi">
			<ul>
				<li class="ul_li_s"><a >首页</a></li>
				<li class="ul_li_s"><a href="${path }/adminUser/list.do">分享管理</a></li>
				<%-- <c:if test="${sessionScope.exisAdminuser.rid == 1}"> --%>
				<li class="ul_li_s"><a href="${path }/adminUser/list.do">用户管理</a></li>
				<li class="ul_li_s"><a href="${path }/role/listRole.do">角色管理</a></li>
			</ul>
		</div>
	
</body>
</html>