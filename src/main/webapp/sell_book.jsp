<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
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
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center text-primary">Sell Old Books</h4>
						<form action="" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="bname">
							</div>

							<div class="form-group">
								<label for="exampleInputName">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="author">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Price*</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									required="required" name="price">
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1" class="mb-2">Upload
									Photo</label>
								<div class="input-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="exampleFormControlFile1" required="required" name="bimg">
									</div>
								</div>
							</div>

							<div class="form-group">
								<!-- Move the button below the file input -->
								<button type="submit" class="btn btn-primary">Sell</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>