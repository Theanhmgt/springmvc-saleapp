<%-- 
    Document   : header
    Created on : Apr 3, 2024, 1:52:00 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">My Sale App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/" />">Trang chu</a>
                </li>
                <c:forEach items="${categories}" var="c">
                    <li class="nav-item">
                        <a class="nav-link" href="#">${c.name}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <form action="<c:url value="/" />" class="d-flex">
        <input class="form-control me-2" name="kw" type="text" placeholder="Nhập tên...">
        <button class="btn btn-primary" type="submit">Tìm</button>
        </form>
    </div>
</nav>
