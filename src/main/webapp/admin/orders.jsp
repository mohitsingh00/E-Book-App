<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookOrder"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Orders</title>
<%@include file="allCSS.jsp"%>
<style>
.container {
	width: 100%; /* Ensure the container takes up most of the width */
	max-width: 1700px; /* Maximum width for large screens */
	margin: 0 auto; /* Center the container */
}

.card-custom {
	width: 100%;
}

.table {
	margin: 20px 0;
}
.table tr {
	text-align: center;
}
.table tbody tr:hover {
	background-color: #f1f1f1;
}

footer {
	background-color: #343a40;
	color: white;
	padding: 10px 0;
	position: fixed;
	width: 100%;
	bottom: 0;
	text-align: center;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container mt-3">
		<div class="card shadow mt-4">
			<div class="card-header bg-primary text-white text-center">
				<h4>Your All Books</h4>
			</div>
			<div class="card-body">
				<table class="table table-hover mt-3">
					<thead>
						<tr>
							<th scope="col">Oder ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Address</th>
							<th scope="col">Phone</th>
							<th scope="col">Book Name</th>
							<th scope="col">Author</th>
							<th scope="col">Price</th>
							<th scope="col">Payment Type</th>
						</tr>
					</thead>
					<tbody>
						<%
						BookOrderImpl dao = new BookOrderImpl(DBConnect.getCon());
						List<BookOrder> blist = dao.getAllOrder();
						for (BookOrder b : blist) {
						%>
						<tr>
							<th scope="row"><%=b.getOrderId()%></th>
							<td><%=b.getUsername()%></td>
							<td><%=b.getEmail()%></td>
							<td><%=b.getFullAddress()%></td>
							<td><%=b.getPhno()%></td>
							<td><%=b.getBookName()%></td>
							<td><%=b.getAuthor()%></td>
							<td><%=b.getPrice()%></td>
							<td><%=b.getPaymentType()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div style="margin-top: 300px"><%@include file="footer.jsp"%></div>
</body>
</html>