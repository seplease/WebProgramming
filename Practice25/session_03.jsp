<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_03</title>
</head>
<body>
<%
long creationTime = session.getCreationTime();
long laTime = session.getLastAccessedTime();

long time = (laTime - creationTime) / 1000;
%>
세션이 생성된 후 <%= time %>초가 지났습니다.
</body>
</html>