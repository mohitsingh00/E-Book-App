<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook Register</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
body {
    background-color: #f0f1f2;
    font-family: Arial, sans-serif;
}

.container {
    margin-top: 20px;
}

.card {
    border: none;
    border-radius: 10px;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}

.card-body {
    padding: 40px;
}

.card-body h4 {
    margin-bottom: 30px;
    text-align: center;
    color: #303f9f;
}

.form-label {
    font-weight: bold;
    color: #333;
}

.form-control {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
}

.form-check-label {
    color: #333;
}

.text-center {
    text-align: center;
}
</style>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container p-3">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4>Sign Up</h4>

                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success">${succMsg }</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty failedMsg }">
                            <p class="text-center text-danger">${failedMsg }</p>
                            <c:remove var="failedMsg" scope="session" />
                        </c:if>

                        <form action="register" method="post">
                            <div class="mb-3">
                                <label for="exampleInputName" class="form-label">Name</label> <input
                                    type="text" class="form-control" id="exampleInputName"
                                    aria-describedby="emailHelp" required="required" name="fname">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email
                                    address</label> <input type="email" class="form-control"
                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                    required="required" name="email">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputMobile" class="form-label">Mobile
                                    Number</label> <input type="tel" class="form-control"
                                    id="exampleInputMobile" aria-describedby="emailHelp"
                                    required="required" name="phno">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input type="password" class="form-control"
                                    id="exampleInputPassword1" required="required" name="password">
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input"
                                    id="exampleCheck1" name="check"> <label
                                    class="form-check-label" for="exampleCheck1">Agree
                                    Terms and Condition</label>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
