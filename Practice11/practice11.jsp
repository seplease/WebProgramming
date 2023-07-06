<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
<style>
table, td, th {
	border: solid 1px #808080;
}

td {
	font-family: Times;
	width: 120px;
	height: 230px;
	font-size: 20px;
}

h2 {
	font-family: monospace;
	font-size: 40px;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2 align="center">구구단 출력</h2>
	<hr>
	<%
	out.println("<div align=\"center\">");
	out.println("<table>");
	out.println("<tr>");
	out.println("<td>");
	int i;
	for (i = 1; i <= 9; i++)
		out.println("2 * " + i + " = " + 2 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("3 * " + i + " = " + 3 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("4 * " + i + " = " + 4 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("5 * " + i + " = " + 5 * i + "<br>");
	out.println("</td>");
	out.println("</tr>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("6 * " + i + " = " + 6 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("7 * " + i + " = " + 7 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("8 * " + i + " = " + 8 * i + "<br>");
	out.println("</td>");
	out.println("<td>");
	for (i = 1; i <= 9; i++)
		out.println("9 * " + i + " = " + 9 * i + "<br>");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
	%>
</body>
</html>