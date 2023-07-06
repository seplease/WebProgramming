<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action</title>
</head>
<body>
<div align="center">
<H2>Include Action Practice</H2>
<HR>
<table border=0 cellpadding=5 cellspacing=1>
<tr>
<td width="450">
<jsp:include page="calendar.jsp">
	<jsp:param name="YEAR" value="2017" />
	<jsp:param name="MONTH" value="10" />
</jsp:include>
</td>
<td width="20">&nbsp;</td>
<td width="450">
<jsp:include page="news.jsp">
	<jsp:param name="TASK2" value="Homework" />
</jsp:include>
</td>
</tr>
</table>
</div>
</body>
</html>