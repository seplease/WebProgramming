<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pr42.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="student" class="pr42.StudentBean" scope="page"/>
<jsp:setProperty name="student" property="*"/>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<c:set var="id" value="${student.id}" />
<c:set var="pw" value="${student.pw}" />
<c:set var="email" value="${student.email}" />
<c:set var="gender" value="${student.gender}" />
<c:set var="birth" value="${student.birth}" />

<div align="center">
<h2>등록내용</h2>
이름 : <c:out value="${id}" default="id is not registered" escapeXml="true" /><P>
패스워드 : <c:out value="${pw}" default="pw is not registered" escapeXml="true" /><P>
이메일 : <c:out value="${email}" default="email is not registered" escapeXml="true" /><P>
성별 : <c:out value="${gender}" default="gender is not registered" escapeXml="true" /><P>
생일 : <c:out value="${birth}" default="birth is not registered" escapeXml="true" /><P>
<hr>
<c:forTokens var="bdate" items="${birth}" delims="-" varStatus="i">
	<c:if test="${i.first}">
		<c:set var="year" value="${bdate}" />
	</c:if>
</c:forTokens>

<c:set var="bdate" value="${fn:split(birth, '-')}" />
<c:out value="${bdate[0]}" /><br>

<c:if test="${(2022 - year) >= 20 && gender == '0'}">
	<p><c:out value="${id}" default="id is not registered" escapeXml="true" />씨는 남성이고 성인입니다.</p>
</c:if>
<c:if test="${(2022 - year) < 20 && gender == '0'}">
	<p><c:out value="${id}" default="id is not registered" escapeXml="true" />씨는 남성이고 미성년자입니다.</p>
</c:if>
<c:if test="${(2022 - year) >= 20 && gender == '1'}">
	<p><c:out value="${id}" default="id is not registered" escapeXml="true" />씨는 여성이고 성인입니다.</p>
</c:if>
<c:if test="${(2022 - year) < 20 && gender == '1'}">
	<p><c:out value="${id}" default="id is not registered" escapeXml="true" />씨는 여성이고 미성년자입니다.</p>
</c:if>
</div>
</body>
</html>

<!-- 
<c:set var="bdate" value="${fn:split(birth, '-')}" />
<c:set var="year" value="${bdate[0] + bdate[1] + bdate[2] + bdate[3]}" />
 -->