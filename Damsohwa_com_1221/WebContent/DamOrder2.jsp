<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*, java.text.*"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>
<script type="text/javascript">
    function trans(){
    	document.g
    	
    }
    </script>
<script src="./JS/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="dsh/dshjumoon.css">

<!-- 네비게이션 -->
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- Custom-Files -->
 <!-- <link rel="stylesheet" href="css/bootstrap.css"> -->

<!-- banner slider -->
 <!-- <link rel="stylesheet" href="css/style3.css" type="text/css" media="all" /> -->
<!-- Style-CSS -->
 <!-- <link rel="stylesheet" type="text/css" href="css/style4.css"> -->

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">


<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<!-- <link href="css/main3.css" rel="stylesheet" media="all">-->

<link rel="stylesheet" href="dsh/dshjumoon.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>jQeury.steps Demos</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main3.css">
<link rel="stylesheet" href="css/jquery.steps.css">
<script src="lib/modernizr-2.6.2.min.js"></script>
<script src="lib/jquery-1.9.1.min.js"></script>
<script src="lib/jquery.cookie-1.3.1.js"></script>
<script src="build/jquery.steps.js"></script>

<style>
legend {
	color: blue;
	font-size: 25px;
	float: left;
}
</style>

<script type="text/javascript"
	src="<c:url value="script/jquery-3.2.1.min.js"/>"></script>
