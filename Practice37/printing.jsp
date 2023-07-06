<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<%
// 사용자 입력 값을 가지고 와서 세션의 속성으로 저장해서
// 커스텀 태그로 전달한다.
request.setCharacterEncoding("UTF-8");

if (session.isNew()) {
	out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
	session.setAttribute("login", "김동덕");
}
%>
<ddwutag:greeting color="pink" />
<ddwutag:greeting color="green" />