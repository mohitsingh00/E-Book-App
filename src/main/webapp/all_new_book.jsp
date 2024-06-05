<%@page import="com.entity.User"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.Books"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BooksDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All New Books</title>
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

#toast {
	min-width: 300px;
	max-width: 500px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	transform: translateX(-50%);
	background: rgba(0, 0, 0, 0.8);
	padding: 15px 20px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	border-radius: 10px;
	display: flex;
	align-items: center;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
	visibility: hidden;
	opacity: 0;
	transition: visibility 0s, opacity 0.5s ease-in-out;
}


#toast.display {
	visibility: visible;
	opacity: 1;
	transition: opacity 0.5s ease-in-out;
}

#toast .toast-icon {
	margin-right: 10px;
	font-size: 20px;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body style="background-color: #f7f7f7;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<c:if test="${not empty addCart}">
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<div id="toast"><i class="fa fa-check-circle toast-icon"></i>${addCart}</div>

		<script type="text/javascript">
		
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html('<i class="fa fa-check-circle toast-icon"></i>' + content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
		showToast("${addCart}");
        </script>
		<c:remove var="addCart" scope="session" />
	</c:if>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-4">
			<%
			BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
			List<Books> list = dao.getAllNewBook();
			for (Books b : list) {
			%>
			<div class="col-md-3">
				<div class="card mt-3">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 140px; height: 180px" class="img-thumblin">
						<p class="mt-1">
							<b><%=b.getBookName()%></b>
						</p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="button-container">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookID()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a>
							<%
							}
							%>
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