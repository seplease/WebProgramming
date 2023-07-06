<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<title>Practice 13</title>
</head>
<style>
th {
border-bottom: solid 1px #696969;
}
td {
font-family: monospace;
width: 600px;
}
</style>
<body>
<div align="center">
<input type=image src="image/eclass_title.jpg">
<table>
<tr style="background-color: #FED9B8" align="center" height=35px>
<td style="font-size:15px"><b>오류가 발생했습니다</b></td>
</tr>
<tr style="background-color: #FFEFD5" align="center" height=300px>
<td>
<input type=image src="image/flower.gif">
<p style="font-size:15px"><b>오류 발생시간 : <%=new java.util.Date() %></b></p>
<p style="font-size:15px"><b>최대한 빨리 조치하겠습니다.</b></p>
</td>
</tr>
</table>
</div>
</body>
</html>