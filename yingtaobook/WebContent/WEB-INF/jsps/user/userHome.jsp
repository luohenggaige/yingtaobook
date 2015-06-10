<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">


</script>
<title>投资理财</title>
</head>
<body>
	<table class="table" align="center">
		<tr style="background: #66CCFF; height: 120px; ">
			<td width="100%" style="padding:5px;" align="center" valign="top">
				<iframe frameborder="0" width="120" src="${path}/index/toTop.do" name="top"></iframe>
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