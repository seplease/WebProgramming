<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_03</title>
</head>
<body>
page_control_03.jsp에서 전달된 내용입니다.
<%
String username = request.getParameter("username");
String passwd = request.getParameter("passwd");

request.setAttribute("username", "홍긷동");
request.setAttribute("passwd", "김동덕");

response.sendRedirect("page_control_04.jsp?src=page_control_03.jsp");
%>
</body>
</html>