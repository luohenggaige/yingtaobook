<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	iframe {
			width: 100%;
			height: 100%;
		}
</style>
<title>Insert title here</title>
</head>
<body>
	<table class="table" align="center">
		<tr style="background: #4091db; height: 120px; ">
			<td width="100%" style="padding:5px;" align="center" valign="top">
				<iframe frameborder="0" width="120" src="${path}/index/toAdminTop.do" name="top"></iframe>
			</td>
		</tr>
			
		<tr>
			<td width="120" style="padding:5px;" align="center" valign="right">
				<iframe frameborder="0" width="120" src="${path}/index/toRight.do" name="right"></iframe>
			</td>
			<td>
				<iframe frameborder="0" src="${path}/index/toBody.do" name="body"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>