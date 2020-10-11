<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="header.jsp"%>

<title>Available Cars</title>
<link rel="stylesheet" href="product.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">


</head>

<body>
	<div class="container mt-5">
		<div class="card">
			<div class="row">
				<div class="col-md-4">
					<img src="images/homeimg1.jpg" class="img-fluid">


				</div>
				<div class="col-md-5">
					<h4 class="card-title mt-3">Toyota Corolla Hybrid</h4>
					<h6 class="caption-title-sub">Start from 30$/per a day</h6>
					<hr>
					<div class="caption-text">Vivamus eget nibh. Etiam cursus leo
						vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum
						primis in faucibus orci luctus et ultrices posuere cubilia.</div>
				</div>

				<div class="col-md-3">

					<span class="car-details-price">
						<h2 class="">
							<small>&nbsp; </small>
						</h2>
						<h2>
							<small>LKR</small> 18,753 <br>
						</h2> <span>LKR 2,679 X 7</span>
					</span>

					<div class="clearfix"></div>

					<br> <a href="AddCustomerDetails.jsp"
						class="btn btn-lg btn-secondary pull-right"
						onclick="submitBookingForm('SD','18753', '18753','Suzuki Alto 800', '26', '700', '110')">Book
						Now</a> <br>
					<br>
				</div>
			</div>

		</div>

		<div class="card mt-4">
			<div class="row">
				<div class="col-md-4">
					<img src="images/homeimg2.jpg" class="img-fluid">


				</div>
				<div class="col-md-5">
					<h4 class="card-title mt-3">Hybrid Electric SUV</h4>
					<h6 class="caption-title-sub">Start from 34$/per a day</h6>
					<hr>
					<div class="caption-text">Vivamus eget nibh. Etiam cursus leo
						vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum
						primis in faucibus orci luctus et ultrices posuere cubilia.</div>

				</div>

				<div class="col-md-3">

					<span class="car-details-price">
						<h2 class="">
							<small>&nbsp; </small>
						</h2>
						<h2>
							<small>LKR</small> 18,753 <br>
						</h2> <span>LKR 2,679 X 7</span>
					</span>

					<div class="clearfix"></div>

					<br> <a href="AddCustomerDetails.jsp"
						class="btn btn-lg btn-secondary pull-right"
						onclick="submitBookingForm('SD','18753', '18753','Suzuki Alto 800', '26', '700', '110')">Book
						Now</a> <br>
					<br>
				</div>

			</div>
		</div>



		<div class="card mt-4">
			<div class="row">
				<div class="col-md-4">
					<img src="images/homeimg3.jpg" class="img-fluid">


				</div>
				<div class="col-md-5">
					<h4 class="card-title mt-3">Subcompact SUV</h4>
					<h6 class="caption-title-sub">Start from 39$/per a day</h6>
					<hr>
					<div class="caption-text">Vivamus eget nibh. Etiam cursus leo
						vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum
						primis in faucibus orci luctus et ultrices posuere cubilia.</div>
				</div>

				<div class="col-md-3">

					<span class="car-details-price">
						<h2 class="">
							<small>&nbsp; </small>
						</h2>
						<h2>
							<small>LKR</small> 18,753 <br>
						</h2> <span>LKR 2,679 X 7</span>
					</span>

					<div class="clearfix"></div>

					<br> <a href="AddCustomerDetails.jsp"
						class="btn btn-lg btn-secondary pull-right"
						onclick="submitBookingForm('SD','18753', '18753','Suzuki Alto 800', '26', '700', '110')">Book
						Now</a> <br>
					<br>
				</div>

			</div>
		</div>
	</div>



	<br>
	</br>
	<br>
	</br>
	<br>
	</br>
	<br>
	</br>
	<br>
	</br>
	<br>
	</br>

</body>


<%@include file="Footer.jsp"%>



</html>