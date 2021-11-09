<%@ page import="java.util.ArrayList" %>
<%@ page import="demo.client" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 09/11/2021
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<client>clients = new ArrayList<>();
    clients.add(new client(1,"Tiểu Cường","Thái Nguyên","12"));
    clients.add(new client(2,"Tiểu Đinh","Nam Định","12"));
    clients.add(new client(3,"Tiểu Long","Hà Nội","12"));
    request.setAttribute("list",clients);
%>
<table>
    <tr>

        <td><c:out value="${'id'}">id</c:out> </td>
        <td><c:out value="${'name'}">name</c:out></td>
        <td><c:out value="${'address'}">add</c:out></td>
        <td><c:out value="${'img'}">img</c:out> </td>
    </tr>
    <c:forEach items="${list}" var="cs" >
        <tr>

        <td>${cs.id}</td>
        <td>${cs.name}</td>
        <td>${cs.address}</td>
        <td>${cs.img}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
