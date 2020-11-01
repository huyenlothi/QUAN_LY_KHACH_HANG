<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 01/11/2020
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display customer</title>
    <style>
        table{
            width: 100%;

            border-collapse: collapse;


        }
        form{
            width: 60%;
            box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
            margin: 0 auto;
            padding-bottom: 2px;
            padding-top: 20px;
        }
        caption {
            font-size: 22px;
            font-weight: bold;
        }
        table.th,td,tr{
            border-bottom: 1px solid #ececec;
            border-right: none;
            border-left: none;
        }
        th{
            text-align: left;
            padding: 10px;
        }
        td{
            padding: 10px;

        }

    </style>
</head>
<body>
<div style="width: 800px;margin: 0 auto">
    <form action="">
    <a href="add.jsp">Add new customer</a>
    <table cellpadding="10">
        <caption>CUSTOMERS LIST</caption>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone number</th>
            <th>Address</th>
        </tr>
        <c:forEach items="${show}" var="customer">
            <tr>
                <td>${customer.ID}</td>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td>${customer.phoneNumber}</td>
                <td>${customer.address}</td>
                <td>
                    <a href="edit?id=${customer.ID}">Edit</a>
                    <a href="delete?id=${customer.ID}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    </form>
</div>
</body>
</html>
