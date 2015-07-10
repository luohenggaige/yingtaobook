<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>樱桃图书社区后台管理系统</title>
<style type="text/css">
	*{
			font-size:10pt;
		}
	body{
		text-align:center;
	}
	.table{
		width:90%;
		height:100%;
		border:1px solid gray;/*固定边框,1像素*/
	    border-collapse: collapse;/*单线的列表边框*/
	}
	.table td{
		border:1px solid gray;/*固定边框,1像素*/
	}
	iframe {
		width: 100%;
		height: 100%;
	}
	.clear {
		clear: both;
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
		<div style="width:100%;height:40px;align:center;border:1px solid gray;">
			<!-- <div style="width:100%;height:30px;border:1px solid yellow;"></div> -->
			<ul style="width:100%;height:40px;border:1px solid yellow;">
				<li style="float:left;padding: 0 6px;line-height: 40px;border:1px solid gray;"><a>首页</a></li>
				<li style="float:left;padding: 0 6px;line-height: 40px;border:1px solid gray;"><a>用户管理</a></li>
			</ul>
		</div>
	
</body>
</html>