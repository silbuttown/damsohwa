<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 
TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>TASKTOP</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon2.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
</head>
<body>

<script type="text/javascript">
	function content3(){
		location.href = "/TaskTopp_ing/content3.do"
		
	}
</script>

  <!--==========================
    	맨 위 네비게이션 바
  ============================-->

<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.html"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.html">Home</a></li>
          <li><a href="TaskTopLogin.jsp">오늘의 TASKTOP</a></li>
          <li><a href="TaskTopLogin.jsp">TASKTOP 제어하기</a></li>
          
          <li class="menu-has-children"><a href="">로그인</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">로그인하기</a></li>
              
              <li><a href="#">로그아웃</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header><!-- #header -->

  <!--==========================
    	메인, 첫 페이지
  ============================-->
  
  <section id="hero">
    <div class="hero-container">
    	
    <img src="img/logo_transparent.png" width = "450px" height= "450px"/></img>	
    	
      <h1>안녕, TASKTOP!</h1>
      <br>
      <h2>TASKTOP은 편리함과 기술이 합쳐진 IoT 융합 시스템입니다.</h2>
      	<h2>당신의 편리함이 최우선입니다.</h2>
      <a href="TaskTopLogin.jsp" class="btn-get-started">Log In</a>
    </div>
  </section><!-- #hero -->

  <main id="main">

   

  <!--==========================
    	푸터
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; 2020 <strong>TASKTOP</strong>. All Rights Reserved
      </div>
      
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>


</body>
</html>