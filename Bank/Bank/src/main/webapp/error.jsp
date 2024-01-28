<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction</title>
<link rel="stylesheet" type="text/css" href="home.css">
<script>
function refreshPage(){
    window.location.reload();
} 
</script>
<style>
.monitor h1{
	text-align:center;
	margin-left:25%;
	margin-top:10%;

}

</style>
</head>
<body>
	<div class="header">
		<h1 class="bank">AASTU-Bank</h1>
		<div class="right">
		<img src="images/online.png">
		<a href="http://localhost:8080/login">Logout</a>
		</div>
	</div>
	<div class="monitor">
	<h1>UNABLE TO PERFORM TRANSACTION</h1>
	
	</div>
</body>
</html>