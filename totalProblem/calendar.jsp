<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<%
Calendar cal = Calendar.getInstance();

String sYear = request.getParameter("year");
String sMonth = request.getParameter("month");

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);

if (sYear != null) {
	year = Integer.parseInt(sYear);
	month = Integer.parseInt(sMonth);
}

cal.set(year, month, 1); // 년도, 월 셋팅

int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;
%>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
table {
	border-collapse: collapse;
	width: 540px;
	height: 35px;
	text-align: center;
}

td {
	width: 540px;
	height: 35px;
	font-family: monospace;
	text-align: center;
	font-size: 17px
}
</style>
</head>
<body>
	<%
	int i;
	%>
	<form name="frm1" action="" method="POST">
		<div align="center">
			<table>
				<td width="300">
				<a href="calendar.jsp?year=<%=year - 1%>&amp;month=<%=month%>"
				target="_self"> ◀ </a>
				<%=year%>년 <a
				href="calendar.jsp?year=<%=year + 1%>&amp;month=<%=month%>"
				target="_self"> ▶ </a>
				</td>
				<td width="300">
				<%
				if (month >= 1) {
				%>
				<a href="calendar.jsp?year=<%=year%>&amp;month=<%=month - 1%>"
				target="_self"> ◀ </a>
				<%
				} else {
				%>
				<b>◀</b>
				<%
				}
				%>
				<%=month + 1%>월
				<%
				if (month < 11) {
				%><a href="calendar.jsp?year=<%=year%>&amp;month=<%=month + 1%>"
				target="_self"> ▶ </a>
				<%
				} else {
				%>
				<b>▶</b>
				<%
				}
				%>
				</td>
				<td width="300">
				<%=year%>-<%=month + 1%>-<%=date%>
				</td>
			</table>
			<table style="border: 1px solid #ECE9D8">
				<tr style="border: 1px solid #ECE9D8">
					<td style="border: 1px solid #ECE9D8"><font color="red">일</font></td>
					<td style="border: 1px solid #ECE9D8">월</td>
					<td style="border: 1px solid #ECE9D8">화</td>
					<td style="border: 1px solid #ECE9D8">수</td>
					<td style="border: 1px solid #ECE9D8">목</td>
					<td style="border: 1px solid #ECE9D8">금</td>
					<td style="border: 1px solid #ECE9D8"><font color="blue">토</font></td>
				</tr>

				<tr>
					<%
					for (i = 1; i < start; i++) { //처음 빈공란
						out.println("<td style=\"border: 1px solid #ECE9D8\">&nbsp;</td>");
						newLine++;
					}
					for (i = 1; i <= endDay; i++) {
						String color = "";
						if (newLine == 0)	color = "RED";
						else if (newLine == 6)	color = "BLUE";
						else	color = "BLACK";
						out.println("<td style=\"border: 1px solid #ECE9D8\">");
					%>
						<font color='<%=color%>'><%=i%></font>
					<%
						out.println("</td>");
						newLine++;
						if (newLine == 7) {
							out.println("</tr>");
							if (i <= endDay && newLine < 7) //
								out.println("<tr>");
							newLine = 0;
						}
					}
					
					while (newLine > 0 && newLine < 7) { //마지막 공란
						out.println("<td style=\"border: 1px solid #ECE9D8\">&nbsp;</td>");
						newLine++;
					}
					%>
				</tr>
			</table>
		</div>
	</form>
	<div align=center><a href="cover.jsp">목차</a></div>
</body>
</html>