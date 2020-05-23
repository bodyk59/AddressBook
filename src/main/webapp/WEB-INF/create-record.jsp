<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  User: bogdankurchak
  Date: 23.05.2020
  Time: 11:43
--%>
<html>
<head>
    <title>Create new record in Address Book</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<strong>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
        out.println(errorMessage);
    }
%>
</strong>
<form action="/records/create" method="post">
    <table>
        <tr>
            <td>
                <label for="firstName">First name: </label>
            </td>
            <td>
                <input type="text" name="firstName" id="firstName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last name: </label>
            </td>
            <td>
                <input type="text" name="lastName" id="lastName">
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
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
