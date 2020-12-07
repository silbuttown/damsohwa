<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align = "center">

<script type="text/javascript">
	function content2(){
		location.href ="/TaskTop_ing/content2.do";

	}
	function content3(){
		location.href = "/TaskTop_ing/content3.do";		
	}
</script>
<fieldset>
<% 
TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>

<h1>--- TaskTop ---</h1>
<br>
<div id= "clock" style ="color:gray;">00:00</div>

<a href = "/TaskTop_ing/contentT.do?num=<%=dto.getEMP_NO()%>"><%=dto.getEMP_NAME()%>님 환영합니다.</a>
<br>

<input type = button value = "나의 파트너" onclick="content3()">

<input type = button value = "전원제어" >
<input type = button value = "커피" name ="coffe" onclick="content2()">
<input type = submit value = "안마기" name = "massage">
<input type = submit value = "자리확인" name = "exist" >

</fieldset>
<script type="text/javascript">

let clock = document.getElementById("clock");
function showTime(){
	
	let today = new Date();	
	let month = today.getMonth();
	let day = today.getDay();
	let hours = today.getHours();
	let minutes = today.getMinutes();
	let seconds = today.getSeconds();
	
	clock.innerHTML = addzero(hours)+":"+addzero(minutes)+":"+addzero(seconds);
	console.log(clock);
};
function addzero(num) {

	if(num < 10) { num = "0" + num; }

		return num;

}

function setTimer(){
	   let today = new Date();
	   let minutes = today.getMinutes();
	   let seconds = today.getSeconds();
	   console.log(minutes+" "+seconds);
	   if(minutes==29&&seconds==30){
	      let check = confirm("근무시작 50분이 경과했습니다!! 스트레칭을 하시겠습니까??")
	      if(check == true){
	         location.href ="https://youtu.be/0n2ItsCmLtw";
	      }
	   }
	}

	function init(){
	   setTimer();
	   showTime();
	   setInterval(showTime,1000);
	   setInterval(setTimer,1000);
	};
	init();
</script>
</body>
</html>