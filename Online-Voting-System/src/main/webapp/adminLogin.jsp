<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="en">
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title> Admin Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css\style.css">
<style>
.form-container{
	width: 70%;
    height: 80%;
    display: block;
    justify-content: center;
    background-color: #1C2833;
    border-radius: 5px;
    margin-left: 10%;
    margin-top: 100px;
    padding-top: 10%;
    padding-left: 0px;
    padding-bottom: 5%;
    padding-right: 0px;
    color: #ECF0F1;
    background-image: url(https://img.freepik.com/free-vector/decorative-tricolor-indian-flag-theme-texture_1055-7757.jpg?w=740&t=st=1669658679~exp=1669659279~hmac=3086e4c…);
    background-size: cover;
    background-repeat: no-repeat;
}
.form-elements{
	font-size:20px;
	margin-top:10px;
	margin-bottom:10px;
	border:3px;
	border-radius:7px;
	border-color:#F39C12;
	height:50px;
	}
h1{
    font-weight:bold;
	margin-bottom:10px;
	margin-top:10px;
	text-decoration:underline;
	}
.form-label{
    color: #273746;
    margin-bottom: 0px;
    margin-top: 5px;
    font-size: 20px !important;
}
</style>

</head>
<%@ include file= "navbar.jsp" %>
<body>
   <div class="row">
	<div class="col-sm-6 text-center">
		<img src="https://img.freepik.com/free-vector/global-data-security-personal-data-security-cyber-data-security-online-concept-illustration-internet-security-information-privacy-protection_1150-37336.jpg?w=740&t=st=1669895177~exp=1669895777~hmac=356bbde1dbfe10efe6b3f57b60af460a19a13b84d70dc7d2235558920222994a" alt="adminLogin" width="600">
	</div>
	<div class="col-sm-6 text-center">
	     <div class="form-container " >
            <form action="adminLogin" method="post">
			<h3>     ADMIN LOGIN     </h3>
			<label for="name" class="form-elements form-label"><b>Name</b></label>
			<br>
			<input name="adminName" id="name" class="form-elements form-input" type="text" placeholder="Enter Your Name"/>
			<br>
			<label for="password" class="form-elements form-label"><b>Password</b></label>
			<br>
			<input name="password" id="password" class="form-elements form-input" type="password" placeholder="Enter passsword"/>
			<br>
			<button type="Submit" class="form-elements form-button">LOGIN</button>
			<br>
			</form>
         </div>
	</div>
</div>
</body>
</html>