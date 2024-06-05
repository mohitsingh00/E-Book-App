<%@page import="com.entity.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User: Old Books</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
.container {
	width: 100%; /* Ensure the container takes up most of the width */
	max-width: 1500px; /* Maximum width for large screens */
	margin: 0 auto; /* Center the container */
	padding-bottom: 40px;
}

.card-custom {
	width: 100%;
}

.table-hover tbody tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<div class="container mt-3">
		<c:if test="${not empty succMsg }">
			<div class="alert alert-success text-center">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<c:if test="${not empty failedMsg }">
			<div class="alert alert-danger text-center">${failedMsg}</div>
			<c:remove var="failedMsg" scope="session" />
		</c:if>

		<div class="card shadow mt-4">
			<div class="card-header bg-primary text-white text-center">
				<h4>Your Old Books</h4>
			</div>
			<div class="card-body">
				<table class="table table-hover mt-3">
					<thead>
						<tr>
							<th scope="col">Book Name</th>
							<th scope="col">Author</th>
							<th scope="col">Price</th>
							<th scope="col">Category</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						User u = (User) session.getAttribute("userobj");
						String email = u.getEmail();
						BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
						List<Books> list = dao.getBookByOld(email, "Old");
						for (Books b : list) {
						%>
						<tr>
							<td><%=b.getBookName()%></td>
							<td><%=b.getAuthor()%></td>
							<td><%=b.getPrice()%></td>
							<td><%=b.getBookCategory()%></td>
							<td><a
								href="delete_old_book?em=<%=email%>&&id=<%=b.getBookID()%>"
								class="btn btn-danger">Delete</a></td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>