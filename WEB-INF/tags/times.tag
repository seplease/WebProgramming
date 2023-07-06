<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ tag language="java" pageEncoding="UTF-8"%>
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
<body>
	<div align="center">
		<h2 align="center">구구단 출력</h2>
		<hr>
		<%
		int i, j;
		out.println("<div align=\"center\">");
		out.println("<table>");
			out.println("<tr>");
			for (i = 2; i <= 9; i++) {
				out.println("<td>");
				for (j = 1; j <= 9; j++)
					out.println(i + " * " + j + " = " + i * j + "<br>");
				out.println("</td>");
				if (i == 5) {
					out.println("</tr>");
					out.println("<tr>");
				}
				if (i == 9)
					out.println("</tr>");
				}
		out.println("</table>");
		out.println("</div>");
		%>
	</div>
</body>