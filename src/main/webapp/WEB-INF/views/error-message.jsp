<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<%@include file="partials/header.jsp"%>
	<div class="card text-white bg-danger mb-3" style="max-width: 25rem; margin: 50px auto;" align="center">
		<div class="card-header">Error</div>
		<div class="card-body">
			<p class="card-text">${message }</p>
		</div>
	</div>
</body>
</html>