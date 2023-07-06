<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_02</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");

Integer count = (Integer)application.getAttribute("count");
if (count == null) {
	int cnt = count.intValue() + 1;
	application.setAttribute("count", new Integer(cnt));
}
count = count.intValue() + 1;
application.setAttribute("count", count);

int min1 = Integer.parseInt(request.getParameter("minute"));
long time = session.getMaxInactiveInterval() / 60;
// long time2 = session.setMaxInactiveInterval(min1);
%>

<%= username %> 님 환영합니다.<br><br>
세션 ID : <%= session.getId() %> <br>
세션 지속시간(default) : <%= time %>초<br><br>

오늘의 접속자수: <%= count %>
</body>
</html>

<!--
if (session.isNew()) {
	out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
	session.setAttribute("login", "김동덕");
}
-->