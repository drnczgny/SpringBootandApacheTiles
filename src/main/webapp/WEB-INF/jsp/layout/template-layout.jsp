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
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<tiles:insertAttribute name="left-sidebar" />
			</div>
			<div class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 main">
				<h3>
					<tiles:getAsString name="base-body-title" />
				</h3>
				<tiles:insertAttribute name="base-body" />
			</div>
		</div>
	</div>

	<tiles:insertAttribute name="footer" />
</body>
</html>
