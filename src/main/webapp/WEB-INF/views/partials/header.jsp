<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<!-- Duplicate navbar code -->
	<div class="awesome">
		<div class="row">
			<div class="col-lg-6">
				<h1
					style="color: white; text-shadow: 3px 3px black; padding: 23px 25px;">
					Uncle Ben's Coffee Co.</h1>
			</div>
			<div class="col-lg-6">
				<h4
					style="color: white; text-shadow: 1px 1px black; padding: 35px 25px;"
					align="right">With great coffee comes great drinkability.</h4>
			</div>
		</div>

	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="<%=request.getContextPath()%>/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/products">Products</a>
				</li>
			</ul>
			<div style="padding: 0px 10px;">
				<a class="btn btn-secondary" href="/login-page">Log In</a> 
			</div>
			<div>
				<a class="btn btn-secondary" href="/register-selection">Register</a>
			</div>
		</div>
	</nav>
</header>