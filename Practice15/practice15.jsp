<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 15</title>
</head>
<body>
<%
int year = 1919;
int month = 3;
int line = 0;

out.println("<H2>" + year + "년 " + month + "월" + "</H2>");
out.println("<HR>");

Calendar cal = Calendar.getInstance();

int startDay = cal.get(Calendar.DAY_OF_WEEK);
int date = cal.get(Calendar.DATE);
int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

for (int i = 1; i < startDay; i++) {
	out.println(startDay);
	out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	line++;
}

for (int i = start; i <= end; i++) {
	line++;
	if (line % 7 == 0)
		out.println("<br>");
	out.print(i + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
}
%>
</body>
</html>