<%@page import="java.util.*"%>
<%@page import="com.entity.Books"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old Books</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.card {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 6px 9px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}
.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 9px 18px rgba(0, 0, 0, 0.2);
	transition: transform 0.3s, box-shadow 0.3s;
}
.card-body {
    padding: 20px;
}
.card-body img {
	width: 100%;
	height: auto;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-4">
			<%
			BooksDAOImpl dao3 = new BooksDAOImpl(DBConnect.getCon());
			List<Books> list3 = dao3.getAllOldBook();
			for (Books b : list3) {
			%>
			<div class="col-md-3">
				<div class="card mt-3">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 140px; height: 190px" class="img-thumblin">
						<p class="mt-1">
							<b><%=b.getBookName()%></b>
						</p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="button-container">
							<a href="view_books.jsp?bid=<%=b.getBookID()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <span
								class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%>
							</span>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>