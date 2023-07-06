<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checker</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String action = request.getParameter("action");

if (action.equals("login")) {
	String user = request.getParameter("user");
	String pw = request.getParameter("pw");
	
	String dbuser = "김동덕";
	String dbpw = "hatter";
	
	if (dbuser.equals(user)) {
		if (dbpw.equals(pw))
			session.setAttribute("user", user);
		else
			response.sendRedirect("login.jsp");
	}
	response.sendRedirect("index.jsp");
}
else { // else if ~ 로 바꿔야 하나?
	session.invalidate();
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>