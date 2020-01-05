<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout title="Spring MVC Boilerplate">
    <div class="clearfix">
        <h1 class="float-left">Players</h1>
        <div class="float-right">
            <a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/players/new">Create New</a>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/players/search" method="POST">
        <input type="hidden" name="perPage" value="${ps.perPage}" />
        <input type="hidden" name="page" value="${ps.page}" />
        <input type="hidden" name="sortId" value="${ps.sortId}" />
        <input type="hidden" name="orderType" value="${ps.orderType}" />
        <div class="form-inline my-2">
            <div class="form-group">
                <label>名前</label>
                <input type="text" class="form-control mx-2" name="nameLike" value="${condition.nameLike}" />
            </div>
            <button type="submit" class="btn btn-primary">検索</button>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Team</th>
                    <th>Position</th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var="player" items="${players}">
                <tr>
                    <td>${player.id}</td>
                    <td>${player.name}</td>
                    <td>${player.team}</td>
                    <td>${player.position}</td>
                    <td>
                        <a class="btn btn-link p-0"
                            href="${pageContext.request.contextPath}/players/${player.id}">Show</a>
                        | <a class="btn btn-link p-0"
                            href="${pageContext.request.contextPath}/players/${player.id}/edit">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</t:layout>