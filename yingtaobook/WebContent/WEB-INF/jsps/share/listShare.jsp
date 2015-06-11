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
		width:80%; 
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

	<div class="frameL"><div class="menu icon">
	    <jsp:include page="/${system}/common/itemmenu.jsp"/>
	</div></div>
	
	<div>
		<div>
			
		</div>
		
		<div>
			<c:forEach items="" var="">
				<div> 
				</div>
			</c:forEach>
		</div>
	</div>
	
</body>
</html>