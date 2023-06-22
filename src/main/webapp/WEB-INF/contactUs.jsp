<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<!--  Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;800&display=swap" rel="stylesheet">


<!--  Enable Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">

<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

<style>
.contact-icon {
  font-size: 2rem;
  margin-right: 10px;
}
</style>

</head>

<body>

	<%@ include file="header.jsp"%>
<div class="container my-4">
  <div class="row align-items-center">
    <div class="col-md-6 p-5">
      <h2 class="display-2 fw-bold mb-5">Contact Us</h2>
      <p><i class="bi bi-geo-alt contact-icon"></i> Indonesia, ID</p>
      <p><i class="bi bi-phone contact-icon"></i> +00 1515151515</p>
      <p><i class="bi bi-envelope contact-icon"></i> contact@abccar.com</p>
    </div>
    <div class="col-md-6">
      <img src="images/contact-us.png" class="img-fluid rounded" alt="Contact Us Image">
    </div>
  </div>
</div>

	<%@ include file="footer.jsp"%>
</body>
</html>
