<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
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
						<form>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputName" class="form-label">Name</label> <input
										type="text" class="form-control" id="inputName">
								</div>
								<div class="col-md-6">
									<label for="inputEmail" class="form-label">Email</label> <input
										type="email" class="form-control" id="inputEmail">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputPhone" class="form-label">Phone</label> <input
										type="number" class="form-control" id="inputPhone">
								</div>
								<div class="col-md-6">
									<label for="inputAddress" class="form-label">Address</label> <input
										type="text" class="form-control" id="inputAddress">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputLandmark" class="form-label">Landmark</label>
									<input type="text" class="form-control" id="inputLandmark">
								</div>
								<div class="col-md-6">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" class="form-control" id="inputCity">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputState" class="form-label">State</label> <input
										type="text" class="form-control" id="inputState">
								</div>
								<div class="col-md-6">
									<label for="inputPinCode" class="form-label">Pin Code</label> <input
										type="number" class="form-control" id="inputPinCode">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-12">
									<label for="inputPaymentMode" class="form-label">Payment
										Mode</label> <select id="inputPaymentMode" class="form-select">
										<option selected>Choose...</option>
										<option>Cash on Delivery</option>
									</select>
								</div>
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-warning me-2">Order Now</button>
								<a href="" class="btn btn-success">Continue Shopping</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>