</head>
<body>
    	
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- 네비게이션 바 시작 -->
		<header class="header-style fixed-top">
			<div class="container">
				<div class="header d-lg-flex justify-content-between align-items-center">
					
					<!-- 네비게이션 바 로고 -->
					<h1 class="logo text-center" class="fa fa-pagelines" aria-hidden="true">
						<a href="DamHome.jsp"><img src="images/damsohwaLogo.png" alt="My Image" width="80" height="110" style = "padding:1;"></a>
					</h1>
					<!-- 네비게이션 바 로고 끝 -->
					
					<!-- 네비게이션 바 -->
					<div class="nav_w3ls" style="height: 100px;">
						<nav>
							<label for="drop" class="toggle toogle-2">Menu</label>
							<input type="checkbox" id="drop"/>
							<ul class="menu">
								<li><a href="#banner" class="smooth-scroll">HOME</a></li>
								<li><a href="#testi" class="smooth-scroll">소개글</a></li>
								<li><a href="#video-intro" class="smooth-scroll">시연영상</a></li>
								<li><a href="#services" class="smooth-scroll">기능소개</a></li>
								
								<li>
									<!-- First Tier Drop Down
									<label for="drop-2" class="toggle toggle-drop">Pages <span class="fa fa-angle-down" aria-hidden="true"></span>
									</label>
									<a href="#">Pages <span class="fa fa-angle-down" aria-hidden="true"></span></a>
									<input type="checkbox" id="drop-2" />
									<ul class="list-unstyled">
										<li><a href="#why" class="drop-text">Why Choose Us</a></li>
										<li class="my-2"><a href="#partners" class="drop-text">Our Partners</a></li>
										<li><a href="#testi" class="drop-text">Testimonials</a></li>
									</ul> -->
								</li>
								
								
								<li><a href="DamOrder.jsp">주문하기</a></li>
								<li><a href="DamStatistics.jsp">통계</a></li>
								<li><a href="DamLogin.jsp">로그인</a></li>
							</ul>
						</nav>
					</div>
					<!-- 네비게이션 바 -->
				</div>
			</div>
		</header>
		<!-- 네비게이션 바 끝 -->
		
		<header>
            <h1>Wizard Demo</h1>
            <legend>알맞은 담소화 찾기</legend>
            <nav>
                <ul>
                    <li><a href="index.html">알맞은</a></li>
                    <li><a href="vertical.html">담소화</a></li>
                    <li><a href="tabs.html">찾기</a></li>
                </ul>
            </nav>
        </header>

        <div class="content">
        <!-- 드랍다운 메뉴 시작 -->
                        <div class="form-row">
                            <div class="name">키우고 싶은 종류</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject">
                                            <option disabled="disabled" selected="selected">종류 선택</option>
                                            <option>꽃</option>
                                            <option>열매</option>
                                            <option>기타</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 드랍다운 메뉴 끝 -->
        	<h1></h1>

            <script>
                $(function ()
                {
                    $("#wizard").steps({
                        headerTag: "h2",
                        bodyTag: "section",
                        transitionEffect: "slideLeft"
                    });
                });
            </script>

            <div id="wizard">
                <h2>화분찾기</h2>
                <section>
                        <div class="form-row p-t-20">
                            <label class="label label--block">키우고 싶은 종류</label>
                            <div> <!-- class="p-t-15" -->
                            	<label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="radio1">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">꽃
                                    <input type="radio" checked="checked" name="radio1" value="꽃">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">열매
                                    <input type="radio" name="radio1" value="열매">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">기타
                                    <input type="radio" name="radio1" value="기타">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">좋아하는 온도</label>
                            <div>
                                <label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">시원
                                    <input type="radio" name="radio2" value="시원">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">따뜻
                                    <input type="radio" name="radio2" value="따뜻">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">식물을 잘 키우나요 ?</label>
                            <div>
                                <label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">잘 돌본다
                                    <input type="radio" name="radio3" value="잘한다">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">잘 못 돌본다
                                    <input type="radio" name="radio3" value="못한다">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">좋아하는 종류</label>
                            <div>
                                <label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">꽃
                                    <input type="radio" name="radio4" value="꽃">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">열매
                                    <input type="radio" name="radio4" value="열매">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">허브
                                    <input type="radio" name="radio4" value="허브">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">나무
                                    <input type="radio" name="radio4" value="나무">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                </section>
                

                <h2>화분선택</h2> <!-- 테스트용. 서블릿에서 데이터 받아오도록 변형 예정/ 화분 4step로 넘기기 -->
                <section>
				<div class="dshselect flex-container">
					<div class="flex-item">
							<div class="dsh-order-card">
								<div class="dshcard-body">
									<div class="clearfix">
										<div class="text-muted text-uppercase font-weight-bold font-xs small">블랙로즈 동백</div>
									</div>
									<div class="b-b-1 pt-3"></div>
									<hr class="dshhr">
									<div class="more-info pt-2" style="margin-bottom: -10px;">
										<a class="font-weight-bold font-xs btn-block text-muted small"
											href="#"><button type="button"
												class="dshbtn btn-outline-primary dshbtn-lg dshbtn-block" name="btnSelect" value="블랙로즈 동백">선택하기</button>
											<button type="button"
												class="dshbtn btn-outline-secondary dshbtn-lg dshbtn-block" name="btnSelect" value="포인세티아">선택하기</button>
											<i class="fa fa-angle-right float-right font-lg"></i></a>
									</div>
								</div>
							</div>
					</div>
					<!--/.col-->
					<!--/.col-->
					<div class="flex-item">
							<div class="dsh-order-card">
								<div class="dshcard-body">
									<div class="clearfix">
										<div
											class="text-muted text-uppercase font-weight-bold font-xs small">블루베리</div>
									</div>
									<div class="b-b-1 pt-3"></div>
									<hr class="dshhr">
									<div class="more-info pt-2" style="margin-bottom: -10px;">
										<a class="font-weight-bold font-xs btn-block text-muted small"
											href="#"><button type="button"
												class="dshbtn btn-outline-warning dshbtn-lg dshbtn-block" name="btnSelect" value="블루베리">선택하기</button>
											<button type="button"
												class="dshbtn btn-outline-danger dshbtn-lg dshbtn-block" name="btnSelect" value="장미">선택하기</button>
											<i class="fa fa-angle-right float-right font-lg"></i></a>
									</div>
								</div>
							</div>
					</div>
				</div>
			</section>

                <h2>환경검색</h2> <!-- 데이터베이스에 입력될 '회원 개인 생활 습관 자료' -->
                <section>
                    <!--  화분선택 후 화면 -->
                    
                    <form id="form1" name="form1" method="post">
                        <div class="form-row p-t-20">
                            <label class="label label--block">수면시간</label>
                            <div class="p-t-15">
                                <select id="wakeH" name="wakeH">
                                	<option value="">기상시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=24; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                </select>
                                
                                <select id="sleepH" name="sleepH">
                                	<option value="">취침시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=24; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">주기적으로 드시는 약이 있나요?</label>
                            <div class="p-t-15">
                            	<label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="takeMedi" onclick="div_OnOff(this.value,'medi');">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" id="takeMedi" name="takeMedi" value="있다" onclick="div_OnOff(this.value,'medi');">있다
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" id="takeMedi" name="takeMedi" value="없다" onclick="div_OnOff(this.value,'medi');">없다
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div id="medi" style="display:none">
                        	<div class="form-row p-t-20">
                            <label class="label label--block">약을 하루 몇 회 드시나요?</label>
                            <div class="p-t-15">
                            	 <label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="takeMediE">복용횟수 선택
                                    <span class="checkmark"></span>
                                </label>
                                 <label class="radio-container m-r-55">
                                    <input type="radio" id="takeMediE" name="takeMediE" value="1" onclick="div1_OnOff(this.value,'mediTime1');">1회
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" id="takeMediE" name="takeMediE" value="2" onclick="div1_OnOff(this.value,'mediTime2');">2회
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" id="takeMediE" name="takeMediE" value="3" onclick="div1_OnOff(this.value,'mediTime3');">3회
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        	</div>
                        </div>

                        	<div id="mediTime1" style="display:none">
                        	
                        		<div class="form-row p-t-20">
                            	<label class="label label--block">복용시간을 선택해 주세요</label>
                           		<div class="p-t-15">
                                	<select  id="takeMediAP1" name="takeMediAP1" >
                                		<option value="">오전/오후</option>
                                		<option value="오전">오전</option>
                                        <option value="오후">오후</option>
                                    </select>
                                    
                                    <select id="takeMediT1" name="takeMediT1">
                                	<option value="">시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=12; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                	</select>
                                
                                	<select id="takeMediM1" name="takeMediM1">
                                	<option value="">분</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=0; i<=59; i+=10) {%>
                                	<option value="<%=i%>"><%=i+"분"%></option>
                                	<%}%>
                                	</select>
                              </div>
                        	  </div>
                          </div>
                          
                          <div id="mediTime2" style="display:none">
                        	
                        		<!-- <div class="form-row p-t-20"> -->
                              <div class="p-t-15">
                                	<select  id="takeMediAP2" name="takeMediAP2" >
                                		<option value="">오전/오후</option>
                                		<option value="오전">오전</option>
                                        <option value="오후">오후</option>
                                    </select>
                                    
                                    <select id="takeMediT2" name="takeMediT2">
                                	<option value="">시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=12; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                	</select>
                                
                                	<select id="takeMediM2" name="takeMediM2">
                                	<option value="">분</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=0; i<=59; i+=10) {%>
                                	<option value="<%=i%>"><%=i+"분"%></option>
                                	<%}%>
                                	</select>
                              </div>
                        	  </div>
