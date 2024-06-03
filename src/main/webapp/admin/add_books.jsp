<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCSS.jsp"%>
<style>
/* Add custom styles here */
body {
	background-color: #f0f2f2;
}

.card {
	margin-top: 30px;
	border-radius: 15px; /* Add some border radius */
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
}

.card-body {
	padding: 30px;
}

.form-group label {
	font-weight: bold; /* Make labels bold */
}

.form-control {
	border-radius: 10px; /* Round corners of input fields */
	margin-bottom: 15px; /* Add spacing between each field */
}

.form-group select {
	border-radius: 10px;
	margin-bottom: 15px; /* Add spacing between each field */
}
footer {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background-color: #f8f9fa;
	text-align: center;
	padding: 10px 0;
	box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1);
}

body {
	padding-bottom: 100px; /* Adjust based on the height of your footer */
}

</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center mb-4"><b>Add Books</b></h4>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="../add_books" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="bname">
							</div>

							<div class="form-group">
								<label for="exampleInputName">Author Name</label> <input
									type="text" class="form-control" id="exampleInputName"
									required="required" name="author">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Price</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									required="required" name="price">
							</div>

							<div class="form-group">
								<label for="inputstate">Book Categories</label> <select
									class="form-control" id="inputstate" required="required"
									name="btype">
									<option selected disabled>--Select--</option>
									<option value="New">New Book</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputstate">Book Status</label> <select
									class="form-control" id="inputstate" required="required"
									name="bstatus">
									<option selected disabled>--Select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label>
								<div class="input-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="exampleFormControlFile1" required="required" name="bimg">
										<label class="custom-file-label" for="exampleFormControlFile1"></label>
									</div>
								</div>
							</div>

							<div class="form-group text-center">
								<button type="submit" class="btn btn-primary">Add Book</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 30px"><%@include file="footer.jsp"%></div>
</body>
</html>