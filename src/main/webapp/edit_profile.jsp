<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
.form-group {
	margin-bottom: 20px; /* Adjust the margin as needed */
}

.card {
	margin-top: 30px; /* Add margin to the top of the card */
}
</style>
</head>
<body style="background-color: #f0f2f2">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Edit Profile</h4>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<form action="updateProfile" method="post">
							<input type="hidden" value="${userobj.id}" name="id">
							<div class="mb-3">
								<label for="exampleInputName" class="form-label">Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname"
									value="${userobj.name}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="email" value="${userobj.email}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Mobile
									Number</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="phno" value="${userobj.phno}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Address</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="address"
									value="${userobj.address}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Landmark</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required"
									name="landmark" value="${userobj.landmark}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">City</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="city"
									value="${userobj.city}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">State</label>
								<input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="state" value="${userobj.state}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Pincode</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="pincode" value="${userobj.pincode}">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary btn-center">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>