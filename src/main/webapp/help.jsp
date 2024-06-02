<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Center</title>
<%@include file="all_component/allCSS.jsp"%>
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
    background-color: #f8f9fa;
}

.container {
    margin-top: 50px;
    margin-bottom: 50px;
}

.help-section {
    margin-bottom: 40px;
}

.help-section h4 {
    margin-bottom: 20px;
    font-weight: bold;
    color: #343a40;
}

.accordion .card-header {
    cursor: pointer;
    background-color: #007bff;
    color: white;
}

.accordion .card-header:hover {
    background-color: #0056b3;
}

.accordion .btn-link {
    color: white;
    text-decoration: none;
}

.accordion .btn-link:hover {
    text-decoration: none;
}

.contact-form input,
.contact-form textarea {
    margin-bottom: 15px;
}

.contact-form .form-control {
    border-radius: 0.25rem;
}

.contact-form .btn-primary {
    background-color: #007bff;
    border-color: #007bff;
}

.contact-form .btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
}
</style>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container">
        <!-- FAQ Section -->
        <div class="row help-section">
            <div class="col-md-8 offset-md-2">
                <h4><i class="fas fa-question-circle"></i> Frequently Asked Questions</h4>
                <div class="accordion" id="faqAccordion">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    How can I sell a book?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#faqAccordion">
                            <div class="card-body">
                                To sell a book, go to the 'Sell Book' page, fill in the required details, and submit the form. You will receive a confirmation once your book is listed.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    How do I track my order?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                            <div class="card-body">
                                You can track your order by logging into your account and navigating to the 'My Orders' section. You will find the tracking details there.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    What is the return policy?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faqAccordion">
                            <div class="card-body">
                                Our return policy allows you to return books within 30 days of purchase. Please visit our 'Return Policy' page for more details.
                            </div>
                        </div>
                    </div>
                    <!-- Add more FAQ items as needed -->
                </div>
            </div>
        </div>

        <!-- Contact Form Section -->
        <div class="row help-section">
            <div class="col-md-8 offset-md-2">
                <h4><i class="fas fa-envelope"></i> Contact Us</h4>
                <form class="contact-form">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <%@include file="all_component/footer.jsp"%>

    <!-- Bootstrap JS (if not already included in allCSS.jsp) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
