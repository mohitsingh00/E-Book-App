<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
body {
	background-color: #f0f2f2;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.container {
	margin-top: 40px;
}

.form-group {
	margin-bottom: 20px; /* Adjust the margin as needed */
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	font-weight: 600;
}

.form-control {
	border-radius: 5px;
	border: 1px solid #ccc;
	padding: 10px;
}

.form-control:focus {
	border-color: #303f9f;
	box-shadow: 0 0 5px rgba(48, 63, 159, 0.2);
}

.card {
	border-radius: 5px;
	box-shadow: 0 6px 9px rgba(0, 0, 0, 0.2);
	margin-top: 30px;
}

.card-body {
	padding: 30px;
}

.card-body h4 {
	font-size: 1.5rem;
	margin-bottom: 20px;
}

.text-success, .text-danger {
	margin-bottom: 20px;
}
h4.text-center.text-primary {
    font-size: 1.8em;
    font-weight: bold;
    color: #007bff;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    margin-bottom: 20px;
    position: relative;
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
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Sell Old Books</h4>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="add_old_book" method="post"
							enctype="multipart/form-data">
							<input type="hidden" value="${userobj.email}" name="user">
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

							<div class="form-group text-center">
								<!-- Move the button below the file input -->
								<button type="submit" class="btn btn-primary">Sell Now</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>