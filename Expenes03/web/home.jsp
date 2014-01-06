<%-- 
    Document   : home
    Created on : Jan 6, 2014, 4:59:23 PM
    Author     : h10t93
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>hello!</h1>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>name</td>
                <td>date</td>
                <td>price</td>
            </tr>
            <c:forEach var="p" items="${sessionScope.list}">
                <td>${p.idEx}</td>
                <td>${p.idUse}</td>
                <td>${p.date}</td>
                <td>${p.totalAmount}</td>
            </c:forEach>
        </table>
            
    </body>
</html>
