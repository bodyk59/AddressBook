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
<%
    String[] person = (String[]) request.getAttribute("person");
    response.setStatus(404);
%>
<h2><strong>Person with name '<%=person[0]%> <%=person[1]%>' not found in Address Book!</strong></h2>
</body>
</html>
