<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css\style.css">
<%@ include file="navbar.jsp"%> 

<body>
<div class="row">
	<div class="col-sm-6 text-center">
		<img src="https://img.freepik.com/free-vector/abstract-election-vote-india-background_1017-17716.jpg?w=740&t=st=1669899953~exp=1669900553~hmac=07cad643fa4d90a0af8c8ca67686584e4b08b3ced9725b304b72aa5850fb5086" alt="Voting" width="600">
	</div>
	<div class="col-sm-6 text-center">
	     <div class="form-container">
				<form action="vote" method="post" >
				
				<label for="voterNumber" class="form-elements form-label"><b>Enter your voter card number</b></label>
				<br>
				<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text" placeholder="Enter Voter ID"/>
				<br>
				
				<label for="partie" class="form-elements form-label"><b>Choose your partie</b></label>
				<br>
				<select name="partie" id="partie" class="form-elements form-input">
				<option value="NOTA">NOTA</option>
				<option value="Aam Aadmi Party">Aam Aadmi Party</option>
				<option value="BJP">BJP</option>
				<option value="BSP">BSP</option>
				<option value="Congress">Congress</option>
				<option value="CPI">CPI</option>
				</select>
				<br>
				
				<button type="Submit" class="form-elements form-button">Submit</button>
				
				</form>
       </div>
	</div>
</div>
</body>
</html>