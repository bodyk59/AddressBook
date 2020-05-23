<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.softserve.academy.AddressBook" %>
<%--
  User: bogdankurchak
  Date: 23.05.2020
  Time: 15:15
--%>
<html>
<head>
    <title>Read record from Address Book</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<%
    String[] record = (String[]) request.getAttribute("record");
%>
<table>
    <tr>
        <td>First name: </td>
        <td><strong><%=record[0]%></strong></td>
    </tr>
    <tr>
        <td>Last name: </td>
        <td><strong><%=record[1]%></strong></td>
    </tr>
    <tr>
        <td>Address: </td>
        <td><strong><%=record[2]%></strong></td>
    </tr>
</table>
</body>
</html>
