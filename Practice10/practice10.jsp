<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 10</title>
<style>
table, td, th {
border:solid 1px #808080;
}
td {
font-family: monospace;
width: 85px;
height: 35px;
text-align: center;
font-weight: bold;
font-size: 20px;
}
</style>
</head>
<body>
<%
int i;
out.println("<div align=\"center\">");
out.println("<table>");
out.println("<tr>");
out.println("<td><font color=\"red\">일</font></td>");
out.println("<td>월</td>");
out.println("<td>화</td>");
out.println("<td>수</td>");
out.println("<td>목</td>");
out.println("<td>금</td>");
out.println("<td><font color=\"blue\">토</font></td>");
out.println("</tr>");
for (i = 0; i < 4; i++) {
	out.println("<tr>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("<td> &nbsp; </td>");
	out.println("</tr>");
}
out.println("</table>");
out.println("</div>");
%>
</body>
</html>