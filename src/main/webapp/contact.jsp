<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<%@include file="all_component/allCSS.jsp"%>
<style>
body {
	background-color: #f7f7f7;
	font-family: 'Arial', sans-serif;
}

.contact-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 6px 9px rgba(0, 0, 0, 0.3);
}

.contact-container h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 2rem;
	color: #303f9f;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #333;
}

.form-group input, .form-group textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 1rem;
}

.form-group input:focus, .form-group textarea:focus {
	border-color: #303f9f;
	outline: none;
}

.form-group textarea {
	resize: vertical;
}

.form-group button {
	display: block;
	width: 100%;
	padding: 10px;
	border: none;
	background: #303f9f;
	color: #fff;
	border-radius: 5px;
	font-size: 1rem;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.form-group button:hover {
	background-color: #283593;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="contact-container">
		<h2>Contact Us</h2>
		<form>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="subject">Subject:</label> <input type="text"
					id="subject" name="subject" required>
			</div>
			<div class="form-group">
				<label for="message">Message:</label>
				<textarea id="message" name="message" rows="5" required></textarea>
			</div>
			<div class="form-group">
				<button type="submit">Send Message</button>
			</div>
		</form>
	</div>
</body>
</html>
