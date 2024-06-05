<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Login</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
body {
	background-color: #f0f1f2;
	font-family: Arial, sans-serif;
}

.container {
	margin-top: 50px;
}

.card {
	border: none;
	border-radius: 10px;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}

.card-body {
	padding: 40px;
}

.card-body h3 {
	margin-bottom: 30px;
	text-align: center;
	color: #303f9f;
}

.form-label {
	font-weight: bold;
	color: #333;
}

.form-control {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
}

.text-center {
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3>Login</h3>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<form action="login" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="email">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button>
								<br> <br> <a href="register.jsp"
									class="btn btn-success btn-sm ml-1">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
