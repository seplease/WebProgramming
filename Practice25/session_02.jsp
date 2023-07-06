<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->
    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_02</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

if (session.isNew()) {
	out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
	session.setAttribute("login", "김동덕");
}

String username = request.getParameter("username");
%>

<%= username %> 님 환영합니다.<br><br>
세션 ID : <%= session.getId() %> <br>
세션 지속시간(default) : <%= session.getMaxInactiveInterval() %>초<br>

<br><a href="session_03.jsp" target="_blank" rel="noopener noreferrer">session_03.jsp로 가기</a>
</body>
</html>