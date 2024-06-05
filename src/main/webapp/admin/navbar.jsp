<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!-- Top Bar -->
<div class="container-fluid"
	style="height: 10px; background-color: #303f9f; font-family: sans-serif;"></div>

<!-- Header Section -->
<div class="container-fluid p-3 bg-light">
	<div class="row align-items-center">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book fa-1x"></i> <b>E-BOOK</b>
			</h3>
		</div>

		<div class="col-md-6"></div>
		<div class="col-md-3 text-end">
			<c:if test="${not empty userobj}">
				<a class="btn btn-success me-1"><i class="fa-solid fa-circle-user"></i>
					${userobj.name}</a>
					
				<button id="logoutBtn" class="btn btn-primary"
					data-bs-toggle="modal" data-bs-target="#logoutModal">
					<i class="fa-solid fa-right-to-bracket"></i> Logout
				</button>
			</c:if>
			<c:if test="${empty userobj}">
				<a href="../login.jsp" class="btn btn-success me-2"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a>
					
				<a href="../register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i> Register</a>
			</c:if>
		</div>
	</div>
</div>

<!-- Logout Modal -->
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

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp">Home</a></li>
				<!-- Add more admin-specific links here -->
			</ul>
		</div>
	</div>
</nav>
<style>
.bg-custom {
	background-color: #303f9f;
}

.navbar .nav-item:hover .nav-link {
	background-color: white;
	color: #303f9f;
}

.btn-success, .btn-primary, .btn-secondary {
	border-radius: 5px;
}

.modal-content {
	border-radius: 0.5rem;
}
</style>