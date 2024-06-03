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
body {
	background-color: #f0f2f2;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

.container {
	flex-grow: 1;
}

/* Additional CSS for table and footer */
.table-striped {
	border: 1px solid #ddd;
	border-radius: 10px;
}

.table thead th {
	font-weight: bold;
	text-align: center;
	vertical-align: middle;
}

.table tbody td {
	text-align: center;
	vertical-align: middle;
}

.table tbody tr:hover {
	background-color: #f1f1f1;
}

}

.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	text-align: center;
	background-color: #303f9f;
}

h3.text-center.mt-4 {
	font-family: 'Montserrat', sans-serif;
	font-size: 2rem;
	color: #303f9f;
	text-shadow: 1px 1px 2px #aaa;
	letter-spacing: 1px;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<h3 class="text-center mt-4">
		<b>All Books</b>
	</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<table class="table table-striped table-hover">
		<thead class="bg-primary text-white">
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
					class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i>
						Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 285px"><%@include file="footer.jsp"%></div>
</body>
</html>