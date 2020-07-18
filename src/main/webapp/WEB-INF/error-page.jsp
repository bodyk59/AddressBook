<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  User: bogdankurchak
  Date: 23.05.2020
  Time: 17:26
--%>
<html>
<head>
    <title>Record not found</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<h2><strong><%=request.getAttribute("error")%></strong></h2>
</body>
</html>
