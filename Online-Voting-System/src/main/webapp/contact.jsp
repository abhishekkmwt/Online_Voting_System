<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>contact us</title>
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
    margin-left: 15%;
    margin-right: 15%;
    margin-top: 50px;
    padding-top: 2%;
    padding-left: 30px;
    padding-bottom: 2%;
    padding-right: 30px;
    color: #ECF0F1;
    background-image: url(https://img.freepik.com/free-vector/decorative-tricolor-indian-flag-theme-texture_1055-7757.jpg?w=740&t=st=1669658679~exp=1669659279~hmac=3086e4c636285c32f1324a46ae12f4ce751e6106fdd89c49d84650eaaab012b5);
    background-size: cover;
    background-repeat: no-repeat;
}
.form-elements{
	font-size:20px;
	margin-left:10%;
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
.form-button{
  margin-left:35%;
}
.form-label{
    color: #273746;
    margin-bottom: 0px;
    margin-top: 5px;
    font-size: 20px !important;
}
</style>
</head>

<body>
<nav class="navnbar navbar-expand-lg">
  <div class="container">
	     <ul class="navbar-nav justify-content-end">
		      <li class="nav-item">
		        <a class="nav-link" href="index.jsp">HOME</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="aboutus.jsp">ABOUT</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link active" href="contact.jsp">CONTACT</a>
		      </li>
	     </ul>
  </div>
  </nav>
       <h1 class="text-center">CONTACT US</h1>
<div class="form-container" >
		<form action="Contact" method="post">
		    <label for="name" class="form-elements form-label"><b>Name :</b></label>
			<br>
			<input id="name" name="name" class="form-elements form-input" type="text" placeholder="Enter Your Name"/>
			<br>
			<label for="number" class="form-elements form-label"><b>Mobile Number :</b></label>
			<br>
			<input id="number" name="number" class="form-elements form-input" type="number" placeholder="Enter Your Mobile Number"/>
			<br>
			<label for="email" class="form-elements form-label"><b>Email :</b></label>
			<br>
			<input id="email" name="email" class="form-elements form-input" type="email" placeholder="Enter Your Email Id" />
			<br>
			<label for="comment" class="form-elements form-label"><b>Comments :</b></label>
			<br>
			<textarea id="comment" name="comment" class="form-elements form-input" style="height: 171px;"></textarea>
			<br>
			<button type="Submit" class="form-elements form-button text-center">Submit</button>
		</form>
</div>
</body>
</html>