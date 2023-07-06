<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%!
public String parseDay(int cnt, String day) {
	if (day == "토" || (cnt % 7 == 0 && cnt != 0))
		return "<font color=\"blue\">" + day + "</font>";
	else if (day == "일" || cnt % 7 == 1)
		return "<font color=\"red\">" + day + "</font>";
	else
		return day;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 19</title>
</head>
<body>
<div align="right">
<%
//오늘의 날짜를 저장하고 있는 객체 추가
Calendar today = Calendar.getInstance();

int year = today.get(Calendar.YEAR);
int month = today.get(Calendar.MONTH) + 1;
int date = today.get(Calendar.DATE);

out.println(year + "-" + month + "-" + date);
%>
</div>
<div align="center">
<%
// 달려 생성을 위한 객체
Calendar cal = Calendar.getInstance();
int cnt = 0;

cal.set(year, month - 1, 1);

int start = cal.getMinimum(Calendar.DATE); // 월의 시작하는 날
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 월의 마지막 날
int startDay = cal.get(Calendar.DAY_OF_WEEK); // 시작 날짜의 요일

out.println("<table>");
out.println("<tr>");
out.println("<td>" + parseDay(cnt, "일") + "</td>");
out.println("<td>" + parseDay(cnt, "월") + "</td>");
out.println("<td>" + parseDay(cnt, "화") + "</td>");
out.println("<td>" + parseDay(cnt, "수") + "</td>");
out.println("<td>" + parseDay(cnt, "목") + "</td>");
out.println("<td>" + parseDay(cnt, "금") + "</td>");
out.println("<td>" + parseDay(cnt, "토") + "</td>");
out.println("</tr>");
cnt++;

out.println("<tr>");
for (int i = 1; i < startDay; i++) {
	out.println("<td>&nbsp;</td>");
	cnt++;
}
	
for (int i = 1; i <= end; i++) {
	out.println("<td>&nbsp;"+ parseDay(cnt, Integer.toString(i)) + "&nbsp;</td>");
	if (cnt % 7 == 0) {
		out.println("</tr>");
		out.println("<tr>");
	}
	cnt++;
}

for (int i = start % 7; i < 6; i++) {
	out.println("<td>&nbsp;</td>");
}
out.println("</tr>");
out.println("</table>");
%>
</div>
</body>
</html>