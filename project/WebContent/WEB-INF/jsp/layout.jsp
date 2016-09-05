<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<spring:url value="/resources/style.css" var="crunchifyCSS" />

<link href="${crunchifyCSS}" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<style>


</style>
</head>
<body>  <div id="container">
		<div id="header"><tiles:insertAttribute name="header" /></div>
<%-- 		<div id="menu"><tiles:insertAttribute name="menu" /></div>
 --%>		<div id="content">
		<tiles:insertAttribute name="body" /></div>
    	<div id="footer"><tiles:insertAttribute name="footer" /></div>
    	</div>

</body>
</html>
