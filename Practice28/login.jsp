<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<!-- https://gilhyeon.tistory.com/42 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String user = (String)session.getAttribute("user");

if (user != null) { // 로그인 정보가 있을 때
	out.println("<form name=\"form1\" method=\"POST\" action=\"checker.jsp\">");
	out.println(user + "님 환영합니다.");
	out.println("<input type=\"hidden\" name=\"action\" value=\"logout\">");
	out.println("<br><br><input type=\"submit\" value=\"로그아웃\">");
	out.println("</form>");
}
else { // 로그인 정보가 없을 때
	out.println("<form name=\"form2\" method=\"POST\" action=\"checker.jsp\">");
	out.println("아이디 : <input type=\"text\" name=\"user\"><br><br>");
	out.println("비밀번호 : <input type=\"text\" name=\"pw\">");
	out.println("<input type=\"hidden\" name=\"action\" value=\"login\">");
	out.println("<br><br><input type=\"submit\" value=\"로그인\">");
	out.println("</form>");
}
%>
</body>
</html>