<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout title="Spring MVC Boilerplate">
	<br>
	<div style="text-align:center">
		<h2>
			This message is passed from controller: ${message}<br>
		</h2>
	</div>
</t:layout>
