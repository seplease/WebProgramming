<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();

// 시스템상 오늘 날짜
int tyear = cal.get(Calendar.YEAR);
int tmonth = cal.get(Calendar.MONTH) + 1;
int tdate = cal.get(Calendar.DATE);

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH) + 1;
int date = cal.get(Calendar.DATE);


// 파라미터 받기
String strYear = request.getParameter("YEAR");
String strMonth = request.getParameter("MONTH");

if (strYear != null && strMonth != null) { // 넘어온 파라미터가 있으면
	year = Integer.parseInt(strYear);
	month = Integer.parseInt(strMonth);
}

else {
	year = tyear;
	month = tmonth;
}

cal.set(year, month - 1, 1);

out.println("<H2>" + year + "년 " + month + "월" + "</H2>");
out.println("<HR>");

int start = cal.getMinimum(Calendar.DATE); // 월의 시작하는 날
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 월의 마지막 날
int startDay = cal.get(Calendar.DAY_OF_WEEK); // 시작 날짜의 요일
int line = 0;

if (startDay == 1)
	line++;
for (int i = 1; i < startDay; i++)
	out.println("&nbsp;&nbsp;&nbsp;");

for (int i = 1; i <= end; i++) {
	out.println(i + "&nbsp;&nbsp;&nbsp;");
	if (line % 7 == 0)
		out.println("<br>");
	line++;
}
%>
</body>
</html>