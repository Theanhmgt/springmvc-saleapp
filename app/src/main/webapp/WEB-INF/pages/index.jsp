<%-- 
    Document   : index
    Created on : Mar 27, 2024, 1:31:58 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-info mt-1">QUẢN TRỊ SẢN PHẨM</h1>
<div>
    <a class="btn btn-success" href="<c:url value="/products" />">Thêm sản phẩm</a>
</div>
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
                <th><img class="card-img-top" src="${p.image}" alt="${p.name}"  style="width:200px;"></th>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${String.format("%,d", p.price)} VNĐ</td>                            
                <td>
                    <button class="btn btn-success">Cap nhap</button>                                
                    <button class="btn btn-success">Xoa</button>

                </td>

            </tr>

        </c:forEach>
    </tbody>
</table>

