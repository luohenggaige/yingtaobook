<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
</style>
<title>Insert title here</title>
</head>
<body>
	<table class="table" align="center">
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