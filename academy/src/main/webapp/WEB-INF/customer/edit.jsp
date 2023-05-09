<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/2023
  Time: 1:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <th>STT</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
        </tr>
        <tr>
            <td>${requestScope["customer"].getId()}</td>
            <td><input type="text" value="${requestScope["customer"].getName()}" name="name"></td>
            <td><input type="text" value="${requestScope["customer"].getEmail()}" name="email"></td>
            <td><input type="text" value="${requestScope["customer"].getAddress()}" name="address"></td>
        </tr>
    </table>
    <button type="submit" class="btn btn-primary">Update</button>
</form>
</body>
</html>

