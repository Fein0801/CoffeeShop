<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.slogan {
	
}
</style>
<header>
	<!-- Duplicate navbar code -->
	<div class="awesome">
		<div class="row">
			<div class="col-lg-6">
				<h1 style="color: white; text-shadow: 3px 3px black; padding: 23px 25px;">
					Uncle Ben's Coffee Co.
				</h1>
			</div>
			<div class="col-lg-6">
				<h4 style="color: white; text-shadow: 1px 1px black; padding: 35px 25px;" align="right">With great coffee comes great reliability.</h4>
			</div>
		</div>
		
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="<%=request.getContextPath()%>/">Home</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="register-selection">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Register</button>
			</form>
		</div>
	</nav>
</header>