<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<%
out.println("<h2>" + "전달된 파라미터 이름들" + "</h2><br>");
out.println("<h2></h2>");

Enumeration<String> e = request.getParameterNames();
while (e.hasMoreElements()) {
	String s = e.nextElement();
	out.println(s + "<br>");
}
%>
<hr>
타입 : <%=request.getParameter("type") %><br>
아이디 : <%=request.getParameter("strID") %><br>
비밀번호 : <%=request.getParameter("strPwd") %><br>
</body>
</html>