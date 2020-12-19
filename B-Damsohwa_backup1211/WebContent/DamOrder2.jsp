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
    
    <!-- slide CSS -->
    <link rel="stylesheet" type="text/css" href="css/jquery.steps.css">
    
    
    
    <style>
    
    	legend{
    		color: blue;
    		font-size: 25px;
    		}
    
    </style>
    
    <script type="text/javascript" src="<c:url value="/resource/js/jquery-3.2.1.min.js"/>"></script>

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
                            <div class="name">성함</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="first_name">
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">주소</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="company">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row m-b-55">
                            <div class="name">전화번호</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="phone">
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- label의 클릭이 질문별로 되게 만들어야 합니당 -->
                        
                        
                        <legend>알맞은 담소화 찾기</legend>
                        <br>
                        <br>
                        
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
                        <div class="form-row p-t-20">
                            <label class="label label--block">식물 키우는 목적</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">관상용
                                    <input type="radio" checked="checked" name="radio1">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">공기정화
                                    <input type="radio" name="radio1">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">식용
                                    <input type="radio" name="radio1">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">좋아하는 식물 종류</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">나무 <!-- 외목대 스타일의 화분 추천 -->
                                    <input type="radio" checked="checked" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">꽃
                                    <input type="radio" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">열매
                                    <input type="radio" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">허브
                                    <input type="radio" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">작물
                                    <input type="radio" name="radio2">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">좋아하는 색상</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">빨
                                    <input type="radio" checked="checked" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">주
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">노
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">초
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">파
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">남
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">보
                                    <input type="radio" name="radio3">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">좋아하는 맛</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">고소함
                                    <input type="radio" checked="checked" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">달콤함
                                    <input type="radio" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">새콤함
                                    <input type="radio" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">매움
                                    <input type="radio" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">단백함
                                    <input type="radio" name="radio4">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <!-- 환경 선택 -->
                        <div class="form-row p-t-20">
                            <label class="label label--block">현재 지내는 곳의 환경 1</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">비교적 춥다
                                    <input type="radio" checked="checked" name="radio5">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">비교적 덥다
                                    <input type="radio" name="radio5">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">현재 지내는 곳의 환경 2</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">습하다
                                    <input type="radio" checked="checked" name="radio6">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">건조하다
                                    <input type="radio" name="radio6">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">화분선택</button>
                            <!-- 주문하기를 누르면 db에 저장 => DamOrder_done으로 이동 -->
                        </div>
                        
                        <!-- 화분선택화면 -->
                        <!-- /화분선택화면 -->
                        
                       <!--  화분선택 후 화면 -->
                        <div class="form-row p-t-20">
                            <label class="label label--block">수면시간</label>
                            <div class="p-t-15">
                                <select name="time">
                                	<option value="">기상시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=24; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                </select>
                                
                                <select name="time">
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
                                    <input type="radio" checked="checked" name="radio7" value="1" onclick="div_OnOff(this.value,'medi');">없다
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">
                                    <input type="radio" name="radio7" value="2" onclick="div_OnOff(this.value,'medi');">있다
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div id="medi" style="display:none">
                        	<div class="form-row p-t-20">
                            <label class="label label--block">약을 하루 몇 회 드시나요?</label>
                            <div class="p-t-15">
                            	 <label class="radio-container m-r-55">
                                    <input type="radio" checked="checked" name="radio8">복용횟수 선택
                                    <span class="checkmark"></span>
                                </label>
                                 <label class="radio-container m-r-55">
                                    <input type="radio" name="radio8" value="1" onclick="div1_OnOff(this.value,'mediTime');">1회
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" name="radio8" value="2" onclick="div1_OnOff(this.value,'mediTime);">2회
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container m-r-55">
                                    <input type="radio" name="radio8" value="3" onclick="div1_OnOff(this.value,'mediTime');">3회
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        	</div>
                        </div>
                        	
                        	<div id="mediTime" style="display:none">
                        	
                        		<div class="form-row p-t-20">
                            	<label class="label label--block">복용시간을 선택해 주세요</label>
                           		<div class="p-t-15">
                                	<select name="mediTake">
                                		<option value="">오전/오후</option>
                                		<option>오전</option>
                                        <option>오후</option>
                                    </select>
                                    
                                    <select name="mediTake">
                                	<option value="">시간</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=1; i<=24; i++) {%>
                                	<option value="<%=i%>"><%=i+"시"%></option>
                                	<%}%>
                                	</select>
                                
                                	<select name="mediTake">
                                	<option value="">분</option>
                                	<!-- <option disabled="disabled" selected="selected"> -->
                                	<% for(int i=0; i<=59; i++) {%>
                                	<option value="<%=i%>"><%=i+"분"%></option>
                                	<%}%>
                                	</select>
                              </div>
                        	  </div>
                          </div>
                        
						<!-- 스크립트 시작 -->
						<script>
						function div_OnOff(v,id){
							 // 라디오 버튼 value 값 조건 비교
 							if(v == "2"){
 								document.getElementById(id).style.display = ""; // 보여줌
 							}else{
 								document.getElementById(id).style.display = "none"; // 숨김
 							}
						}
						
						function div1_OnOff(v,id){
							 // 라디오 버튼 value 값 조건 비교
							if(v == "1"){
								document.getElementById(id).style.display = "";
							}else if(v == "2"){
								<% for(int i=1; i<=2; i++) {%>
								document.getElementById(id).style.display = "";
								<%}%>
							}else if(v == "3"){
								<% for(int i=1; i<=3; i++) {%>
								document.getElementById(id).style.display = "";
								<% System.out.println();
								   }%>
							}
						}
						</script>
						<!-- 스크립트 끝 -->

                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">주문하기</button>
                            <!-- 주문하기를 누르면 db에 저장 => DamOrder_done으로 이동 -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- 임시 -->
		<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">Step wizard</h4>
						<p class="mb-30">jQuery Step wizard</p>
					</div>
					<div class="wizard-content">
						<form class="tab-wizard wizard-circle wizard">
							<h5>Personal Info</h5>
							<section>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label >First Name :</label>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label >Last Name :</label>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Email Address :</label>
											<input type="email" class="form-control">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Phone Number :</label>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Select City :</label>
											<select class="custom-select form-control">
												<option value="">Select City</option>
												<option value="Amsterdam">India</option>
												<option value="Berlin">UK</option>
												<option value="Frankfurt">US</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label >Date of Birth :</label>
											<input type="text" class="form-control date-picker" placeholder="Select Date">
										</div>
									</div>
								</div>
							</section>
							<!-- Step 2 -->
							<h5>Job Status</h5>
							<section>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Job Title :</label>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Company Name :</label>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Job Description :</label>
											<textarea class="form-control"></textarea>
										</div>
									</div>
								</div>
							</section>
							<!-- Step 3 -->
							<h5>Interview</h5>
							<section>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Interview For :</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Interview Type :</label>
											<select class="form-control">
												<option>Normal</option>
												<option>Difficult</option>
												<option>Hard</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Interview Date :</label>
											<input type="text" class="form-control date-picker" placeholder="Select Date">
										</div>
										<div class="form-group">
											<label>Interview Time :</label>
											<input class="form-control time-picker" placeholder="Select time" type="text">
										</div>
									</div>
								</div>
							</section>
							<!-- Step 4 -->
							<h5>Remark</h5>
							<section>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Behaviour :</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Confidance</label>
											<input type="text" class="form-control">
										</div>
										<div class="form-group">
											<label>Result</label>
											<select class="form-control">
												<option>Select Result</option>
												<option>Selected</option>
												<option>Rejected</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Comments</label>
											<textarea class="form-control"></textarea>
										</div>
									</div>
								</div>
							</section>
						</form>
					</div>
				</div>
		<!-- /임시 -->
		
		

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="script/global.js"></script>
    
    <!-- firebase용 js -->
