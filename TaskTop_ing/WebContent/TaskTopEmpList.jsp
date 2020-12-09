<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
ArrayList<TaskTopVO> list =(ArrayList<TaskTopVO>)session.getAttribute("list");
//TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>우리 부서 보기</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">


</head>
<body>


<div class="limiter" style = "background-color: #8E8E8E">
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">

						<div class="row header">
							<div class="cell" style = "background-color: #2dca98">
								이름
							</div>
							<div class="cell" style = "background-color: #2dca98">
								직급
							</div>
							<div class="cell" style = "background-color: #2dca98">
								재실여부
							</div>
						</div>
						
						
						<%for( TaskTopVO vo : list){ %>
						<div class="row" style = "background-color: #DCDCDC">
						
							<div class="cell" data-title="Full Name" onclick="msg()">
								<%= vo.getEMP_NAME() %>
							</div>
							<div class="cell" data-title="Age" onclick="msg()">
								<%= vo.getEMP_POSITION() %>
							</div>
							<div class="cell" data-title="Job Title" onclick="msg()">
								<%= vo.getEMP_EXIST() %>
							</div>
							
						</div>
						<%} %>
						
				</div>
			</div>
		</div>
	</div>

	
	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>



</body>
</html>