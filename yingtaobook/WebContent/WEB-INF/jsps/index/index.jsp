<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
		border:1px solid gray;/*：边框宽度 	类型		颜色*/
	    border-collapse: collapse;/*单线的列表边框*/
	}
	.table td{
		border:1px solid gray;/*固定边框,1像素*/
	}
	iframe {
		width: 100%;
		height: 100%;
	}
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">
$(function(){
	var exisuser = $("#exisuser").val();
	if(exisuser == "" || exisuser == null){
		//alert($("#exisuser").val());
		//$("#exisuser").attr("value","y");
		//window.location.reload();//刷新当前页面.
		//$("#exisuser").val("y");
		//alert($("#exisuser").val());
	}
	//alert("123"+$("#exisuser").val());
});


</script>
</head>
<body>
	<table class="table" align="center">
		<input type="hidden" id="exisuser" value="${exisuser }"></input>
		<tr style="background: #66CCFF;height: 120px;">
			<td colspan="2" align="center">
				<iframe frameborder="0" width="120" src="${path}/index/toTop.do" name="top"></iframe>
			</td>
		</tr>
			
		<tr>
			<td width="86%" align="center">
				<iframe frameborder="0" src="${path}/index/toBody.do" name="body"></iframe>
			</td>
			<td style="padding:5px;" align="center" valign="top"><!-- valign规定单元格中内容的垂直排列方式 -->
				<iframe frameborder="0" src="${path}/index/toRight.do" name="right"></iframe>
			</td>
		</tr>
	</table>
	
</body>
</html>