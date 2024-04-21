<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Books"%>
<%@page import="java.util.*"%>
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

.card:hover .card-body {
	background-color: #f7f7f7;
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
<body style="background-color: #f7f7f7;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>

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
			<%
			BooksDAOImpl dao2 = new BooksDAOImpl(DBConnect.getCon());
			List<Books> list2 = dao2.getRecentBook();
			for (Books b : list2) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="button-container">
							<a href="view_books.jsp?bid=<%=b.getBookID()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						Categories:
						<%=b.getBookCategory()%>
						<div class="button-container">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
								href="view_books.jsp?bid=<%=b.getBookID()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						}
						%>

					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>

		<div class="text-center mt-2">
			<a href="all_recent_book.jsp" class="btn btn-danger btn-sm">View
				All</a>
		</div>
	</div>
	<!-- End Recent Book -->

	<hr>

	<!-- Start New Book -->
	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">
			<%
			BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
			List<Books> list = dao.getNewBook();
			for (Books b : list) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="button-container">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cartservlet" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a>
							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBookID()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-2">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
	<!-- End New Book -->

	<hr>

	<!-- Start Old Book -->
	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<%
			BooksDAOImpl dao3 = new BooksDAOImpl(DBConnect.getCon());
			List<Books> list3 = dao3.getOldBook();
			for (Books b : list3) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="button-container">
							<a href="view_books.jsp?bid=<%=b.getBookID()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-2">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
	<!-- End Old Book -->

	<%@include file="all_component/footer.jsp"%>
</body>
</html>