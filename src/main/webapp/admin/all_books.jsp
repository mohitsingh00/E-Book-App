<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>

	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="#" class="btn btn-sm btn-primary">Edit</a> <a
					href="#" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>

			<tr>
				<th scope="row">2</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="#" class="btn btn-sm btn-primary">Edit</a> <a
					href="#" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>

			<tr>
				<th scope="row">3</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="#" class="btn btn-sm btn-primary">Edit</a> <a
					href="#" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>

		</tbody>
	</table>
	<div style="margin-top: 285px"><%@include file="footer.jsp"%></div>
</body>
</html>