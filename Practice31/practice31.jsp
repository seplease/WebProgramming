<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 31</title>
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
<%!
int[][] lectureType = {
		{ 0, 1, 1, 0, 1 },	// 1교시 -0 : no class
		{ 1, 0, 0, 0, 2 },	// 2교시 -1 : 전공필수
		{ 0, 0, 2, 0, 4 },	// 3교시 -2 : 전공선택
		{ 2, 3, 0, 3, 0 },	// 4교시 -3 : 교양
		{ 0, 0, 0, 2, 0 },	// 5교시 -4 : 자유선택
		{ 0, 0, 0, 0, 0 }	// 6교시
};

int[][] consecutive = {
		{ 1, 2, 1, 1, 1 },	// 1교시
		{ 2, 0, 1, 1, 1 },	// 2교시
		{ 0, 1, 1, 1, 4 },	// 3교시
		{ 2, 1, 1, 1, 0 },	// 4교시
		{ 0, 1, 1, 2, 0 },	// 5교시
		{ 1, 1, 1, 0, 0 }	// 6교시
};

int[][] lectureTitle = {
		{ -1, 4, 5, -1, 5 },	// 1교시
		{ 3, -1, -1, -1, 1 },	// 2교시
		{ -1, -1, 1, -1, 7 },	// 3교시
		{ 0, 6, -1, 6, -1 },	// 4교시
		{ -1, -1, -1, 2, -1 },	// 5교시
		{ -1, -1, -1, -1, -1 }	// 6교시
};

String[] titleNames = {
		"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론",
		"자료구조", "네트워크", "창의와감성", "사회봉사"
};
%>
<body>
<%
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
				else // 자유선택
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
			else // 자유선택
				out.println("<td align=center rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
		}
	}
	out.println("</tr>");
}
out.println("</table>");
out.println("</div>");
%>
</body>
</html>