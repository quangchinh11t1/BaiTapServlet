<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>
</head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
form {
	margin:auto;
	margin-top:200px;
	border: 3px solid #f1f1f1;
	width: 50%;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.container {
  padding: 16px;
}

</style>
<body>
	<form action="ChiTiet" method="post">
		<div class="container">
			<label ><b>Username</b></label>
			<input type="text" placeholder="Enter Username" name="userName"	>
			
			<label ><b>Password</b></label>
	    	<input type="password" placeholder="Enter Password" name="passWord" >
	    	
	    	<button type="submit">Login</button>
		</div>
 	</form>
</body>
</html>