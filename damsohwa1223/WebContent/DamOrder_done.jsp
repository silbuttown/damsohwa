<%@page import="DSHModel.DSHinfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>주문완료</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    
    <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css?1">
	
	<script src = "./JS/jquery-3.5.1.min.js"></script>

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main2.css" rel="stylesheet" media="all">
	</head>
	<body>
		<%
			DSHinfoVO ivo = (DSHinfoVO)session.getAttribute("ivo");
		%>

		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<form class="login100-form validate-form">
						<span class="login100-form-title p-b-26">
						<img src="images/damsohwaLogo.png" alt="My Image" width="80" height="110" style = "padding:1;">
						</span>
						<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
						</span>
						<div class="text-center">
                        
                        	<h4>주문이 완료 되었습니다!</h4><br>
                        	<h5>로그인 일련번호는</h5>
                        	<h3 style="border:solid 1px #eee;"><%-- <%=ivo.getID() %> --%></h3>
                        	<h5>입니다.</h5><br>
                            
						</div>

						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn" type="button" value="홈으로" onclick="goHome()">
								홈으로
								</button>
							</div>
						</div>
					<script>
					function goHome() {
						$(location).attr("href", "DamHome.jsp");
					}
					</script>
					<br><br><br><br>
				<div class="w3l-copy text-center mt-5">
				<h6 class="text-da">건강한 당신의 삶을 응원합니다.</h6>
				</div>
				<div class="w3l-copy text-center mt-5">
				<p class="text-da">© 2021 Damsohwa. All rights reserved.
				</p>
				</div>

				</form>
			</div>
		</div>
	</div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="script/global.js"></script>

</body>
</html>