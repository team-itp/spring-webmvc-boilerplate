<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout title="Spring MVC Boilerplate">
    <h1>New Player</h1>
    <form action="${pageContext.request.contextPath}/players/" method="POST">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Name">
        </div>
        <div class="form-group">
            <label for="team">Team</label>
            <input type="text" class="form-control" id="team" name="team" placeholder="Team">
        </div>
        <div class="form-group">
            <label for="position">Position</label>
            <input type="text" class="form-control" id="position" name="position" placeholder="Position">
        </div>
        <div>
            <button class="btn btn-primary">Register</button>
            <a class="btn btn-secodary" href="${pageContext.request.contextPath}/players">Back</a>
        </div>
    </form>
</t:layout>