<%-- 
    Document   : index
    Created on : Mar 27, 2024, 1:31:58 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th>Id</th>
            <th>Ten</th>
            <th>Gia</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${products}" var="p">
            <tr>
                <th><img class="card-img-top" src="${p.image}" alt="${p.name}"></th>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>                            
                <td>
                    <button class="btn btn-success">Cap nhap</button>                                
                    <button class="btn btn-success">Xoa</button>

                </td>

            </tr>

        </c:forEach>
    </tbody>
</table>

