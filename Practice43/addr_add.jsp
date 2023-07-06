<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch07.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="ch07.AddrManager" scope="application"/>
<%
	am.add(addr);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
<c:set var="username" value="${addr.username}"/>
<c:set var="tel" value="${addr.tel}"/>
<c:set var="email" value="${addr.email}"/>
<c:set var="gender" value="${addr.gender}"/>
<c:set var="group" value="${addr.group}"/>
이름 : <c:out value="${username}"/><p>
전화번호 : <c:out value="${tel}"/><p>
이메일 : <c:out value="${email}"/><p>
성별 : <c:out value="${gender}"/><p>
그룹 : <c:out value="${group}"/><p>
<hr>
<a href="addr_list.jsp">전체 목록보기</a>
<a href="addr_list_group.jsp">그룹별 목록보기</a>
</div>
</body>
</html>