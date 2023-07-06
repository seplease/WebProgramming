<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
th {
	border-bottom: solid 1px #696969;
}
</style>
</head>
<body>
	<div align="center">
		<form name=frm1 method=post action=result.jsp>
			<input type=image src="image/eclass_title.jpg">
			<table>
				<tr>
					<th colspan="3" width="1000px">
						<h2>
							<b>로그인</b>
						</h2>
					</th>
				</tr>
			</table>
			<table>
				<tr>
					<td rowspan="5"><input type=image src="image/eclass_logo.png"
						align="right"></td>
					<td colspan="2" style="font-size: small"><b>회원님의 아이디와
							비밀번호를 정확히 입력하세요.</b></td>
				</tr>
				<tr>
					<td style="width: 70px"></td>
					<td><select name=type>
							<option value="학부생" selected>학부생</option>
							<option value="대학원생">대학원생</option>
							<option value="교직원">교직원</option>
					</select></td>
				</tr>
				<tr>
					<td style="font-size: small"><b>아이디</b></td>
					<td><input type=text name=strID
						style="background-color: #FFFF99" size=18 maxlength="18"></td>
				</tr>
				<tr>
					<td style="font-size: small"><b>비밀번호</b></td>
					<td><input type=text name=strPwd
						style="background-color: #FFFF99" size=18 maxlength="18"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"> <input
						type="button" value="가입하기"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>