<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.Books"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<table class="table table-striped">
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
					class="btn btn-sm btn-primary">Edit</a> <a href="delete?id=<%=b.getBookID() %>"
					class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 285px"><%@include file="footer.jsp"%></div>
</body>
</html>