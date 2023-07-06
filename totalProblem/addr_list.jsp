<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch07.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
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
<%
	int rpp = 3;
	String sindex = request.getParameter("sindex");
	int currentPage = 1, allpage;
	int startIndex, lastIndex, i, j;
	int size = am.getAddrList().size();
	
	if (request.getParameter("currentPage") != null) { //받아온 페이지 값이 있으면 저장
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	
	allpage = (int) Math.ceil(size / (double) rpp);
	
	startIndex = (currentPage * rpp) - (rpp - 1);
	if (currentPage != allpage)
		lastIndex = startIndex + rpp - 1;
	else // 마지막 페이지일 때
		lastIndex = size;
	
	for (i = startIndex; i <= lastIndex; i++) {
		AddrBean ab = am.getAddrList().get(i - 1);
%>
		<tr>
		<td><%=ab.getUsername() %></td>
		<td><%=ab.getTel() %></td>
		<td><%=ab.getEmail() %></td>
		<td><%=ab.getGender() %></td>
		<td><%=ab.getGroup() %></td>
		</tr>
<%
	}
%>
</table>
<%
	for (j = 1; j <= allpage; j++) {
		if (j == currentPage) {
%>
            <u><b>[<%=j%>]</b></u>
<%
		} else {
			startIndex = (j * rpp) - (rpp - 1);
			if ((size % rpp == 0 && currentPage == allpage) ||
				(size % rpp != 0 && currentPage != allpage) ||
				(size % rpp == 0 && (allpage - currentPage) >=1))
				lastIndex = startIndex + rpp - 1;
			else if (size % rpp == 0 && currentPage == allpage)
				lastIndex = j * rpp;
%>
		[<a href="addr_list.jsp?currentPage=<%=j%>"><%=j%></a>]
<%
 		}
 	}
 %>
</div>
<div align=center><a href="cover.jsp">목차</a></div>
</body>
</html>