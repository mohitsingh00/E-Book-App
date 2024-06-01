<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

footer {
    margin-top: auto;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<h3 class="text-center mt-3">Hello, Jack</h3>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Books</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h4>Login & Security</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4 mt-3">
				<a href="user_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-solid fa-location-dot fa-3x"></i>
							</div>
							<h4>Location</h4>
							<p>Edit Address</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4 mt-3">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4 mt-3">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
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