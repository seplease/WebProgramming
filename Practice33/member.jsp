<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!String[] mChoices = { "hobby" };
	String[] hobbyNames = { "뉴스", "맛집", "책", "영화", "여행" };
	String[] telCompany = { "010", "011", "017", "070" };
	String[] gNames = { "남", "여" };%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
<style>
table {
	border-collapse: collapse;
}

table, td, th {
	border: solid 1px #808080;
}
</style>
</head>
<body>
	<div align="center">
		<form name=frm2 method=post action=register.jsp>
			<input type=image src="image/eclass_title.jpg">
			<table style="width: 427px">
				<tr>
					<td bgcolor="#ECECEC" align="center" colspan="2"><b>회원 가입</b></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>아이디</b></td>
					<td><input type=text name=id size=10> <input
						type=image src="image/check.gif" style="vertical-align: middle"></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>패스워드</b></td>
					<td><input type=password name=pw size=10></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>성별</b></td>
					<td><input type=radio name=gender value=0>남 <input
						type=radio name=gender value=1 checked>여</td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>국적</b></td>
					<td><input type=text value="대한민국"> <input type=button
						value="국적변경"></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>휴대폰</b></td>
					<td><select name=phone1>
							<option value=0 selected>010</option>
							<option value=1>011</option>
							<option value=2>017</option>
							<option value=3>070</option>
					</select> - <input type=text name=phone2 maxlength=4 size=4 maxlength="4">
						- <input type=text name=phone3 size=4 maxlength="4"></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>이메일</b></td>
					<td><input type=text name=email size=40></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>생일</b></td>
					<td><input type=date name=birth></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>관심분야</b></td>
					<td><input type=checkbox name=hobbyNames value=0>뉴스 <input
						type=checkbox name=hobbyNames value=1 checked>맛집 <input
						type=checkbox name=hobbyNames value=2>책 <input
						type=checkbox name=hobbyNames value=3>영화 <input
						type=checkbox name=hobbyNames value=4>여행</td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>가입인사</b></td>
					<td><textarea name=memo cols="50" rows="5"
							style="vertical-align: middle">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center"><b>증명사진</b></td>
					<td><input type=file></td>
				</tr>
				<tr>
					<td bgcolor="#ECECEC" align="center" colspan="2"><input
						type=submit value="가입하기"> <input type=reset value="다시작성"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>