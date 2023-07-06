<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body>
<%
out.println("<H2>greeting.jsp에서 출력한 메시지입니다.</H2>");
out.println("<br>");
%>
<%= request.getParameter("name") %>
<%= request.getParameter("date") %>
<%
out.println(request.getParameter("name"));
out.println("님 환영합니다.<br>");
out.print("오늘은 ");
out.println(request.getParameter("date"));
out.print("입니다.<br>");
%>
</body>
</html>