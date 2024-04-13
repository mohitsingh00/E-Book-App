<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.heading {
	font-size: 60px;
	position: absolute; /* Position the text absolutely */
	top: 29%; /* Place the text vertically centered */
	left: 46%; /* Place the text horizontally centered */
	transform: translate(-50%, -50%); /* Center the text precisely */
	white-space: nowrap;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h1 class="text-center text-white heading">
			<i class="fa-solid fa-book"></i> E-Book Management System
		</h1>
	</div>
	
	<!-- Start Recent Book -->
	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/C.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>C Programming</p>
						<p>Shimpy Goyal</p>
						<p>Categories:New</p>
						<div class="button-container">
							<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/C.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>C Programming</p>
						<p>Shimpy Goyal</p>
						<p>Categories:New</p>
						<div class="button-container">
							<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/C.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>C Programming</p>
						<p>Shimpy Goyal</p>
						<p>Categories:New</p>
						<div class="button-container">
							<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/C.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>C Programming</p>
						<p>Shimpy Goyal</p>
						<p>Categories:New</p>
						<div class="button-container">
							<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
	<!-- End Recent Book -->






</body>
</html>