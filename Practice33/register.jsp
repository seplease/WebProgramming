<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pr33.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="pr33.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <%=login.getId() %><P>
패스워드 : <%=login.getPw() %><P>
이메일 : <%=login.getEmail() %> <P>
성별 : <%=login.getGender() %> <P>
생일 : <%=login.getBirth() %>
<hr>
<%
if (login.getGender().equals("0")) {
	if (login.isGrownUp() == true)
		out.println(login.getId() + "씨는 남성이고 성인입니다.");
	else
		out.println(login.getId() + "씨는 남성이고 미성년자입니다.");
}
else if (login.getGender().equals("1")) {
	if (login.isGrownUp() == true)
		out.println(login.getId() + "씨는 여성이고 성인입니다.");
	else
		out.println(login.getId() + "씨는 여성이고 미성년자입니다.");
}
%>
</div>
</body>
</html>