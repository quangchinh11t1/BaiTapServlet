<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Trang Chu</title>
</head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
div {
	margin: auto;
	width: 50%;
	margin-top:100px;
}
form {
	margin:auto;
	margin-top:10px;
	border: 3px solid #f1f1f1;
	width: 50%;
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


</style>
<body>
	<div>
		<form action="DangKy" method="get">		
			<button type="submit">dang ky</button>		
	 	</form>
	
	 	<form action="DangNhap" method="get">		
			<button type="submit">dang nhap</button>		
	 	</form>
	</div>
	
</body>
</html>