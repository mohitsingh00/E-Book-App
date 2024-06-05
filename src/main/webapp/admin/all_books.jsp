<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Books"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCSS.jsp"%>
<style>
.container {
	width: 100%; /* Ensure the container takes up most of the width */
	max-width: 1600px; /* Maximum width for large screens */
	margin: 0 auto; /* Center the container */
}

.card-custom {
	width: 100%;
}

.table td {
	text-align: center;
	vertical-align: middle;
}

.table tr {
	text-align: center;
}

.table-hover tbody tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
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
				<h4>Your All Books</h4>
			</div>
			<div class="card-body">
				<table class="table table-hover mt-3">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Image</th>
							<th scope="col">Book Name</th>
							<th scope="col">Author</th>
							<th scope="col">Price</th>
							<th scope="col">Categories</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
						List<Books> list = dao.getAllBooks();
						for (Books b : list) {
						%>
						<tr>
							<td><%=b.getBookID()%></td>
							<td><img src="../books/<%=b.getPhotoName()%>"
								style="width: 50px; height: 65px;"></td>
							<td><%=b.getBookName()%></td>
							<td><%=b.getAuthor()%></td>
							<td><%=b.getPrice()%></td>
							<td><%=b.getBookCategory()%></td>
							<td><%=b.getStatus()%></td>
							<td><a href="edit_books.jsp?id=<%=b.getBookID()%>"
								class="btn btn-sm btn-primary"><i
									class="fa-solid fa-pen-to-square"></i> Edit</a> <a
								href="../delete?id=<%=b.getBookID()%>"
								class="btn btn-sm btn-danger"><i
									class="fa-solid fa-trash-can"></i> Delete</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px"><%@include file="footer.jsp"%></div>
</body>
</html>