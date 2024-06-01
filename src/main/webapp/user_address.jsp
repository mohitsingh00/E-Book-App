<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row mt-4">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Address</h4>
						<form action="" method="post" enctype="multipart/form-data">
						<div class="row mb-3">
								<div class="col-md-6">
									<label for="inputAddress" class="form-label">Address</label> <input
										type="text" class="form-control" id="inputAddress">
								</div>
								<div class="col-md-6">
									<label for="inputLandmark" class="form-label">Landmark</label>
									<input type="text" class="form-control" id="inputLandmark">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-4">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" class="form-control" id="inputCity">
								</div>
								<div class="col-md-4">
									<label for="inputState" class="form-label">State</label> <input
										type="text" class="form-control" id="inputState">
								</div>
								<div class="col-md-4">
									<label for="inputPinCode" class="form-label">Pin Code</label> <input
										type="number" class="form-control" id="inputPinCode">
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>