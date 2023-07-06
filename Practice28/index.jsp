<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<div align=center>
<h2>Alice in Wonderland</h2>
<table cellpadding="20px">
<tr>
<td><jsp:include page="viewer.jsp"></jsp:include></td>
<td><jsp:include page="login.jsp"></jsp:include></td>
</tr>
</table>
</div>
</body>
</html>