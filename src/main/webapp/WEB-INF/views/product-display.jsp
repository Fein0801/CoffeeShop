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
	<form action="search-products-by-name" method="post">
		<h1 class="text-white">Search by name</h1>
		<input type="text" placeholder="Name" name="itemName" value="${nameInput}">
		<input type="submit" value="Search" class="btn btn-primary">
		<c:if test="${not empty nameInput}">
			<a href="search-products-by-name" class="btn btn-primary">Clear</a>
		</c:if>
	</form>
	<h1 class="text-white">Our products</h1>
	<table class="table table-hover">
		<thead>
			<tr style="background-color: white;">
				<th>Name</th>
				<th>Price</th>
				<th>Description</th>
				<th>Quantity</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${productList}">
				<tr class="table-primary">
					<td>${item.name }</td>
					<td>$${item.price }</td>
					<td>${item.description }</td>
					<td>${item.qty }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

</body>
</html>