<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="pr39.*"%>
<!DOCTYPE html>
<jsp:useBean id="lecture" class="pr39.LectureBean"/>
<jsp:setProperty name="lecture" property="*"/>
<jsp:useBean id="lm" class="pr39.LectureManager" scope="application"/>
<%
   if (lecture.getType() != -1) {
      lm.add(lecture);
      lm.buildMatrix();
   }
%>

<html>
<head>
<meta charset="UTF-8">
<title>Problem 03</title>
<style>
h2 {
   text-align: center;
   font-family: monospace;
   font-family:'Times New Roman', Times, serif
}
table {
   border-collapse:collapse;
   text-align: center;
   font-weight: bold;
}
table, td, tr {
   border: 1px solid #000000;
   width: 540px;
   height: 55px;
   font-family: monospace;
}
th {
   font-size: 25px;
   border: 1px solid #000000;
   width: 540px;
   height: 55px;
   font-family: monospace;
}
td.yellow {
   background-color: #FFE08C;
}
td.blue {
   background-color: #B2CCFF;
}
td.gray {
   background-color: #BDBDBD;
}
</style>
</head>
<%request.setCharacterEncoding("UTF-8");%>
<%!
String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
String[] days = {"월", "화", "수", "목", "금"};

int[][] lectureType = {
      { 0, 0, 0, 0, 0 },
      { 0, 0, 0, 0, 0 },
      { 0, 0, 0, 0, 0 },
      { 0, 0, 0, 0, 0 },
      { 0, 0, 0, 0, 0 },
      { 0, 0, 0, 0, 0 }
};

int[][] consecutive = {
      { 1, 1, 1, 1, 1 },
      { 1, 1, 1, 1, 1 },
      { 1, 1, 1, 1, 1 },
      { 1, 1, 1, 1, 1 },
      { 1, 1, 1, 1, 1 },
      { 1, 1, 1, 1, 1 }
};

int[][] lectureTitle = {
      { -1, -1, -1, -1, -1 },
      { -1, -1, -1, -1, -1 },
      { -1, -1, -1, -1, -1 },
      { -1, -1, -1, -1, -1 },
      { -1, -1, -1, -1, -1 },
      { -1, -1, -1, -1, -1 }
};
%>
<body>
<div align="center">
<form name="form1" method="POST" action="problem03.jsp">
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
lectureType = lm.getTypeMatrix();
lectureTitle = lm.getTitleMatrix();
consecutive = lm.getSpanMatrix();

out.println("<br><h3>강의시간표</h3><br>");
out.println("<div align=center>");
int i, j;

out.println("<table>");
out.println("<tr>");
out.println("<th> 2학년 </th>");
out.println("<th> 월 </th>");
out.println("<th> 화 </th>");
out.println("<th> 수 </th>");
out.println("<th> 목 </th>");
out.println("<th> 금 </th>");
out.println("</tr>");

for (i = 0; i < 6; i++) {
	   out.println("<tr>");
	   out.println("<th>" + (i + 1) + "</th>");
	   for (j = 0; j < 5; j++) {
	      if (consecutive[i][j] == 1) { // 연강이 아닐 때
	         if (lectureTitle[i][j] == -1) // 수업이 없을 때
	            out.println("<td>&nbsp;</td>");
	         else { // 수업이 있을 때
	            if (lectureType[i][j] == 1) // 전공필수
	               out.println("<td align=center class='yellow'>" + titleNames[lectureTitle[i][j]] + "</td>");
	            else if (lectureType[i][j] == 2) // 전공선택
	               out.println("<td align=center class='blue'>" + titleNames[lectureTitle[i][j]] + "</td>");
	            else if (lectureType[i][j] == 3) // 교양
	               out.println("<td align=center class='gray'>" + titleNames[lectureTitle[i][j]] + "</td>");
	            else if (lectureType[i][j] == 4) // 자유선택
	               out.println("<td align=center>" + titleNames[lectureTitle[i][j]] + "</td>");
	         }
	      }      
	      else if (consecutive[i][j] > 1) { // 연강일 때 (consecutive[i][j] > 0) 이랑 무슨 차이가 있는지?
	         if (lectureType[i][j] == 1) // 전공필수
	            out.println("<td align=center class='yellow' rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
	         else if (lectureType[i][j] == 2) // 전공선택
	            out.println("<td align=center class='blue' rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
	         else if (lectureType[i][j] == 3) // 교양
	            out.println("<td align=center class='gray' rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
	         else if (lectureType[i][j] == 4) // 자유선택
	            out.println("<td align=center rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
	      }
	   }
	   out.println("</tr>");
	}
	out.println("</table>");

out.println("<br><br><hr><br>");

for (LectureBean lb : lm.getLectureList())
	   out.println(lb.toString() + "<br>");
	out.println("</div>");
%>
</div>
<div align=center><a href="cover.jsp">목차</a></div>
</body>
</html>