<!--                           </div> -->
                          
                          <div id="mediTime3" style="display:none">
                        	
                        		<!-- <div class="form-row p-t-20"> -->
                              <div class="p-t-15">
                                	<select  id="takeMediAP3" name="takeMediAP3">
                                		<option value="">오전/오후</option>
                                		<option value="오전">오전</option>
                                        <option value="오후">오후</option>
                                    </select>
                                    
                                    <select id="takeMediT3" name="takeMediT3">
                                	<option value="">시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=12; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                	</select>
                                
                                	<select id="takeMediM3" name="takeMediM3">
                                	<option value="">분</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=0; i<=59; i+=10) {%>
                                	<option value="<%=i%>"><%=i+"분"%></option>
                                	<%}%>
                                	</select>
                              </div>
                        	  <!-- </div> -->
                          </div>
                          <input type="button" value="확인" onclick="memberRootin(); return false;">
                        </form>
						<!-- 스크립트 시작 -->
						<script>
						function div_OnOff(v,id){
							 // 라디오 버튼 value 값 조건 비교
 							if(v == "있다"){
 								document.getElementById(id).style.display = ""; // 보여줌
 							}else{
 								document.getElementById(id).style.display = "none"; // 숨김
 							}
						}
						
						function div1_OnOff(v,id){
							 // 라디오 버튼 value 값 조건 비교
							if(v == "1"){
								document.getElementById(id).style.display = "";
								document.getElementById("mediTime2").style.display = "none";
								document.getElementById("mediTime3").style.display = "none";
							}else if(v == "2"){
								document.getElementById("mediTime1").style.display = "";
								document.getElementById(id).style.display = "";
								document.getElementById("mediTime3").style.display = "none";
							}else if(v == "3"){
								document.getElementById("mediTime1").style.display = "";
								document.getElementById("mediTime2").style.display = "";
								document.getElementById(id).style.display = "";
							}
						}
						
						function memberRootin(){
					        var formData = $("#form1").serialize();

					        $.ajax({
					            cache : false,
					            url : "${pageContext.request.contextPath}/MemberRootin", // 요기에
					            type : 'POST', 
					            data : formData, 
					            success : function(data) {
					                var jsonObj = JSON.parse(data);
					            }, // success 
					    
					            error : function(xhr, status) {
					                alert(xhr + " : " + status);
					            }
					        }); // $.ajax */
					    }
						</script>
					
						
					
                </section>

                <h2>주문하기</h2>
                <section>
                
                <form id="form2" name="form2" method="post">
                
                <!-- 선택 담소화 이미지 -->
                <label class="radio-container m-r-55">
                                    <input type="radio" id="damsohwa" name="damsohwa" value="장미허브">장미허브 ("선택한 화분이 맞으면, 클릭해 주세요")
                                    <span class="checkmark"></span>
                                </label>
				<!-- /선택 담소화 이미지 -->
				
                <%
                	Calendar cal = Calendar.getInstance();
                %>
				<div class="form-row m-b-55">
					<div class="">담소화의 생일은 <%=cal.get(Calendar.MONTH)+1%><%=cal.get(Calendar.DATE)%>  (<%=cal.get(Calendar.MONTH)+1%>월 <%=cal.get(Calendar.DATE)%>일) 입니다.</div>
					<div class="value">
					</div>
				</div>
				
					<div class="">벗의 생일은 언제인가요? (예: 0101 _ 월일을 4자리 숫자로 입력해주세요)</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group-desc">
									<input class="input--style-5" type="text" name="birth" id='birth' onkeyup='printName()'/>
									<button onclick="onDisplay()" type="button"
												class="dshbtn btn-outline-warning dshbtn-lg dshbtn-block" name="btnSelect" onclick="div_id(this.value,'medi');">확인</button>
							</div>
						</div>
					</div>
				</div>
				
				<div class="form-row m-b-55">
				<div class="" id="noneDiv" style="display:none;">
					<div class="name">일련번호</div>
					<div id='result'></div><%=cal.get(Calendar.MONTH)+1%><%=cal.get(Calendar.DATE)%>
					<span> </span>
					
					<br>
					<div> 로그인 가능한 일련번호 입니다.(수정불가)</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group-desc">
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>

				<div class="form-row m-b-55">
					<div class="name">성함</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group-desc">
									<input class="input--style-5" type="text" id="user" name="user">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="form-row m-b-55">
					<div class="name">연락처</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group-desc">
									<input class="input--style-5" type="text" id="tel" name="tel">
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="form-row m-b-55">
					<div class="name">주소</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group-desc">
									<input class="input--style-5" type="text" id="addr" name="addr">
								</div>
							</div>
						</div>
					</div>
				</div>
				<input type="button" value="확인" onclick="memberOrder(); return false;">
			</form>
					<script>
					function onDisplay() {
					     $('#noneDiv').show();
					}
					
					function printName()  {
						  const birth = document.getElementById('birth').value;
						  document.getElementById("result").innerText = birth;
					}
					
					function memberOrder(){
				        var formData = $("#form2").serialize();

				        $.ajax({
				            cache : false,
				            url : "${pageContext.request.contextPath}/MemberOrder", // 요기에
				            type : 'POST', 
				            data : formData, 
				            success : function(data) {
				                var jsonObj = JSON.parse(data);
				            }, // success 
				    
				            error : function(xhr, status) {
				                alert(xhr + " : " + status);
				            }
				        }); // $.ajax */
				    }
					</script>
			
			</section>
            </div>
        </div>
    </body>
</html>