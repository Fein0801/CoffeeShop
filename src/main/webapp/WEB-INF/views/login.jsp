<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<%@include file="partials/header.jsp"%>
	<form action="check-login">
		<div class="card text-white bg-dark mb-3"
			style="max-width: 25rem; margin: 50px auto;" align="center">
			<div class="card-header">Log In</div>
			<p class="card-text">
				Email:<br>
				<input type="email" name="email" id="email_field" placeholder="someone@example.com" required>
			</p>
			<p class="card-text">
				Password:<br>
				<input type="password" name="password" id="password_field_1" class="pw" required>
			</p>
			<input class="btn btn-primary" type="submit" name="Log In" style="max-width: 100px;">
			<p class="card-text">${message}<br></p>
		</div>
	</form>
</body>
</html>