<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
<style>
ol {
	display : table;
}
</style>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");
String tel = request.getParameter("tel");

ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");

if (list == null) {
	list = new ArrayList<String>();
}

list.add(username + ", " +  tel);
session.setAttribute("list", list);

out.println("<div align=\"center\">");
	out.println("<h2>주소록</h2>");
	out.println("<hr>");
	if (list != null) {
		out.println("<ol>");
		for (String i : list)
			out.println("<li>" + i + "</li>");
		out.println("</ol>");
	}
out.println("</div>");
%>
</body>
</html>