<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice 30</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
String[] days = {"월", "화", "수", "목", "금"};

ArrayList<String> timetable = (ArrayList<String>)application.getAttribute("timetable");

if (timetable == null) {
	timetable = new ArrayList<String>();
}

if (request.getParameter("lectureType") != null &&
	request.getParameter("lectureTitle") != null &&
	request.getParameter("day") != null) {
	int typeIndex = Integer.parseInt(request.getParameter("lectureType"));
	String lectureType = typeNames[typeIndex];
	
	int titleIndex = Integer.parseInt(request.getParameter("lectureTitle"));
	String lectureTitle = typeNames[titleIndex];
	
	int dayIndex = Integer.parseInt(request.getParameter("day"));
	String day = days[dayIndex];
	
	String time = request.getParameter("time");
	
	String consecutive = request.getParameter("consecutive");
	
	timetable.add(lectureType + "/" + lectureTitle + "/" + day + "/" + time + "/" + consecutive);
	application.setAttribute("timetable", timetable);
}
%>
<body>
<div align="center">
<form name="form1" method="POST" action="practice30.jsp">
과목타입:
<select name="lectureType">
	<option value="0">전공필수</option>
	<option value="1">전공선택</option>
	<option value="2">교양</option>
	<option value="3">자유선택</option>
</select>
과목명:
<select name="lectureTitle">
	<option value="0">웹프로그래밍</option>
	<option value="1">운영체제</option>
	<option value="2">소프트웨어프로그래밍</option>
	<option value="3">데이터베이스개론</option>
	<option value="4">자료구조</option>
	<option value="5">네트워크</option>
	<option value="6">창의와감성</option>
	<option value="7">사회봉사</option>
</select>
요일:
<select name="day">
	<option value="0">월</option>
	<option value="1">화</option>
	<option value="2">수</option>
	<option value="3">목</option>
	<option value="4">금</option>
</select>
시간:
<select name="time">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
</select>
연강여부:
<select name="consecutive">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="등록">
</form>
</div>
<hr>
<%
out.println("<div align=\"center\">");
if (timetable != null) {
	for (String i : timetable)
		out.println(i + "<br>");
}
out.println("</div>");
%>
</body>
</html>