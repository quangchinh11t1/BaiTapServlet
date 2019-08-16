<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta charset="utf-8">
<link rel="stylesheet" href="https://freetuts.net/cnd/css/fontawesome/4.7.0/css/font-awesome.min.css">
<title>Chi tiet</title>
   <style type="text/css">
			.container {
			    width: 80%;
			    border-radius: 5px;
			    background-color: #f2f2f2;
			    padding: 20px;
			    margin: auto;
			}
			h2 {
				text-align: center;
			}
			.card {
			  	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			  	max-width: 300px;
			  	margin: auto;
			  	text-align: center;
			  	font-family: arial;
			  	padding: 20px;
			}

			.main {
			  	padding: 0 16px;
			}

			.main::after {
			  	color: #000;ontent: "";
			  	clear: both;
			  	display: table;
			}

			.title {
			  	color: grey;
			  	font-size: 18px;
			}

			button {
			  	border: none;
			  	outline: 0;
			  	display: inline-block;
			  	padding: 8px;
			  	color: white;
			  	background-color: #000;
			  	text-align: center;
			  	cursor: pointer;
			  	width: 100%;
			  	font-size: 18px;
			}

			
			button:hover, a:hover {
			  	opacity: 0.7;
			}
        </style>
</head>
<body>
		<div class="container">			
		    <div class="card">
			  	<img src="${avatar }"  style="width:100%">
			  	<div class="main">
			    <h1>${firstName } ${lastName }</h1>
				    <p class="title">Age : ${age } </p>
				    <p class="title">memo : ${memo } </p>
				    <input type="checkbox" name="alone" ${alone }>doc than<br>				 
				    <p><button>Contact</button></p>
			  	</div>
			</div>
		</div>
</body>
</html>