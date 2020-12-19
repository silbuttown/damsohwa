<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>
    
    <!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- banner slider -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" type="text/css" href="css/style2.css">

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
    
    
    <style>
    
    	legend{
    		color: blue;
    		font-size: 25px;
    		}
    
    </style>
</head>
<body>

<!-- 네비게이션 바 시작 -->
		<header class="header-style fixed-top">
			<div class="container">
				<div class="header d-lg-flex justify-content-between align-items-center">
					
					<!-- 네비게이션 바 로고 -->
					<h1 class="logo text-center">
						<img src="images/damsohwaLogo.png" alt="My Image" width="30" height="50" style = "padding:10">
					</h1>
					<!-- 네비게이션 바 로고 끝 -->
					
					<!-- 네비게이션 바 -->
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle toogle-2">Menu</label>
							<input type="checkbox" id="drop" />
							<ul class="menu">
								<li><a href="#banner" class="smooth-scroll">HOME</a></li>
								<li><a href="DamOrder.jsp">주문하기</a></li>
								<li><a href="DamLogin.jsp">로그아웃</a></li>
							</ul>
						</nav>
					</div>
					<!-- 네비게이션 바 -->
				</div>
			</div>
		</header>
		<!-- 네비게이션 바 끝 -->

<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">주문하기</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row m-b-55">
                        
                        	<h3>주문이 완료 되었습니다!</h3>
                        	<h3>ㅇㅇㅇ님의 일련번호는 123번입니다.</h3>
                            
                        </div>
                        
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">돌아가기</button>
                        </div>
                        
                    </form>
                </div>
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