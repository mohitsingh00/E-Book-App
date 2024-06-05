<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
.container {
    text-align: center;
    margin-top: 50px;
}
.card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    padding: 30px;
    max-width: 600px;
    margin: 0 auto;
}
.card-icon {
    color: #28a745;
    font-size: 5rem;
}
.card-title {
    margin-top: 20px;
    font-size: 2rem;
}
.card-message {
    margin-top: 10px;
    font-size: 1.2rem;
}

</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	 <div class="container">
        <div class="card">
            <i class="fa-solid fa-circle-check card-icon"></i>
            <h1 class="card-title">Thank You</h1>
            <h2 class="card-message">Your Order was Successful!</h2>
            <p class="card-message">Your product will be delivered within 7 days to your address.</p>
            <a href="index.jsp" class="btn btn-primary mt-3">Home</a>
            <a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
        </div>
    </div>
</body>
</html>