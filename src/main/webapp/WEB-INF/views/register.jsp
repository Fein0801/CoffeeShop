<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP" crossorigin="anonymous">
</head>
<body>
	<form action="say-hello" method="post">
		<fieldset name="General Info">
			<!-- First Name -->
			<div class="row">
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
				<div class="col-lg-3">First Name:</div>
				<div class="col-lg-3">
					<input type="text" name="firstName" id="first_name_field" placeholder="John">
				</div>
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
			</div>
			<br>
			<!-- Last Name -->
			<div class="row">
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
				<div class="col-lg-3">Last Name:</div>
				<div class="col-lg-3">
					<input type="text" name="lastName" id="last_name_field" placeholder="Smith">
				</div>
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
			</div>
			<br>
			<!-- Email -->
			<div class="row">
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
				<div class="col-lg-3">Email:</div>
				<div class="col-lg-3">
					<input type="email" name="email" id="email_field" placeholder="someone@example.com">
				</div>
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
			</div>
			<br>
			<!-- Phone -->
			<div class="row">
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
				<div class="col-lg-3">Phone #:</div>
				<div class="col-lg-3">
					<input type="text" name="phone" id="phone_field" placeholder="(555)-555-5555">
				</div>
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
			</div>
			<br>
			<!-- Password -->
			<div class="row">
				<div class="col-lg-3">
				</div>
				<div class="col-lg-3">Password:</div>
				<div class="col-lg-3">
					<input type="password" name="password" id="password_field_1" class="pw">
				</div>
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
			</div>
			<br>
			<!-- Confirm Password -->
			<div class="row">
				<div class="col-lg-3">
					<!-- Y U No work? -->
				</div>
				<div class="col-lg-3">Confirm Password:</div>
				<div class="col-lg-3">
					<input type="password" name="password-confirm" id="password_field_2" class="pw" oninput="check('password_field_1', 'password_field_2')">
				</div>
				<div class="col-lg-3"><input type="checkbox" id="show-password" onclick="showPassword()"> Show Password</div>
			</div>
			<br>
		</fieldset>
		
		<fieldset name="Gender">
			<label for="gender">Gender:</label><br>
			<input type="radio" name="gender" value="male" checked>Male<br>
			<input type="radio" name="gender" value="female">Female<br>
			<input type="radio" name="gender" value="other">Other<br>
		</fieldset>
		<input type="submit" name="Submit">
	</form>
	
	<script type="text/javascript" src="script.js"></script>
</body>
</html>