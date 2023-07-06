<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="pr39.*"%>
<!DOCTYPE html>
<jsp:useBean id="lecture" class="pr39.LectureBean"/>
<jsp:setProperty name="lecture" property="*"/>
<jsp:useBean id="lm" class="pr39.LectureManager" scope="application"/>
<%
	if (lecture.getType() != -1)
		lm.add(lecture);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 39</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
String[] days = {"월", "화", "수", "목", "금"};
%>
<body>
<div align="center">
<form name="form1" method="POST" action="practice39.jsp">
과목타입:
<select name="type">
	<option value="0">전공필수</option>
	<option value="1">전공선택</option>
	<option value="2">교양</option>
	<option value="3">자유선택</option>
</select>
과목명:
<select name="title">
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
<div align="center">
<%
	for (LectureBean lb : lm.getLectureList())
		out.println(lb.toString() + "<br>");
	lm.buildMatrix();
%>
</div>
</body>
</html>