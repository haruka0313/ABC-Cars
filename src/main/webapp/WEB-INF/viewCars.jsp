<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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


	<div class="container-fluid p-0">
		<sec:authorize access="hasRole('Users')">
		<div class="jumbotron jumbotron-fluid position-relative" style="background-image: url('images/banner-homepage.jpg'); background-size: cover; background-position: center; height: 500px;">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-md-8 mx-auto text-center position-absolute top-50 start-50 translate-middle">
                <h1 class="display-4 fw-bold mt-5 mb-4 text-white">Welcome to ABC Car Portal</h1>
                <p class="lead display-2 fw-semibold mb-5 text-white" style="font-size: 1.5rem;">Get ready to save big on your next car purchase with our incredible selection of local deals.
                Whether you're a first-time buyer or a seasoned car enthusiast, ABC Car Portal has everything you need to make your next car purchase a success.
                </p>
            </div>
        </div>
    </div>
</div>

			<!-- post car link-->
			<div class="row p-3 mb-5" style="background-color: #394867;">
				<div class="col-5">
					<p class="text-white fw-bold"
						style="margin-bottom: 0px; font-weight: bolder;">Sell Your Car
						Today!</p>
					<h3 class="text-white" "style="margin-bottom: 0px;">Sell Your Car
						in a click with Us</h3>
				</div>
				<div class="col-4"></div>
				<div class="col col-lg-2" style="text-align: end; margin: auto;">
						<button type="button" class="btn btn-outline-light rounded-pill btn-lg" data-bs-toggle="modal"
							data-bs-target="#exampleModal">Sell Now</button>
							
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true"
						role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<h5 class="modal-title text-center" id="exampleModalLabel">Sell Your
										Car Today!</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<c:if test="${success_post != null}">
										<div class="alert alert-success">${success_post}</div>
									</c:if>

									<!-- Car Post Form -->
									<sf:form action="car_post" method="post" class="was-validated"
										modelAttribute="car" enctype="multipart/form-data">
										<div class="mb-3 mt-3">
											<label for="name" class="d-flex form-label">Name:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter car name" name="name" path="name"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="model" class="d-flex form-label">Model:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter model" name="model" path="model"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="price" class="d-flex form-label">Price
												(RM):</label>
											<sf:input type="text" class="form-control" id="price"
												placeholder="Enter car price" name="price" path="price"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="make" class="d-flex form-label">Make
												Year:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter make year" name="make" path="make"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="registeration" class="d-flex form-label">Registration
												Date:</label>
											<sf:input type="text" class="form-control" id="registeration"
												placeholder="Enter registeration date" name="registeration"
												path="registeration" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label class="d-flex form-label">Photo:</label> <input
												type="file" class="form-control" name="fileImage" id="photo"
												accept="image/png, image/jpeg" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>

										<div class="holder"
											style="height: 300px; width: 300px; margin: auto;">
											<img id="imgPreview" src="#" alt="image preview"
												style="width: inherit;" />
										</div>
										<button type="submit" class="btn btn-primary d-block w-100 text-center">Post</button>
									</sf:form>
									<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
									<!-- Car Post Form -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			
			<!-- Our Services -->
			<div class="container my-4 snap-container">
  <section class="p-3">
    <div class="container">
      <div class="row align-items-center justify-content-between">
          <div class="col-md p-5">
            <h2 class="fw-bold mb-2 display-3">Our Services</h2>
<p class="lead">
At ABC Car Portal, we offer a wide range of services to help you find the perfect car for your needs. Whether you're looking to buy a new or used car, we have a variety of options to choose from. Our team of experienced professionals can help you navigate the car buying process and find the right car for your budget and lifestyle. 
In addition to car sales, we also offer car financing options to help make your purchase more affordable.
</p>
          </div>
          <div class="col-md">
            <img src="images/landing-page.jpeg" class="img-fluid rounded">
          </div>
      </div>
    </div>
  </section>
  </div>
		</sec:authorize>
		<!-- post car link-->

<sec:authorize access="hasRole('Administrator')">
		<div class="jumbotron jumbotron-fluid position-relative" style="background-image: url('images/banner-homepage.jpg'); background-size: cover; background-position: center; height: 500px; margin-bottom: 50px">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-md-8 mx-auto text-center position-absolute top-50 start-50 translate-middle">
                <h1 class="display-4 fw-bold mt-5 mb-4 text-white">Welcome Admin to ABC Car Portal</h1>
                <p class="lead display-2 fw-semibold mb-5 text-white" style="font-size: 1.5rem;">Get ready to save big on your next car purchase with our incredible selection of local deals.
                Whether you're a first-time buyer or a seasoned car enthusiast, ABC Car Portal has everything you need to make your next car purchase a success.
                </p>
            </div>
        </div>
    </div>
</div>
</sec:authorize>

		<!-- list of all cars posted -->
		<div class="row justify-content-center gap-5">
		<h1 class="display-3 fw-bold mt-2 mb-4 text-center mb-2">Featured Cars</h1>
  <c:forEach items="${cars}" var="c">
    <c:set var="id" value="${c.id}"></c:set>
    <c:if test="${success_post == null}">
      <c:if test="${c.sellStatus != 'sold'}">
        <div class="col-12 col-md-6 col-lg-4">
          <div class="card">
            <img class="card-img-top" src="${c.photoImagePath}" alt="${c.photos}">
            <div class="card-body">
              <h4 class="card-title">${c.name}</h4>
              <p class="card-text">
                <i class="fas fa-tags"></i>&nbsp;RM ${c.price}
              </p>
              <!--<a href="#" class="btn"
              style="background-color: red; margin-right: 40px;">Book a
              Test Drive</a>-->
              <a href="/car_detail?cid=${c.id}" class="btn btn-primary d-block w-100">View Car Details</a>
            </div>
          </div>
        </div>
      </c:if>
    </c:if>
  </c:forEach>
  <c:if test="${success_post != null}">
    <div class="alert alert-success col-12">${success_post}
      Click here to <a href="/car_detail?cid=${id}">View</a> your car post
    </div>
  </c:if>
</div>
		<!-- list of all cars posted -->
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>