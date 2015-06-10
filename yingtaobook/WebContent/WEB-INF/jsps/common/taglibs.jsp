<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="upload" value="http://localhost:8076/ds-images/"/>
<c:set var="system" value=""/>
<c:set var="PmsServerPath" value="http://10.1.248.131:8080/pmsV4/pms/main.do"/>
<c:set var="datePattern"><fmt:message key="date.format"/></c:set>
  