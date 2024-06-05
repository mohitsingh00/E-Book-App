<%@page import="com.entity.BookOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Books</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
.container {
	width: 100%; /* Ensure the container takes up most of the width */
	max-width: 1500px; /* Maximum width for large screens */
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
</style>
</head>
<body style="background-color: #f0f2f2">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container mt-5">
		<div class="card shadow mt-4">
			<div class="card-header bg-primary text-white text-center">
				<h4>All Orders</h4>
			</div>
			<div class="card-body">
				<table class="table table-hover mt-3">
					<thead>
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>
				<%
				User u = (User) session.getAttribute("userobj");
				BookOrderImpl dao = new BookOrderImpl(DBConnect.getCon());
				List<BookOrder> blist = dao.getBook(u.getEmail());
				for (BookOrder b : blist) {
				%>
				<tr>
					<th scope="row"><%=b.getOrderId()%></th>
					<td><%=b.getUsername()%></td>
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
		</div></div>
	</div>
</body>
</html>