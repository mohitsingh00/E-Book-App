<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Settings</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a.hover {
	text-decoration: none;
}

body {
	background-color: #f7f7f7;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.container {
	flex: 1;
}

.card {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.3);
	transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
	overflow: hidden;
}

.card:hover {
	transform: translateY(-7px);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.card-body {
	padding: 20px;
}

.card-body h4 {
	margin-top: 10px;
	font-size: 1.2rem;
	color: #333;
}

.card-body p {
	color: #666;
}

.card-body .text-primary {
	color: #303f9f;
}

.card-body .text-danger {
	color: #d32f2f;
}

.card-body .text-green {
	color: #388e3c;
}

.card-body .text-purple {
	color: #7b1fa2;
}

.card-body .text-teal {
	color: #00796b;
}

footer {
	margin-top: auto;
}
h3.text-center {
    font-size: 1.8em;
    font-weight: bold;
    color: #212121;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    margin-bottom: 20px;
}
</style>
</head>
<body>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<h3 class="text-center mt-4">Hello, ${userobj.name}</h3>
		<div class="row p-4">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card mt-3 p-1">
						<div class="card-body text-center">
							<div class="text-green">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Books</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card mt-3 p-1">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Old Books</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card mt-3 p-1">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-user-pen fa-3x"></i>
							</div>
							<h4>Edit Profile</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 mt-3">
				<a href="order.jsp">
					<div class="card mt-3 p-2">
						<div class="card-body text-center">
							<div class="text-purple">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 mt-3">
				<a href="help.jsp">
					<div class="card mt-3 p-2">
						<div class="card-body text-center">
							<div class="text-teal">
								<i class="fa-solid fa-circle-user fa-3x"></i>
							</div>
							<h4>Help Center</h4>
							<p>24x7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>