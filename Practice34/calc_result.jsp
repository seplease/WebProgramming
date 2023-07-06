<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="calc" class="pr34.Calculator" scope="page" />
<jsp:setProperty name="calc" property="*" />

<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
<style>
    tr, td {
        text-align: center;
    }

    table {
        border-collapse: collapse;
    }

    td {
        border: solid 1px #EAEAEA;
    }

    td.blue {
        background-color: #32CCFE;
        height: 40px;
        font-family: 'Times New Roman', Times, serif;
        font-style: italic;
    }
</style>
</head>
<body>
	<form method="post" action="calc_result.jsp">
		<div align="center">
			<table>
				<tr>
					<td colspan="2" class="blue" style="font-size: 35px;" width="375px">CalCuLaTor</td>
				</tr>

				<tr>
					<td><input type=image src="image/cal.jpg"></td>
					<td width="155px" style="text-align: center"><br>
					<br>
					<input type="text" name="op1" style="text-align: center" size="5"
						value=<%=calc.getOp1()%> readonly><br>
					<br> <%=calc.getOperator()%><br>
					<br> <input type="text" name="op2" style="text-align: center"
						size="5" value=<%=calc.getOp2()%> readonly><br>
					<br> =<br>
					<br> <input type="text" name="result" size="7"
						value=<%=calc.calc(calc.getOp1(), calc.getOp2(), calc.getOperator())%> disabled></td>
				</tr>

				<tr>
					<td colspan="2" class="blue"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>