<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);

int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int startDay = cal.get(Calendar.DAY_OF_WEEK);

String korDay = "";
switch (day) {
case 1:
    korDay = "일";
    break;
case 2:
	korDay = "월";
	break;
case 3:
	korDay = "화";
	break;
case 4:
	korDay = "수";
	break;
case 5:
	korDay = "목";
	break;
case 6:
	korDay = "금";
	break;
case 7:
	korDay = "토";
	break;
}
%>

오늘은
<%= cal.get(Calendar.YEAR) %>년
<%= cal.get(Calendar.MONTH) + 1 %>월
<%= cal.get(Calendar.DATE) %>일
<%out.print(korDay); %>요일입니다.

<br>
이번 달은
<%= start %>일부터 시작하여
<%= end %>일에 끝납니다.

<%
cal.set(2002, Calendar.MARCH, 28);
%>
<br>
내 생일 
<%= cal.get(Calendar.YEAR) %>년
<%= cal.get(Calendar.MONTH) + 1 %>월
<%= cal.get(Calendar.DATE) %>일은 
<%out.print(korDay); %>요일입니다.
</body>
</html>