<script src="https://www.gstatic.com/firebasejs/8.1.2/firebase-app.js"></script>


<script src="https://www.gstatic.com/firebasejs/8.1.2/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyBlNnCTKAHgC6hwUbvNOd1P0MAqwmxr-F4",
    authDomain: "damsohwa-4d3f4.firebaseapp.com",
    databaseURL: "https://damsohwa-4d3f4-default-rtdb.firebaseio.com",
    projectId: "damsohwa-4d3f4",
    storageBucket: "damsohwa-4d3f4.appspot.com",
    messagingSenderId: "198638330389",
    appId: "1:198638330389:web:cff6d71f4d252ff661641c",
    measurementId: "G-E3SGLYZK7C"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();


//제이쿼리 
$(document).ready(function(){
  
  //가입버튼 눌렀을 때 작동하는 함수
  $(document).on('click','.join',function(){
 
    //jquery를 이용해서 입력된 값을 가져온다.  
    var email = $('#email').val();
    var password = $('#pwd').val();
    name = $('#name').val();
 
//이메일로 가입 버튼 눌렀을 때 작동되는 함수 - firebase 인증 모듈
firebaseEmailAuth.createUserWithEmailAndPassword(email, password).then(function(user) {
    
    userInfo = user;} //가입 후 callBack 함수로 생성된 유저의 정보가 user에 담겨서 넘어온다. 전역변수에 할당.

</body>
</html>