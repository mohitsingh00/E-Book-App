<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCSS.jsp"%>
<style type="text/css">
  body {
        background-color: #f8f9fa;
    }
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
  .card {
        border: none;
        border-radius: 8px;
        transition: transform 0.3s ease;
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.4);
    }
    .card:hover {
        transform: scale(1.05);
    }
    .card-body i {
        margin-bottom: 15px;
         margin-top: 15px
    }
/* Sticky footer styles */
.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	background-color: #303f9f;
	color: white;
	padding: 10px 0;
}

/* Adjust footer text style */
.footer h5 {
	margin: 0;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<div class="container mt-5">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
							---------------
						</div>
					</div>
				</a>

			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
							---------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
							<h4>Orders</h4>
							---------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a data-bs-toggle="modal" data-bs-target="#logoutModal">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
							<h4>Log Out</h4>
							---------------
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="logoutModal" tabindex="-1"
		aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="logoutModalLabel">Logout
						Confirmation</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Are you sure you want to logout?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Cancel</button>
					<a href="../logout" class="btn btn-primary">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<div style="margin-top: 270px"><%@include file="footer.jsp"%></div>
</body>
</html>