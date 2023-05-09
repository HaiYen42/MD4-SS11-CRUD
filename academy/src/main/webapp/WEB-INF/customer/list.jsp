<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/2023
  Time: 10:13 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 style="text-align: center; color: blue">===================CUSTOMER MANAGER=====================</h1>
<a href="/customer?action=create">Create</a>
<table border="1" style="width: 100%">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["customerList"]}' var="ctm">
        <tr>
            <td>${ctm.getId()}</td>
            <td><a href="/customer?action=detail&id=${ctm.getId()}">${ctm.getName()}</a></td>
            <td>${ctm.getEmail()}</td>
            <td>${ctm.getAddress()}</td>
            <td><a href="/customer?action=edit&id=${ctm.getId()}"><button class="btn btn-primary">Edit</button></a></td>
            <td><a href="/customer?action=delete&id=${ctm.getId()}"><button class="btn btn-primary">Delete</button></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
