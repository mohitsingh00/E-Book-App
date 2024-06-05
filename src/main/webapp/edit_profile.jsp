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
body {
	background-color: #f0f2f2;
}

.container {
	margin-top: 30px;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	padding-bottom: 70px;
}

.card {
	width: 150%;
	max-width: 800px;
	margin-top: 20px;
	border: none;
	box-shadow: 0 6px 9px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
}

.card-body {
	padding: 20px;
}

h4.text-center.text-primary {
	font-size: 1.8em;
	font-weight: bold;
	color: #007bff;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	position: relative;
}

.form-group {
	margin-bottom: 20px; /* Adjust the margin as needed */
}

.form-label {
	font-weight: bold;
	color: #333;
}

.form-control {
	border-radius: 5px;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	border: 1px solid #ccc;
	transition: border-color 0.3s;
}

.form-control:focus {
	border-color: #007bff;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>
</head>
<body>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-2">
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
							<div class="mb-3 form-group">
								<label for="exampleInputName" class="form-label">Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname"
									value="${userobj.name}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="email" value="${userobj.email}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">Mobile
									Number</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="phno" value="${userobj.phno}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">Address</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="address"
									value="${userobj.address}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">Landmark</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required"
									name="landmark" value="${userobj.landmark}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">City</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="city"
									value="${userobj.city}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">State</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="state"
									value="${userobj.state}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputEmail1" class="form-label">Pincode</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="pincode" value="${userobj.pincode}">
							</div>
							<div class="mb-3 form-group">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary btn-center"><b>Save</b></button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>