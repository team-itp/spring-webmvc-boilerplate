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
    <form id="form" action="${pageContext.request.contextPath}/players/search" method="POST">
        <input type="hidden" name="perPage" value="${ps.perPage}" />
        <input type="hidden" name="page" value="${ps.page}" />
        <input type="hidden" name="sortId" value="${ps.sortId}" />
        <input type="hidden" name="orderType" value="${ps.orderType}" />
        <div class="form-inline my-2">
            <div class="form-group">
                <label>名前</label>
                <input type="text" class="form-control mx-2" name="nameLike" value="${condition.nameLike}" />
            </div>
            <button type="button" class="btn btn-primary" onclick="$('[name=sortId]').val('name asc, position asc');$('[name=orderType]').val('');$('[name=page]').val('1');$('#form').submit();">検索</button>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>
                        <c:choose>
                            <c:when test="${ps.sortId == 'id' && ps.orderType == 'asc'}">
                                <i class="fa fa-fw fa-sort-asc"
                                    onclick="$('[name=sortId]').val('id');$('[name=orderType]').val('desc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:when test="${ps.sortId == 'id' && ps.orderType == 'desc'}">
                                <i class="fa fa-fw fa-sort-desc"
                                    onclick="$('[name=sortId]').val('id');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:otherwise>
                                <i class="fa fa-fw fa-sort"
                                    onclick="$('[name=sortId]').val('id');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:otherwise>
                        </c:choose>
                        ID
                    </th>
                    <th>
                        <c:choose>
                            <c:when test="${ps.sortId == 'name' && ps.orderType == 'asc'}">
                                <i class="fa fa-fw fa-sort-asc"
                                    onclick="$('[name=sortId]').val('name');$('[name=orderType]').val('desc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:when test="${ps.sortId == 'name' && ps.orderType == 'desc'}">
                                <i class="fa fa-fw fa-sort-desc"
                                    onclick="$('[name=sortId]').val('name');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:otherwise>
                                <i class="fa fa-fw fa-sort"
                                    onclick="$('[name=sortId]').val('name');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:otherwise>
                        </c:choose>
                        Name
                    </th>
                    <th>
                        <c:choose>
                            <c:when test="${ps.sortId == 'team' && ps.orderType == 'asc'}">
                                <i class="fa fa-fw fa-sort-asc"
                                    onclick="$('[name=sortId]').val('team');$('[name=orderType]').val('desc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:when test="${ps.sortId == 'team' && ps.orderType == 'desc'}">
                                <i class="fa fa-fw fa-sort-desc"
                                    onclick="$('[name=sortId]').val('team');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:otherwise>
                                <i class="fa fa-fw fa-sort"
                                    onclick="$('[name=sortId]').val('team');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:otherwise>
                        </c:choose>
                        Team
                    </th>
                    <th>
                        <c:choose>
                            <c:when test="${ps.sortId == 'position' && ps.orderType == 'asc'}">
                                <i class="fa fa-fw fa-sort-asc"
                                    onclick="$('[name=sortId]').val('position');$('[name=orderType]').val('desc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:when test="${ps.sortId == 'position' && ps.orderType == 'desc'}">
                                <i class="fa fa-fw fa-sort-desc"
                                    onclick="$('[name=sortId]').val('position');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:when>
                            <c:otherwise>
                                <i class="fa fa-fw fa-sort"
                                    onclick="$('[name=sortId]').val('position');$('[name=orderType]').val('asc');$('[name=page]').val('1');$('#form').submit();"></i>
                            </c:otherwise>
                        </c:choose>
                        Position
                    </th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var="player" items="${pagedPlayer.resultList}">
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
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:choose>
                    <c:when test="${pagedPlayer.page != 1}">
                        <li class="page-item"><button type="button" class="page-link"
                                onclick="$('[name=page]').val('${pagedPlayer.page - 1}');$('#form').submit();">Previous</button>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item disabled"><button type="button" class="page-link"
                                disabled>Previous</button></li>
                    </c:otherwise>
                </c:choose>
                <c:forEach begin="${pagedPlayer.page - 5 > 1 ? pagedPlayer.page - 5 : 1}"
                    end="${(pagedPlayer.page - 5 > 1 ? pagedPlayer.page - 5 : 1) + 10 < pagedPlayer.lastPage ? (pagedPlayer.page - 5 > 1 ? pagedPlayer.page - 5 : 1) + 10 : pagedPlayer.lastPage}"
                    var="page">
                    <c:choose>
                        <c:when test="${pagedPlayer.page == page}">
                            <li class="page-item active"><button type="button" class="page-link"
                                    onclick="$('[name=page]').val('${page}');$('#form').submit();">${page}</button></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><button type="button" class="page-link"
                                    onclick="$('[name=page]').val('${page}');$('#form').submit();">${page}</button></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:choose>
                    <c:when test="${pagedPlayer.page != pagedPlayer.lastPage}">
                        <li class="page-item"><button type="button" class="page-link"
                                onclick="$('[name=page]').val('${pagedPlayer.page + 1}');$('#form').submit();">Next</button>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item disabled"><button type="button" class="page-link" disabled>Next</button>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </nav>
    </form>
</t:layout>