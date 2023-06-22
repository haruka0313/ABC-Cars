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


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>



	<%@ include file="header.jsp"%>

	<div class="container my-4 snap-container">
  <section class="p-3">
    <div class="container">
      <div class="row align-items-center justify-content-between">
          <div class="col-md p-5">
            <h2 class="fw-bold mb-2 display-2">About Us</h2>
<p style="font-size: 2 rem;">
At ABC Car Portal, we offer a wide range of services to help you find the perfect car for your needs. Whether you're looking to buy a new or used car, we have a variety of options to choose from. Our team of experienced professionals can help you navigate the car buying process and find the right car for your budget and lifestyle. 
In addition to car sales, we also offer car financing options to help make your purchase more affordable. We work with a variety of lenders to find the best rates and terms for your individual needs. 
We offer a full range of services, from routine oil changes and tire rotations to more complex repairs.  
</p>
          </div>
          <div class="col-md">
            <img src="images/about-us.jpg" class="img-fluid rounded" style="width: 975px; height: 675px">
          </div>
      </div>
    </div>
  </section>
  </div>

	<%@ include file="footer.jsp"%>
</body>
</html>
