<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>樱桃图书社区后台管理系统</title>
<style type="text/css">
	.clear {
		clear: both;
	}
	a{
		text-decoration:none;
	}
	a:hover {							/* 鼠标经过时的效果 */
		text-decoration:underline;		/* underline定义文本下的一条线。 */
	}
	body{
		width:100%;
	}
	.ul_dh{
		width:100%;height:40px;border:1px solid yellow;
	}
	.ul_li_s{
		float:left;padding: 0 6px;line-height: 40px;border:1px solid gray;
	}
		
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
		<div style="width:100%;height:40px;border:1px solid gray;background:#87CEFA;">
			<div style="width:100%;height:40px;border:1px solid gray;background:#87CEFA;">
				<ul class="ul_dh">
					<li class="ul_li_s"><a >首页</a></li>
					<li class="ul_li_s"><a href="${path }/adminUser/list.do">分享管理</a></li>
					<%-- <c:if test="${sessionScope.exisAdminuser.rid == 1}"> --%>
					<li class="ul_li_s"><a href="${path }/adminUser/list.do">用户管理</a></li>
					<li class="ul_li_s"><a href="${path }/role/listRole.do">角色管理</a></li>
				</ul>
			</div>
		</div>
	
</body>
</html>