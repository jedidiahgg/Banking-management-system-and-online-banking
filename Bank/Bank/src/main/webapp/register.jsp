<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>X-Bank</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>

<div class="container">

 <div class="box1">
 	<img src="images/logo.png" class="logo">
 	<h1>Welcome to AASTU-Bank</h1>
 	<div><img alt="" src="images/check.png"> <h2>Send and receive money with just a few clicks</h2></div>
 	<div><img alt="" src="images/check.png"> <h2>Check your balance</h2></div>
 	<div><img alt="" src="images/check.png"> <h2>Transaction history</h2></div>
 </div>

 <div class="box2">
 <h1>Register</h1>
	<form action="/register" method="post">
      <input name="uname" type="text" placeholder="User name" class="input" required autofocus><br>
      <input name="paycode" type="text" placeholder="Pay code" class="input"  required><br>
	  <input name="upass" type="password" placeholder="Password" class="input"  required><br>
	  <input type="submit" value="Register" class="submit"><br>
	</form>
 </div>
</div>

</body>
</html>