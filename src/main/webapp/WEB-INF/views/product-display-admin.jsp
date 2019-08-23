<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our products</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<%@include file="partials/header.jsp"%>
	<div class="tbl">
	<a href="/add-item" class="btn btn-primary">Add New Item</a><br>
	<p>${message}</p>
	<h1 class="text-white">Our products</h1>
	<table class="table table-hover">
		<thead>
			<tr style="background-color: white;">
				<th>#</th>
				<th>Name</th>
				<th>Price</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${productList}" varStatus="i">
				<tr class="table-primary">
					<td>${i.count}</td>
					<td>${item.name}</td>
					<td>$${item.price}</td>
					<td>${item.description}</td>
					<td>${item.qty}</td>
					<td><a href="/edit-item?id=${item.id}" class="btn btn-warning">Edit</a></td>
					<td><a href="/delete-item?id=${item.id}" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

</body>
</html>