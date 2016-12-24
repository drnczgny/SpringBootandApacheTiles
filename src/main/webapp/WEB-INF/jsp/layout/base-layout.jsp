<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:importAttribute name="stylesheets" />

<!DOCTYPE html>
<html>
<head>
<title>Spring Boot with Tiles</title>

<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="${css}">
</c:forEach>
<!-- <link href="/resources/static/css/style.css" rel="stylesheet"></link> -->
<!-- <link href="/resources/static/css/bootstrap.css" rel="stylesheet"></link> -->

</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>
