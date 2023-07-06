<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 19</title>
<style>
table, tr, td {
	border-collapse:collapse;
	border: 1px solid #808080;
	text-align: center;
}
td {
	width: 100px;
	height: 40px;
	font-family: monospace;
	font-size: 20px;
}
</style>
</head>
<body>
<div align="center">
<jsp:include page="calendar.jsp">
	<jsp:param name="year" value="2022" />
	<jsp:param name="month" value="10" />
</jsp:include>
</div>
</body>
</html>