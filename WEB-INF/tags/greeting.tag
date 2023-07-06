<!--컴퓨터학과 20210760 김시은
    이 화면은 chrome에 최적화 되어 있습니다-->

<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="color" %>

<font color="${color}">
<b><%= request.getParameter("username") %></b>님 환영합니다!!
</font><br>