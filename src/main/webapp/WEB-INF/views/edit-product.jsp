<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editing Item #${product.id}</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<form action="/add-to-db">
	<input type="hidden" name="id" value="${product.id}">
	<div class="card text-white bg-dark mb-3" style="max-width: 25rem; margin: 50px auto;" align="center">
			<div class="card-header">Edit Item #${product.id}</div>
			<div class="card-body">
					<p class="card-text">
						Name:<br><input type="text" name="name" value="${product.name}">
					</p>
					<p class="card-text">
						Quantity:<br><input type="number" name="qty" value="${product.qty}">
					</p>
					<p class="card-text">
						Description:<br><input type="text" name="description" value="${product.description}">
					</p>
					<p class="card-text">
						Price:<br><input type="text" name="price" value="${product.price}">
					</p>
				<br>
				<p>
					<input class="btn btn-primary" type="submit" value="Commit Changes" style="max-width: 150px;"><br>
				</p>
				<p>
					<a href="/products" style="max-width: 100px;" class="btn btn-danger">Cancel</a>
				</p>
			</div>
		</div>
	</form>
</body>
</html>