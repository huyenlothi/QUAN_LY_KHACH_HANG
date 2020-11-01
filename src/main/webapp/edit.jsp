<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 01/11/2020
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit customer</title>
    <style>
        form{
            width: 30%;
            box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
            margin: 5px auto;
            padding-bottom: 2px;
            padding-top: 20px;
        }
        h3{
            text-align: center;
        }
    </style>
</head>
<body>

<div style="width: 800px; margin: 0 auto;">
    <c:forEach items="${list}" var="customer">
        <form name="editForm" method="post" action="/edit">
            <h3>Edit Customer</h3>
            <input type="hidden" name="id" value="${customer.ID}" style="width: 150px"><br>
            First Name<br>
            <input type="text" name="firstName" value="${customer.firstName}" style="width: 150px"><br>
            Last Name<br>
            <input type="text" name="lastName" value="${customer.lastName}" style="width: 150px"><br>
            Phone Number<br>
            <input type="text" name="phoneNumber" value="${customer.phoneNumber}" style="width: 150px"><br>
            Address<br>
            <input type="text" name="address" value="${customer.address}" style="width: 150px"><br>
            <input type="submit" value="Save">
        </form>
    </c:forEach>
</div>
</body>
</html>
