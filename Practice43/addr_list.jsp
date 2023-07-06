<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch07.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="ch07.AddrManager" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_list</title>
</head>
<body>
<div align=center>
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><P>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
<c:forEach var="ab" varStatus="i" items="${am.getAddrList()}">
	<tr>
	<td>${ab.username}</td>
	<td>${ab.tel}</td>
	<td>${ab.email}</td>
	<td>${ab.gender}</td>
	<td>${ab.group}</td>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>