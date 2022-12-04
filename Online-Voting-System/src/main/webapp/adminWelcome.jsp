<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css\style.css">
<%@ include file="adminNavbar.jsp"%> 
<style>
.form-container{
	width: 50%;
    height: 80%;
    display: block;
    justify-content: center;
    background-color: #1C2833;
    border-radius: 5px;
    margin-left: 25%;
    margin-right: 25%;
    margin-top: 50px;
    padding-top: 15%;
    padding-bottom: 15%;
    padding-right: 30px;
    color: #ECF0F1;
    background-image: url(https://img.freepik.com/free-vector/decorative-tricolor-indian-flag-theme-texture_1055-7757.jpg?w=740&t=st=1669658679~exp=1669659279~hmac=3086e4c636285c32f1324a46ae12f4ce751e6106fdd89c49d84650eaaab012b5);
    background-size: cover;
    background-repeat: no-repeat;
    text-align:center;
}
.form-container a{
     font-size:30px;
     font-weight:bold;
}
</style>
</head>
<body>
	<div class="form-container">
        <div>
		<a href="checkresult.jsp" >Check Result</a>
		<br>
		<br>
		<a href="register.jsp" >New Register</a>
		</div>
	</div>
</body>
</html>