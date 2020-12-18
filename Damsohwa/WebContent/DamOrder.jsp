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
    
    <script type="text/javascript" src="<c:url value="/resource/js/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript">

</head>

<body>

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
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 드랍다운 메뉴 끝 -->
                        <div class="form-row p-t-20">
                            <label class="label label--block">성별</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">여자
                                    <input type="radio" checked="checked" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">남자
                                    <input type="radio" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">현재 지내는 곳의 환경</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">비교적 춥다
                                    <input type="radio" checked="checked" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">비교적 덥다
                                    <input type="radio" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">주기적으로 드시는 약이 있나요?</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">있다
                                    <input type="radio" checked="checked" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">없다
                                    <input type="radio" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">주문하기</button>
                            <!-- 주문하기를 누르면 db에 저장 => DamOrder_done으로 이동 -->
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