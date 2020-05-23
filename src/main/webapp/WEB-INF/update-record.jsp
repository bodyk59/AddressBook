<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  User: bogdankurchak
  Date: 23.05.2020
  Time: 15:52
--%>
<html>
<head>
    <title>Update existing record in Address Book</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<%
    String[] record = (String[]) request.getAttribute("record");
%>
<form action="/records/update" method="post">
    <table>
        <tr>
            <td>
                <label for="firstName">First name: </label>
            </td>
            <td>
                <input type="text" name="firstName" id="firstName" value="<%=record[0]%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last name: </label>
            </td>
            <td>
                <input type="text" name="lastName" id="lastName" value="<%=record[1]%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <textarea name="address" id="address" cols="18" rows="5"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
