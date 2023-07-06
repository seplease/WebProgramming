<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
<style>
h2 {
font-family: monospace;
font-size: 40px;
font-weight: bold;
}
li {
font-size: 20px;
font-family: monospace;
}
td {
font-family: monospace;
font-weight: bold;
font-size: 20px;
}
table {
border-collapse:collapse;
}
</style>
</head>
<body>
<div align="center">
<H2>include 지시어 테스트</H2>
<HR>
<P>
<table border=0 cellpadding=5 cellspacing=1>
<tr>
<td width="450"><%@ include file="calender.jsp" %></td>
<td width="20">&nbsp;</td>
<td width="450"><%@include file="news.jsp" %></td>
</tr>
</table>
</div>
</body>
</html>