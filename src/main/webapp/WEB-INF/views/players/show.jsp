<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout title="Spring MVC Boilerplate">
    <h1>Show Player</h1>
    <div class="form-group">
        <label for="name">ID</label>
        <p class="form-control-plaintext">${player.id}</p>
    </div>
    <div class="form-group">
        <label for="name">Name</label>
        <p class="form-control-plaintext">${player.name}</p>
    </div>
    <div class="form-group">
        <label for="team">Team</label>
        <p class="form-control-plaintext">${player.team}</p>
    </div>
    <div class="form-group">
        <label for="position">Position</label>
        <p class="form-control-plaintext">${player.position}</p>
    </div>
    <div>
        <form action="${pageContext.request.contextPath}/players/${player.id}" method="POST" class="d-inline">
            <input type="hidden" name="_method" value="DELETE" />
            <button class="btn btn-danger">Delete</button>
        </form>
        <a class="btn btn-secodary" href="${pageContext.request.contextPath}/players">Back</a>
    </div>
</t:layout>