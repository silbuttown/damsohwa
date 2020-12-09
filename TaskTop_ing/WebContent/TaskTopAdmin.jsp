<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
  <link href="css/style.css?1" rel="stylesheet">
  <script src = "https://code.jquery.com/jquery-3.3.1.min.js"></script>
  
  <style type="text/css">
  
  	input{
  	
  	color:#fff;
	background-color: #2dca98;
	outline: none;
    border: 0;
    color: #fff;
	padding:10px 20px;
	text-transform:uppercase;
	margin-top:50px;
	border-radius:2px;
	cursor:pointer;
	position:relative;
	border-radius:10px;
  	
  	}
  	
  	input:hover{
  	
  	transform:scale(1.1); 
  	
  	}
  	
  	.container{
  	
  	min-height: 100%;
  	text-algin: center;
  	
  	}
  	
  	#myStatus{
  	
  	background-color: #DCDCDC;
  	padding : 100px;
  	
  	}
  
  </style>
  
  
  <script type="text/javascript">
	function insertform(){
		location.href = "/TaskTop_ing/insertform.do";
	}
	function listform(){
		console.log("리스트출력");
	    location.href = "/TaskTop_ing/list.do?list=list";
	}
	function dlistform(){
		console.log("리스트출력");
	    location.href = "/TaskTop_ing/list.do?list=dlist";		
	}
	
	//메세지 작성 함수
//	function msg(){
//		let msgTxt = prompt('메세지를 입력하세요.');
//	}
	</script>
	

</head>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.html"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>
      
      
  <!--==========================
    	맨 위 네비게이션 바
  ============================-->

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="TaskTopAdmin.jsp">Home</a></li>
          <li><a href="#myStatus">관리자 메뉴</a></li>
          <li><a href="#services">TASKTOP 제어하기</a></li>
          <!-- <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li> -->
          <li class="menu-has-children"><a href="">로그인</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">로그인하기</a></li>
              <li><a href="TaskTopLogin.jsp">로그아웃</a></li>
              
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
    <% 
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
	%>
    	
      <h1>안녕하세요, <%=dto.getEMP_POSITION() %>님!</h1>
      <br>
      <h2>TASKTOP은 편리함과 기술이 합쳐진 IoT 융합 시스템입니다.</h2>
      	<h2>당신의 편리함이 최우선입니다.</h2>
      <a href="#myStatus" class="btn-get-started">관리 시작하기</a>
    </div>
  </section>
  


<main id="main">
<section id="myStatus">
      
     <div class="container">
        
            <table width = "1000px">
            	<tr>
            		<td colspan = 3 align = "center">
            			<img src="./img/profile/sejin.png" alt="user" width = "250px" height = "250px" style = "padding: 20px; width:300px; height: 300px; border-radius: 50%; background: #2dca98">
            
            			<h3 class="title" style = "padding: 70px"><%=dto.getEMP_NAME()%>님 환영합니다!</h3>
            		</td>
				</tr>
				
				
				<tr class="icon-box wow fadeInUp">
             		<td class="icon-box wow fadeInUp" align = "center" width = "400px" style = "padding: 40px">
             			<h4 class="title">
             				<img src="./img/icons/add.png" width = "80px" height = "80px">
             			</h4>
              			<input type = button id = "addEMP" value ="사원추가" onclick = "insertform()">
             		 </td>
             		 
              	
              		<td class="icon-box wow fadeInUp" align = "center" data-wow-delay="0.2s" width = "400px" style = "padding: 60px"> 
              			<h4 class="title">
              				<img src="./img/icons/viewall.png" width = "80px" height = "80px">
              			</h4>
              			<input type = button id = "showEMP" name = "inputStyle" value ="전체사원조회" onclick = "listform()">
              
             		 </td>
			
              		<td class="icon-box wow fadeInUp" align = "center" data-wow-delay="0.4s" width = "400px" style = "padding: 60px">
              			<h4 class="title">
              				<img src="./img/icons/call.png" width = "80px" height = "80px">
              			</h4>
             			<input type = button id = "ShowDEPT" name = "inputStyle" value = "호출하기" onclick = "dlistform()">
             			
             		</td>
             		 
			</tr>
			
			</table>

         </div>

          
    </section>
    
    
  <!--==========================
    	제어하기 페이지
  ============================-->    
    
    
    <section id="services" style = "padding: 100px; height: 1000px">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h2 style = "padding: 150px; text-align: center">TASKTOP 제어하기</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href="" ><img src = "./img/icons/power.png" width = "50px" height = "50px" onclick = "shutdown()"></a></div>
              <h4 class="title"><a href="">퇴근하기</a></h4>
              <p class="description">자동 퇴근하기 버튼으로 연결되어 있는 모든 시스템을 종료하세요. </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/coffee.png" width = "50px" height = "50px" onclick ="content2()"></a></div>
              <h4 class="title"><a href=""  onclick ="content2()">커피포트 제어</a></h4>
              <p class="description">커피포트 제어 버튼으로 지금 향긋한 커피를 바로 준비 해보세요.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/check.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">부재중 체크</a></h4>
              <p class="description">같은 부서 및 다른 부서의 사원의 부재중을 체크 해보세요.</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href="" ><img src = "./img/icons/chat.png" width = "50px" height = "50px" onclick = "resMSG(<%=dto.getEMP_NO()%>)"></a></div>
              <h4 class="title"><a href="">메세지 확인하기</a></h4>
              <p class="description">호출 메세지를 확인하세요</p>
            </div>
          </div>
          </div>
      </div>
    </section>
    
    
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
      <div class="credits">
        
      </div>
    </div>
  </footer>    
    
    
<!-- 위로 올라가는 기능 -->
<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</main>

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