<%@page import="DSHModel.DSHinfoVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib"> 
    <meta name="keywords" content="Colorlib Templates">
    
    <!-- Title Page-->
    <title>주문하기</title>
    <script type="text/javascript">
    function trans(){
    	document.g
    	
    }
    </script>
    <script src = "./JS/jquery-3.5.1.min.js"></script>
    
    <!-- Custom-Files -->
	<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
	
	<!-- banner slider -->
	<link rel="stylesheet" href="css/style3.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<!-- <link rel="stylesheet" type="text/css" href="css/style4.css"> -->
	

    <!-- Icons font CSS-->
   <!--  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"> -->
    <!-- <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"> -->
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    

    <!-- Vendor CSS-->
    <!-- <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"> -->
    <!-- <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"> -->

    <!-- Main CSS-->
    <!-- <link href="css/main3.css" rel="stylesheet" media="all"> -->
    
    <link rel="stylesheet" href="dsh/dshjumoon.css">
    <link rel="stylesheet" type="text/css" href="css/main.css?1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/style2.css">
	<link href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" rel="stylesheet">
    
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <!-- jquery slide -->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main3.css">
        <link rel="stylesheet" href="css/jquery.steps.css">
        <script src="lib/modernizr-2.6.2.min.js"></script>
        <script src="lib/jquery-1.9.1.min.js"></script>
        <script src="lib/jquery.cookie-1.3.1.js"></script>
        <script src="build/jquery.steps.js"></script>
        
    <script type="text/javascript" src="<c:url value="script/jquery-3.2.1.min.js"/>"></script>
	
	<script>
	function checkRow(event) {
 		//document.getElementById('damsohwa').innerHTML = event + document.getElementById('damsohwa').innerHTML;
		document.getElementById('damsohwa').value = event;
		document.getElementById("plant").innerText = event;
		var event_test = event;
		alert(event_test + ' "next 버튼을 눌러주세요"');
	}
	</script>
	</head>
	<body>
		<%
			DSHinfoVO ivo = (DSHinfoVO)session.getAttribute("ivo");
		%>
    	
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- 네비게이션 바 시작 -->
		<header style="padding:0 !important;" "class="header-style fixed-top">
			<div class="container">
				<div class="header d-lg-flex justify-content-between align-items-center">
					
					<!-- 네비게이션 바 로고 -->
					<h1 class="logo text-center" class="fa fa-pagelines" aria-hidden="true">
						<a href="DamHome.jsp"><img src="images/damsohwaLogo.png" alt="My Image" width="80" height="110" style = "padding:1;"></a>
					</h1>
					<!-- 네비게이션 바 로고 끝 -->
					
					<!-- 네비게이션 바 -->
					<div class="dshnav_w3ls" style="height: 100px;">
						<nav style="padding-top:60px;" class="dshnav">
							<label for="drop" class="toggle toogle-2">Menu</label>
							<input type="checkbox" id="drop"/>
							<ul class="menu">
								<li><a href="DamHome.jsp" class="smooth-scroll">HOME</a></li>
								<li><a href="DamHome.jsp#testi" class="smooth-scroll"></a></li>
								<li><a href="DamHome.jsp#video-intro" class="smooth-scroll"></a></li>
								<li><a href="DamHome.jsp#services" class="smooth-scroll"></a></li>
								
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
							<%if(ivo!=null) { %>
								<li><a href="Logout">로그아웃</a></li>
							<%}else { %>
								<li><a href="DamLogin.jsp">로그인</a></li>
							<%} %>
							</ul>
						</nav>
					</div>
					<!-- 네비게이션 바 -->
				</div>
			</div>
		</header>
		<!-- 네비게이션 바 끝 -->
		<div class="body-order">
		<header>
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">설문하기</h2>
                </div>
            </div>
        </header>

        <div class="content">
        <!-- 드랍다운 메뉴 시작 -->
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
			<%int flora = 0;
			int crop = 0;
			int glue = 0;
			String plant = "";
			String plant1txt = "";
			String plant2txt = "";
			String plant1img = "";
			String plant2img = "";
			%>
            <div class="wizard" id="wizard">
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
                                    <input type="radio" id="flora" name="radio1" value="꽃" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">열매
                                    <input type="radio" id="crop" name="radio1" value="열매" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">기타
                                    <input type="radio" id="glue" name="radio1" value="기타" onchange="setDisplay()">
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
                                    <input type="radio" id="glue2" name="radio2" value="시원" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">따뜻
                                    <input type="radio" id="floracrop2" name="radio2" value="따뜻" onchange="setDisplay()">
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
                                    <input type="radio" id="floracrop3" name="radio3" value="잘한다" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">잘 못 돌본다
                                    <input type="radio" id="glue3" name="radio3" value="못한다" onchange="setDisplay()">
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
                                    <input type="radio" id="flora4" name="radio4" value="꽃" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">열매
                                    <input type="radio" id="crop4" name="radio4" value="열매" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">허브
                                    <input type="radio" id="glue4" name="radio4" value="허브" onchange="setDisplay()">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">나무
                                    <input type="radio" id="glue5" name="radio4" value="나무" onchange="setDisplay()"> <!-- 자바스크립트로 선택되는 값 계산하여 결과내기 -->
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    <script>
                    function setDisplay(){
                        if($('input:radio[id=flora]').is(':checked')){
                            <%plant = "flora";
                        	plant1txt = "수국";
                        	plant1img = "images/flor1.png";
                        	plant2txt = "장미허브";
                        	plant2img = "images/flor2.png";%>
                            <%System.out.println(plant);%>
                            <%System.out.println(plant1txt);%>
                            <%System.out.println(plant2txt);%>
                        }else if($('input:radio[id=crop,crop4]').is(':checked')){
                        	<%plant = "crop";
                    		plant1txt = "방울토마토";
                    		plant1img = "images/crop1.jpg";
                        	plant2txt = "상추";
                        	plant2img = "images/crop2.png";%>
                        	<%System.out.println(plant);%>
                            <%System.out.println(plant1txt);%>
                            <%System.out.println(plant2txt);%>
                        }else if($('input:radio[id=glue,glue2,glue3,glue4,glue5]').is(':checked')){
                        	<%plant = "glue";
                    		plant1txt = "장미허브";
                    		plant1img = "images/flor2.png";
                        	plant2txt = "방울토마토";
                        	plant2img = "images/crop1.png";%>
                        	<%System.out.println(plant);%>
                            <%System.out.println(plant1txt);%>
                            <%System.out.println(plant2txt);%>
                        }else{
                        	<%plant1txt = "수국";
                        	plant1img = "images/flor1.png";
                        	plant2txt = "상추";
                			plant2img = "images/crop2.png";%>
                            <%System.out.println(plant1txt);%>
                            <%System.out.println(plant2txt);%>
                        }
                    }

                    </script>
                </section>

                <h2>화분선택</h2> <!-- 테스트용. 서블릿에서 데이터 받아오도록 변형 예정/ 화분 4step로 넘기기 -->
                <section>
				<div class="dshselect flex-container">
					<div class="flex-item">
							<div class="dsh-order-card">
								<div class="dshcard-body">
									<div class="clearfix">
										<div style="text-align: center;">
    										<img class="plant-img" style="width: 50%; height: 50%;  align: center;" id="plant1" src=<%=plant1img%>>
											<h3 id="label1"><%=plant1txt%></h3><br>
										</div>
									</div>
									<div class="b-b-1 pt-3"></div>
									<hr class="dshhr">
									<div class="more-info pt-2"><br>
											<button type="button"
												class="dshbtn btn-outline-pr dshbtn-lg dshbtn-block" id="btnSelect1" name="btnSelect1" value=<%=plant1txt%> onClick="checkRow(this.value);">
												선택하기</button><br>
									</div>
								</div>
							</div>
					</div>
					<div class="flex-item">
							<div class="dsh-order-card">
								<div class="dshcard-body">
									<div class="clearfix">
										<div style="text-align: center;">
    										<img class="plant-img" style="width: 50%; height: 50%;  align: center;" id="plant2" src=<%=plant2img%>>
											<h3 id="label2"><%=plant2txt%></h3><br>
										</div>
									</div>
									<div class="b-b-1 pt-3"></div>
									<hr class="dshhr">
									<div class="more-info pt-2"><br>
											<button type="button"
												class="dshbtn btn-outline-pr dshbtn-lg dshbtn-block" id="btnSelect2" name="btnSelect2" value=<%=plant2txt%> onClick="checkRow(this.value);">
												선택하기</button><br>
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
                                </select><br><br>
                                
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
                          </div>
                          
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
						</script>
                </section>

                <h2>주문하기</h2>
                <section>
                
                <form id="form2" name="form2" method="post">
                
                <!-- 선택 담소화 이미지 -->
					
                <div class="dshplant label">
                    <input style="width:100%;height:30px;border:1px;" type="hidden" id="damsohwa" name="damsohwa" value=" "><label id="plant"></label>
                </div><br><br>
				<!-- /선택 담소화 이미지 -->
				
                <%
                	Calendar cal = Calendar.getInstance();
                %>
				<div class="label">
					<div class="">담소화의 생일은 <%=cal.get(Calendar.MONTH)+1%><%=cal.get(Calendar.DATE)%>  (<%=cal.get(Calendar.MONTH)+1%>월 <%=cal.get(Calendar.DATE)%>일) 입니다.</div>
					<br>
					<div class="">벗의 생일은 언제인가요? (예: 0101 _ 월일을 4자리 숫자로 입력해주세요)</div>
				</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="wrap-input100 validate-input">
								<span>
									<input style="border: none !important;" class="input100" type="text" name="birth" id='birth' maxlength="4" onkeyup='printName(this)'/></span>
								</div>
						</div>
					</div>
				
				<div class="" id="noneDiv" style="display:none;">
					<div class="dsh-serial">
					<div class="name">[ 일련번호 ]</div><br>
					<div style="font-size: 20px; font-weight: 700;">
					<span id='result'></span><%=cal.get(Calendar.MONTH)+1%><%=cal.get(Calendar.DATE)%>
					</div>
					<br><br>
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
				</div><br><br>

				<div class="form-row m-b-55">
					<div class="name">성함</div>
					<div class="value">
						<div class="row row-space">
							<div class="col-2">
								<div class="wrap-input100 validate-input input-group-desc">
									<input style="border: none !important;" class="input100" type="text" id="user" name="user">
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
								<div class="wrap-input100 validate-input input-group-desc">
									<input style="border: none !important;" class="input100" type="text" id="tel" name="tel">
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
								<div class="wrap-input100 validate-input input-group-desc">
									<input style="border: none !important;" class="input100" type="text" id="addr" name="addr">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
					<script>
					$('#damsohwa').on('change', function(){
						$('#damsohwa1').html($('#damsohwa').val());
					});
					
					function printName(textbox)  {
						const birth = document.getElementById('birth').value;
						if(textbox.value.length == 4) {
							$('#noneDiv').show();
							document.getElementById("result").innerText = birth;
							document.getElementById("user").focus();
						}
					}
						  
					$.fn.steps.defaults.onFinished = function (event, currentIndex) {
						const birth = document.getElementById('birth').value;
	                	var formData1 = $("#form1").serialize();

				        $.ajax({
				            cache : false,
				            url : "${pageContext.request.contextPath}/MemberInfo", // 요기에
				            type : 'POST', 
				            data : formData1, 
				            dataType: "json",
				            success : function(data) {
				                var jsonObj = JSON.parse(data);
				                sessionStorage.setItem('info',data);
				            }, // success 
				    
				            error : function(xhr, status) {
				                alert(xhr + " : " + status);
				            }
				        }); // $.ajax */
				        
				        var formData2 = $("#form2").serialize();

				        $.ajax({
				            cache : false,
				            url : "${pageContext.request.contextPath}/NewMember", // 요기에
				            type : 'POST', 
				            data : formData2, 
				            dataType: "json",
				            success : function(data) {
				                var jsonObj = JSON.parse(data);
				            }, // success 
				    
				            error : function(xhr, status) {
				                alert(xhr + " : " + status);
				            }
				        }); // $.ajax */
				        
	                	$(location).attr("href", "DamOrder_done.jsp?birth="+birth);
	                }
					</script>
			
			</section>
            </div>
            <!-- footer -->
		<footer class="text-center">
			<div class="container py-xl-5" style="background-image: url(images/flowerbg.jpg) no-repeat bottom;">
			
				<div class="w3l-copy text-center">
					<p class="text-da">건강한 당신의 삶을 응원합니다.</p><br>
					<div class="contact-left-footer">
					<ul>
					<li>
						<p>
							<i class="fa fa-map-marker mr-2"></i>광주광역시 남구 송암로 60
						</p>
					</li>
					<li class="mx-4">
						<p>
							<i class="fa fa-phone mr-2"></i>062-655-3509
						</p>
					</li>
					<li>
						<p class="text-wh">
							<i class="fa fa-envelope-open mr-2"></i>
							<a href="mailto:info@example.com">Damsohwa@gmail.com</a>
						</p>
					</li>
					</ul>
					</div>
				</div><br>
				<!-- //address -->
			
				<!-- copyright -->
				<div class="w3l-copy text-center">
				<p class="text-da">© 2021 Damsohwa. All rights reserved.
				</p>
				</div>
				<!-- //copyright -->
			</div>
		</footer>
		<!-- //footer -->
        </div>
        </div>
    </body>
</html>