<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #303f9f"></div>
<div class="container-fluid  p-3 bg-light">
	<div class="row align-items-center">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book"></i> Ebooks
			</h3>
		</div>
		<div class="col-md-6 d-flex justify-content-center">
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search" style="width: 220px;">
				<button class="btn btn-primary" type="submit">Search</button>
			</form>
		</div>

		<div class="col-md-3 d-flex justify-content-end align-items-center">
			<c:if test="${not empty userobj}">
				<a href="checkout.jsp" class="me-3"><i
					class="fa-solid fa-cart-plus fa-2x"></i></a>
				<a href="login.jsp" class="btn btn-success me-2"><i
					class="fa-solid fa-circle-user"></i> ${userobj.name}</a>
				<a href="logout" class="btn btn-primary"><i
					class="fa-solid fa-right-to-bracket"></i> Logout</a>
			</c:if>

			<c:if test="${empty userobj}">
				<a href="login.jsp" class="btn btn-success me-2"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a>
				<a href="register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i> Register</a>
			</c:if>
		</div>
	</div>
</div>

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
				<li class="nav-item active"><a class="nav-link active"
					aria-current="page" href="index.jsp">Home</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="all_recent_book.jsp"><i class="fa-solid fa-book-open"></i>
						Recent Book</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="all_new_book.jsp"><i class="fa-solid fa-book-open"></i>
						New Book</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i>
						Old Book</a></li>
			</ul>
			<form class="d-flex">
				<div style="margin-right: 10px;">
					<a href="setting.jsp" class="btn btn-light" type="submit">
						<i class="fa-solid fa-gear"></i> Setting
					</a>
				</div>
				<div>
					<button class="btn btn-light" type="submit">
						<i class="fa-solid fa-square-phone"></i> Contact Us
					</button>
				</div>
			</form>
		</div>
	</div>
</nav>