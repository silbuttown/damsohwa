<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
 TaskTopVO vo=(TaskTopVO)session.getAttribute("vo");
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend><%=vo.getEMP_NAME()%>님의 정보</legend>
<form action="//TaskTop_ing/TaskTopMain.jsp" method="post">
<table border="1" width="400px">
<td>이름</td>
<td><%=vo.getEMP_NAME() %></td>
</tr>
<tr>
<td>부서</td>
<td><%=vo.getDEPT_NAME() %></td>
</tr>
<tr>
<td>직급</td>
<td><%=vo.getEMP_POSITION() %></td>
</tr>
<tr>
<td>일일 커피 섭취량</td>
<td><%=vo.getDAY_COFFEE() %></td>
</tr>
<tr><td colspan="2" align="center">
<input type ="submit" value="메인">
</td>
</tr>
</table>
</form>
</fieldset>
</body>
</html>