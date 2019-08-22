<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<%@include file="partials/header.jsp"%>

	<form action="say-hello" method="post">
		<div class="card text-white bg-dark mb-3" style="max-width: 25rem; margin: 50px auto;" align="center">
			<div class="card-header">Register</div>
			<div class="card-body">
				<fieldset>
					<h4 class="card-title">General Info</h4>
					<p class="card-text">
						First Name:<br><input type="text" name="firstName" id="first_name_field" placeholder="John" required>
					</p>
					<p class="card-text">
						Last Name:<br><input type="text" name="lastName" id="last_name_field" placeholder="Smith" required>
					</p>
					<p class="card-text">
						Email:<br><input type="email" name="email" id="email_field" placeholder="someone@example.com" required>
					</p>
					<p class="card-text">
						Phone #:<br><input type="text" name="phone" id="phone_field" placeholder="(555)-555-5555" required>
					</p>
					<p class="card-text">
						Password:<br><input type="password" name="password" id="password_field_1" class="pw" required>
					</p>
					<p class="card-text">
						Confirm Password:<br><input type="password" name="password-confirm" id="password_field_2" class="pw"
							oninput="check('password_field_1', 'password_field_2')" required>
					</p>
					<p class="card-text">
						<input type="checkbox" id="show-password" onclick="showPassword()">Show Password
					</p>
				</fieldset>
				<fieldset>
					<h4 class="card-title">More Info</h4>
					<p class="card-text">
						<label for="gender">Gender:</label><br>
						<input type="radio" name="gender" value="male" checked>Male<br>
						<input type="radio" name="gender" value="female">Female<br>
						<input type="radio" name="gender" value="other">Other<br>
					</p>
					<p class="card-text">
						Admin Password:<input type="password" name="admin_pass">
					</p>
				</fieldset>
				<br>
				<input class="btn btn-primary" type="submit" name="Submit" style="max-width: 100px;">
			</div>
		</div>
	</form>

	<script type="text/javascript" src="script.js"></script>
</body>
</html>