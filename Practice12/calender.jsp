<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int i;
out.println("<div align=\"center\">");
out.println("<table border=\"solid 1px #808080\">");
out.println("<tr>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\"><font color=\"red\">일</font></td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\">월</td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\">화</td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\">수</td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\">목</td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\">금</td>");
out.println("<td width=\"80\" height=\"50\" style=\"text-align:center\"><font color=\"blue\">토</font></td>");
out.println("</tr>");
for (i = 0; i < 4; i++) {
	out.println("<tr>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("<td width=\"80\" height=\"50\"> &nbsp; </td>");
	out.println("</tr>");
}
out.println("</table>");
out.println("</div>");
%>