<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Dang ky</title>
</head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
form {
	margin:auto;
	margin-top:20px;
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

span.psw {
  float: right;
  padding-top: 16px;
}

@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }

}
</style>
<body>
<!-- 	<form action="DangNhap" method="post">
		<br></br>
		username: <input type="text" name="userName"></input>
		<br></br>
		password: <input type="password" name="passWord"></input>
		<br></br>
		First Name: <input type="text" name="firstName"></input>
		<br></br>
		Last Name: <input type="text" name="lastName"></input>
		<br></br>
		Age: <input type="number" name="age" min="1" max="100">
		<br></br>
		Avatar: <input type="text" name="avatar" placeholder="link image">
		<br></br>
		Memo: <textarea rows="4" cols="50" name="memo">xin chao cac ban</textarea>
		<br></br>
		<input type="checkbox" name="alone" >doc than<br>
		<br></br>		
		<input type="submit" value="dang ky" />		
 	</form> -->
 	
 	
 	<form action="DangNhap" method="post">
		<div class="container">
			<label><b>Username</b></label>
			<input type="text" placeholder="Enter Username" name="userName" >
			
			<label><b>Password</b></label>
	    	<input type="password" placeholder="Enter Password" name="passWord" >
	    	
	    	<label><b>First Name</b></label>
	    	<input type="text" placeholder="Enter First Name" name="firstName" >
	    	
	    	<label><b>Last Name</b></label>
	    	<input type="text" placeholder="Enter Last Name" name="lastName" >
	    	
	    	<label><b>Age</b></label>
	    	<input type="number" style="width:100%; height:30px" placeholder="    Enter Age" name="age" min="1" max="100">
	    	
	    	<label><b>Avatar</b></label>
	    	<input type="text" name="avatar" placeholder="Enter link image">
	    	
	    	<label ><b>Memo</b></label>
	    	<textarea style="width:100%; " rows="4" cols="50" name="memo"></textarea>
	    	
	    	<label ><b>Doc than</b class="alone"><input type="checkbox" name="alone" ></label>
	    	
	    	
	    	<button type="submit">Dang ky</button>
		</div>
		
 	</form>
 	
 	<form action="TrangChu" method="post">
			<button type="submit">Trang Chu</button>		
	 	</form>
</body>
</html>