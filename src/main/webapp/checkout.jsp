<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
/* Hide arrows in number input fields */
input[type=number]::-webkit-outer-spin-button, input[type=number]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

input[type=number] {
	-moz-appearance: textfield;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success text-center" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container">
		<div class="row p-4">
			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Items</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DBConnect.getCon());
								List<Cart> cart = dao.getBookByUser(u.getId());
								Double totalPrice = 0.00;
								for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
								%>
								<tr>
									<th scope="row"><%=c.getBookName()%></th>
									<td><%=c.getAuthor()%></td>
									<td><%=c.getPrice()%></td>
									<td><a
										href="removeBook?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid()%>"
										class="btn btn-danger">Remove</a></td>
								</tr>
								<%
								}
								%>
								<tr>
									<td>Total Price</td>
									<td></td>
									<td></td>
									<td><%=totalPrice%></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<form action="orderServlet" method="post">
							<input type="text" value="${userobj.id}" name="id">
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputName" class="form-label">Name</label> <input
										type="text" class="form-control" id="inputName"
										value="<%=u.getName()%>" name="username">
								</div>
								<div class="col-md-6">
									<label for="inputEmail" class="form-label">Email</label> <input
										type="email" class="form-control" id="inputEmail"
										value="<%=u.getEmail()%>" name="email">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputPhone" class="form-label">Phone</label> <input
										type="number" class="form-control" id="inputPhone"
										value="<%=u.getPhno()%>" name="phno">
								</div>
								<div class="col-md-6">
									<label for="inputAddress" class="form-label">Address</label> <input
										type="text" class="form-control" id="inputAddress"
										name="address">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputLandmark" class="form-label">Landmark</label>
									<input type="text" class="form-control" id="inputLandmark"
										name="landmark">
								</div>
								<div class="col-md-6">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" class="form-control" id="inputCity" name="city">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputState" class="form-label">State</label> <input
										type="text" class="form-control" id="inputState" name="state">
								</div>
								<div class="col-md-6">
									<label for="inputPinCode" class="form-label">Pin Code</label> <input
										type="number" class="form-control" id="inputPinCode"
										name="pincode">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-12">
									<label for="inputPaymentMode" class="form-label">Payment
										Mode</label> <select id="inputPaymentMode" class="form-select"
										name="paymentType">
										<option value="noselect">Choose...</option>
										<option value="COD">Cash on Delivery</option>
									</select>
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-warning me-2">Order
									Now</button>
								<a href="index.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>