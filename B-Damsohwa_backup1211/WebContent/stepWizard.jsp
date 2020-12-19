<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script src="jquery.js"></script> 
    <script src="jquery.steps.js"></script>
</head>
<body>
    <script>
        $("#wizard").steps();
    </script>
        <div id="wizard"></div>
        <div id="wizard">
    <h1>First Step</h1>
    <div>First Content</div>
 
    <h1>Second Step</h1>
    <div>Second Content</div>
</div>

	// Initialize wizard
	var wizard = $("#wizard").steps();
 
	// Add step
	wizard.steps("add", {
    title: "HTML code", 
    content: "<strong>HTML code</strong>"
	});

</body>
</html>