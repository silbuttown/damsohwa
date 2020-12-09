<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
ArrayList<TaskTopVO> list =(ArrayList<TaskTopVO>)session.getAttribute("list");
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

<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="TaskTopMain.jsp"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="TaskTopMain.jsp">Home</a></li>
          <li><a href="#about">오늘의 TASKTOP</a></li>
          <li><a href="#services">TASKTOP 제어하기</a></li>
          <li class="menu-has-children"><a href="">로그인</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">로그인하기</a></li>
              <li><a href="TaskTopLogin.jsp">로그아웃</a></li>
              
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header>

<main id="main">

<section id="hero">
    <div class="hero-container">
    	
    <img src="img/logo_transparent.png" width = "450px" height= "450px"/></img>	
    	
      <h1>안녕하세요, <%=dto.getDEPT_NAME()%>님</h1>
      <br>
      <h2>TASKTOP은 편리함과 기술이 합쳐진 IoT 융합 시스템입니다.</h2>
      	<h2>당신의 편리함이 최우선입니다.</h2>
      <a href="#myStatus" class="btn-get-started">오늘의 TASKTOP 확인하기</a>
    </div>
  </section>
  
<section id="myStatus">
      <div class="container">
        	<%for( TaskTopVO vo1 : list){ %>
            
            <img src="./img/img_avatar.png" alt="user" id = "userPhoto">
           
            <h2 class="title"><%=dto.getDEPT_NAME()%>님 환영합니다.</h2>
            
			<table>
			
			<tr class="icon-box wow fadeInUp">
             <td> <h4 class="title"><a href="">이름</a></h4>
              <p class="description"><%= dto.getEMP_NAME() %></p>
              </td>
              	
            </tr>
			
			<tr class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <td> <h4 class="title"><a href="">직급</a></h4>
              <p class="description"><%= dto.getEMP_POSITION() %></p>
              </td>
			</tr>
			
			<tr class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <td><h4 class="title"><a href="">재실 여부</a></h4>
              <p class="description"><%= vo1.getEMP_EXIST() %></p>
              </td>
			</tr>
			
			<%} %>
			
			</table>

          </div>
    </section>
    
    

    <!--==========================
      Facts Section
    ============================-->
    <section id="facts">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">오늘의 TASKTOP</h3>
        </div>
        <div class="row counters">

  			<form action = "/TaskTop_ing/coffee.do" method = "post">
  			<div class="col-lg-3 col-6 text-center">
  			<img src = "./img/icons/tea-cup.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">3</span>
            <p style="color:black;">커피</p>
  				</div>
			</form>
			
          <div class="col-lg-3 col-6 text-center">
          <img src = "./img/icons/push-ups.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">5</span>
            <p style="color:black;">스트레칭 영상 시청</p>
  				</div>

          <div class="col-lg-3 col-6 text-center">
          <img src = "./img/icons/check.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">4</span>
            <p style="color:black;">자리비움</p>
  				</div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">15</span>
            <p>Hard Workers</p>
  				</div>

  			</div>

      </div>
    </section><!-- #facts -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">TASKTOP 제어하기</h3>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/power.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">퇴근하기</a></h4>
              <p class="description">자동 퇴근하기 버튼으로 연결되어 있는 모든 시스템을 종료하세요. </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/tea-cup.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">커피포트 제어</a></h4>
              <p class="description">커피포트 제어 버튼으로 지금 향긋한 커피를 바로 준비해보세요.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/push-ups.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">스트레칭 영상 시청</a></h4>
              <p class="description">스트레칭 영상 시청 버튼으로 스트레칭이 필요한 부위에 따라 다른 영상들을 시청해보세요.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/check.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">자리비움 제어</a></h4>
              <p class="description">자리비움 제어 버튼으로 현재 상태를 자리에 있음 또는 부재중으로 설정하세요.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/bar-chart.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">통계 보기</a></h4>
              <p class="description">통계 보기 버튼으로 일주일간의 나의 TASKTOP을 확인하세요.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><i class="fa fa-shopping-bag"></i></a></div>
              <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
              <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>
          </div>
        </div>

      </div>
    </section>  
</main>    

<%-- <fieldset>
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
</fieldset> --%>
</body>
</html>