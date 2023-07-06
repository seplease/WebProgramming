<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ tag language="java" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="login" class="pr33.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />

<%@ attribute name="brd"%>
<%@ attribute name="color"%>
<style>
td {
	text-align: center;
}
</style>
<body>
	<%
	String isAdult = null;

	if (login.getGender().equals("0")) {
		if (login.isGrownUp() == true)
			isAdult = login.getId() + "씨는 남성이고 성인입니다.";
		else
			isAdult = login.getId() + "씨는 남성이고 미성년자입니다.";
	} else if (login.getGender().equals("1")) {
		if (login.isGrownUp() == true)
			isAdult = login.getId() + "씨는 여성이고 성인입니다.";
		else
			isAdult = login.getId() + "씨는 여성이고 미성년자입니다.";
	}
	%>
	<div align="center">
		<table border="${brd}" bgcolor="${color}" width="300" height="270">
			<tr>
				<td>이름:</td>
				<td><%=login.getId()%></td>
			</tr>
			<tr>
				<td>패스워드:</td>
				<td><%=login.getPw()%></td>
			</tr>
			<tr>
				<td>이메일:</td>
				<td><%=login.getEmail()%></td>
			</tr>
			<tr>
				<td>성별:</td>
				<td><%=login.getGender()%></td>
			</tr>
			<tr>
				<td>생일:</td>
				<td><%=login.getBirth()%></td>
			</tr>
			<tr>
				<td colspan=2><%=isAdult%></td>
			</tr>
		</table>
	</div>
</body>