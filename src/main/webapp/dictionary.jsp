<%@ page import="java.util.Map" %>
<%@ page import="java.util.Dictionary" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 09/11/2021
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>

<%!
Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);

    if(result != null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("not found");
    }
%>

</body>
</html>
