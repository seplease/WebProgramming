<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
</head>
<body>
<div align="center">
<H2>include 액션 연습</H2>
<HR>
<jsp:include page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University" />
	<jsp:param name="date" value="2011/04/05" />
</jsp:include>
</div>
</body>
</html>