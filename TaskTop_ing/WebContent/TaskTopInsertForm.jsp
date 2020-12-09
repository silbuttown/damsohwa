<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TaskTop 사원추가</title>
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
</head>

<body  id = "loginformBody">

<script type="text/javascript">
	function TaskTopInsert(){
		location.href = "/TaskTop_ing/insert.do";
		
	}
</script>

<div class="box">
	<form action = "/TaskTop_ing/insert.do" method = "post">
	
	<span class="text-center">사원추가</span>
	
	<div class="input-container">
		부서명<input type="text" name = "deptName" autocomplete ="off">
	</div>
	
	<div class="input-container">
		직급<input type="text" name = "position" autocomplete ="off">
	</div>
	
	<div class="input-container">
		이름<input type="text" name = "name" autocomplete ="off">
	</div>
	
	<div class="input-container">		
		아이디<input type="text" name = "id" autocomplete ="off">
	</div>
	
	<div class="input-container">		
		비밀번호<input type="text" name = "pw" autocomplete ="off">
	</div>
	
		<button type="submit" class="btn" style="width:100%; height:100%; background-color: #2dca98">등록하기</button>
	</div>
</body>
</html>