<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="home.css">
<script>
function refreshPage(){
    window.location.reload();
} 
</script>
</head>
<body>
	<div class="header">
		<h1 class="bank">AASTU-Bank</h1>
		<div class="right">
		<img src="images/online.png">
		<h1>${uname}</h1>
		<a href="http://localhost:8080/login">Logout</a>
		</div>
	</div>
	<div class="monitor">
	 <div class="money">
	 <h1> $ Balance</h1>
	 <h1>${balance} Birr</h1>
	 </div>
	 <div class="buttons">
	  <button onClick="refreshPage()">Refresh</button>
	 <a href="http://localhost:8080/transfer" target="_blank"><button>Transfer Money</button></a>
	 </div>
	 
	</div>
</body>
</html>