<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 01/11/2020
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add customer</title>
    <style>
        form{
            width: 20%;
            box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
            margin: 0 auto;
            padding-bottom: 2px;
            padding-top: 20px;
        }
        h3{
            text-align: center;
        }
    </style>
</head>
<body>

<form name="addForm" method="post" action="/add">
    <h3>Add customer</h3>
    First Name<br>
    <input type="text" name="firstName" placeholder="..." style="width: 150px"><br>
    Last Name<br>
    <input type="text" name="lastName" placeholder="..." style="width: 150px"><br>
    Phone Number<br>
    <input type="text" name="phoneNumber" placeholder="..." style="width: 150px"><br>
    Address<br>
    <input type="text" name="address" placeholder="..." style="width: 150px"><br>
    <input type="submit" value="Save">
</form>
</body>
</html>
