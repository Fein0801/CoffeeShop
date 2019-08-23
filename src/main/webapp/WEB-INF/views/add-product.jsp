<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new product</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<form action="/add-to-db">
	<div class="card text-white bg-dark mb-3" style="max-width: 25rem; margin: 50px auto;" align="center">
			<div class="card-header">Add Product</div>
			<div class="card-body">
					<p class="card-text">
						Name:<br><input type="text" name="name">
					</p>
					<p class="card-text">
						Quantity:<br><input type="number" name="qty">
					</p>
					<p class="card-text">
						Description:<br><input type="text" name="description">
					</p>
					<p class="card-text">
						Price:<br><input type="text" name="price">
					</p>
				<br>
				<p>
				<input class="btn btn-primary" type="submit" value="Add Item" style="max-width: 100px;"><br>
				</p>
				<p>
					<a href="/products" style="max-width: 100px;" class="btn btn-danger">Cancel</a>
				</p>
			</div>
		</div>
	</form>
</body>
</html>