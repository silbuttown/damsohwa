<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TaskTop</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
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
<body id = "loginformBody">

<div class="box">
	<form action = "/TaskTop_ing/login.do" method = "post">
		<span class="text-center">login</span>
		<label style="text-align: center; color:red; font-size: 16px;">다시 입력해주세요.</label>
	<div class="input-container">
		
		ID<input type="text" name = "id">
	</div>
	<div class="input-container">		
		Password<input type="text" name = "pw">
	</div>
		<button type="submit" class="btn" style="width:100%; height:100%; background-color: #2dca98">Login</button>
	</form>	
	</div>
</body>
</html>