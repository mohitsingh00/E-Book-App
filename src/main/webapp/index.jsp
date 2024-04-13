<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCSS.jsp" %>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.heading {
           font-size: 60px;
           position: absolute; /* Position the text absolutely */
            top: 29%; /* Place the text vertically centered */
            left: 46%; /* Place the text horizontally centered */
            transform: translate(-50%, -50%); /* Center the text precisely */
             white-space: nowrap;
        }
        
</style>
</head>
<body>
<%@include file= "all_component/navbar.jsp" %>
<div class="container-fluid back-img">
		<h1 class="text-center text-white heading"><i class="fa-solid fa-book"></i> E-Book Management System</h1>
	</div>






</body>
</html>