<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_04</title>
</head>
<body>
<%
out.println("page_control_04.jsp에서 출력합니다." + "<br>");
out.println("<hr>");
out.println("넘겨받은 파라미터들" + "<br>");
Enumeration<String> e = request.getParameterNames();
while (e.hasMoreElements()) {
	String s = e.nextElement();
	out.println(s + " : ");
	request.getParameter("e");
	out.println("<br>");
}

out.println("<hr>");
out.println("안녕하세요, ");
%>
<%=request.getParameter("username") %>
<%
out.println("님. 반갑습니다.");
%>
</body>
</html>