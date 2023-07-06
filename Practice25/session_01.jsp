<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_01</title>
</head>
<body>
<form method=post action=session_02.jsp>
	아이디 : <input type=text name="username"><br>
	비밀번호 : <input type=text name="passwd"><br>
	<input type=submit value="로그인">
	<input type=reset value="취소">
</form>
</body>
</html>