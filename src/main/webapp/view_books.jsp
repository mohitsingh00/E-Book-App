<%@page import="com.entity.User"%>
<%@page import="com.entity.Books"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Details</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
body {
	background-color: #f7f7f7;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.card {
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	padding: 15px;
	margin-bottom: 20px;
	transition: transform 0.3s;
}

.card-container {
	display: flex;
	justify-content: space-between;
}

.card {
	width: calc(50% - 10px); 
	margin-bottom: 20px;
}

@media ( max-width : 768px) {
	.card {
		width: 100%;
	}
}

.book-image {
	height: 150px;
	width: 110px;
	object-fit: cover;
	margin-bottom: 20px;
}

footer {
	margin-top: auto;
}
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>

	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
	Books b = dao.getBooksByID(bid);
	%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 text-center card mb-4 mr-md-4">
				<div class="card-content mt-3">
					<img src="books/<%=b.getPhotoName()%>" alt="<%=b.getBookName()%>"
						class="book-image">
					<h4>
						Book Name: <span class="text-success"><%=b.getBookName()%></span>
					</h4>
					<h4>
						Author Name: <span class="text-success"><%=b.getAuthor()%></span>
					</h4>
					<h4>
						Category: <span class="text-success"><%=b.getBookCategory()%></span>
					</h4>
				</div>
			</div>
			<div class="col-md-6 text-center card mb-4">
				<h2><%=b.getBookName()%></h2>

				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<h5 class="text-primary">Contact to Seller</h5>
				<h5 class="text-primary">
					<i class="fa-solid fa-envelope"></i> Email:
					<%=b.getEmail()%></h5>
				<%
				}
				%>
				<br>
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-money-bill-wave fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Shipping</p>
					</div>
				</div>

				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i
						class="fa-solid fa-cart-shopping"></i> Continue Shopping</a> <a
						href="" class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
				</div>
				<%
				} else {
				%>
				<div class="text-center p-3">
					<%
					if (u == null) {
					%>
					<a href="login.jsp" class="btn btn-primary"><i
						class="fa-solid fa-cart-shopping"></i> Add Cart</a>
					<%
					} else {
					%>
					<a href="cart?bid=<%=b.getBookID()%>&&uid=<%=u.getId()%>"
						class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i>
						Add Cart</a>
					<%
					}
					%>
					<span class="btn btn-danger btn-sm ml-1"> <i
						class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%>
					</span> >
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>