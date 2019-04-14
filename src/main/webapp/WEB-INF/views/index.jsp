<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="base" value="${fn:substring(url, 0, fn:length(url) - fn:length(req.requestURI))}${req.contextPath}/" />
<html>
<head>
	<title>Spring MVC Boilerplate</title>
</head>
<body>
	<br>
	<div style="text-align:center">
		<h2>
			Spring MVC Boilerplate! <a href="${base}welcome">Click to check the HelloWorld controller</a><br>
		</h2>
	</div>
</body>
</html>