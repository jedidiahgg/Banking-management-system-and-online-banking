<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="home.css">
<style type="text/css">

.monitor form input{
	width:70%;
	height:70px;
	outline:none;
	padding:1opx;
	margin:10px;
	border-radius:5px;
	font-size:32px;

}
.monitor form p{
	font-size:32px;
	font-weight:bold;
	font-family:monospace;
	color:white;
	margin-left:12%;
}
.monitor form .submit{
	background-color:green;
	color:white;
	font-size:32px;
	border:none;
}
.monitor form{
	margin-left:25%;
	margin-top:10%;

}
.hidden{
	display:none;
}
</style>
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
	<div>
	<form action="/send">
		<p>RECEIVER'S USERNAME</p><input name="uname" type="text" placeholder="Receiver's user name" required><br>
		<input name="paycode" type="text" placeholder="Sender's pay code" value=${uname} class="hidden"><br>
		<p>AMOUNT TO SEND</p><input name="balance" placeholder="Amount to send" type="number" required><br>
		<input type="submit" value="SEND" class="submit"><br>
		
	</form>
	</div>
	 </div>
</body>
</html>