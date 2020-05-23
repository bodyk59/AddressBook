<%@ page import="com.softserve.academy.AddressBook" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  User: bogdankurchak
  Date: 23.05.2020
  Time: 12:31
--%>
<html>
<head>
    <title>List of Records from Address Book</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<h3>Sort by:
    <a href="/records/list?sort=asc" style="text-decoration: none">ascending</a> |
    <a href="/records/list?sort=desc" style="text-decoration: none">descending</a>
</h3>
<table border="1">
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3">Operations</th>
    </tr>
    <%
        Iterator iterator = ((AddressBook) request.getAttribute("records")).iterator();
        while (iterator.hasNext()) {
            String[] record = ((String) iterator.next())
                    .replaceAll(",?[\\w\\s]*:\\s", " ")
                    .trim()
                    .split(" ");
    %>
    <tr>
        <td><%=record[0]%></td>
        <td><%=record[1]%></td>
        <td><%=record[2]%></td>
        <td>
            <a href="/records/read?firstName=<%=record[0]%>&lastName=<%=record[1]%>">Read</a>
        </td>
        <td>
            <a href="/records/update?firstName=<%=record[0]%>&lastName=<%=record[1]%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?firstName=<%=record[0]%>&lastName=<%=record[1]%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
