<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DANGER</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<div class="card text-white bg-warning mb-3" style="max-width: 25rem; margin: 50px auto;" align="center">
		<div class="card-header">Delete Product</div>
		<h4 class="card-title">Warning</h4>
		<p class="card-text">
			Are you sure you want to delete that product?
		</p>
		<div style="padding: 0px 20px;">
			<a href="/delete?id=${productID}" class="btn btn-success">Yes</a>
			<a href="/products" class="btn btn-danger">No</a>
		</div>
		<br>
	</div>
</body>
</html>