<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>Online Voting System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css\style.css">
</head>
<%@ include file= "navbar.jsp" %>
<body>
<div class="row">
	<div class="col-sm-6 text-center">
		<img src="https://img.freepik.com/premium-vector/crowd-indian-voters-showing-index-finger-after-voting-with-tricolor-brush-effect-election-day_1302-31473.jpg?w=740" alt="Voting" width="500">
	</div>
	<div class="col-sm-6 text-center">
	     <div class="form-container " >
            <form action="voterLogIn" method="post">
			<h3>Enter your Voter Card Number</h3>
			<label for="voterNumber" class="form-elements form-label"><b>Voter ID</b></label>
			<br>
			<input name="voterNumber" id="voterNumber" class="form-elements form-input" type="text" placeholder="Voter ID Number"/>
			<br>
			<button type="Submit" class="form-elements form-button">LOGIN</button>
			<br>
			<a href="adminLogin.jsp" class="index-a">Admin</a>
			</form>
         </div>
	</div>
</div>

</body>
</html>