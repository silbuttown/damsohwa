<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
ArrayList<TaskTopVO> list =(ArrayList<TaskTopVO>)session.getAttribute("list");
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend align = "center"><%=dto.getDEPT_NAME()%>의 구성원</legend>
<form action = "TaskTopMain.jsp">
<table border ="1" width ="400px" align = "center">
<tr align = "center">
<td>이름</td>
<td>직급</td>
<td>재실여부</td>
</tr>
<%for( TaskTopVO vo1 : list){ %>
<tr>
<td><%= vo1.getEMP_NAME() %></td>
<td><%= vo1.getEMP_POSITION() %></td>
<td><%= vo1.getEMP_EXIST() %></td>
</tr>
<%} %>
<tr>
<td colspan = 3><input type ="submit" value ="메인"></td>
</table>
</form>
</fieldset>
</body>
</html>