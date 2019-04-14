<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout title="Spring MVC Boilerplate">
    <h1>Edit Player</h1>
    <form action="${pageContext.request.contextPath}/players/${player.id}" method="POST">
        <input type="hidden" name="_method" value="PUT" />
        <div class="form-group">
            <label for="name">ID</label>
            <p class="form-control-plaintext">${player.id}</p>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="${player.name}">
        </div>
        <div class="form-group">
            <label for="team">Team</label>
            <input type="text" class="form-control" id="team" name="team" placeholder="Team" value="${player.team}">
        </div>
        <div class="form-group">
            <label for="position">Position</label>
            <input type="text" class="form-control" id="position" name="position" placeholder="Position" value="${player.position}">
        </div>
        <div>
            <button class="btn btn-primary">Update</button>
            <a class="btn btn-secodary" href="${pageContext.request.contextPath}/players">Back</a>
        </div>
    </form>
</t:layout>