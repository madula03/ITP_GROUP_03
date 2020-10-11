

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href=" CSS/UserViewMyEvent.css">
<link rel="stylesheet" type="text/css" href=" CSS/insert_rates.css">


<title>Add Inventory</title>


</head>

<body>


	<div class="container" style="width: 100%;">
		<h1 class="h3 mb-3">Profile</h1>
		<div class="row">
			<div class="col-md-4 col-xl-3" style="width: 25%;">
				<div class="card mb-3">
					<div class="card-header">

						<h5 class="card-title mb-0 text-center">Inventory Manager</h5>
					</div>
					<div class="card-body text-center">
						<br> <img src="images/avatar7.png" alt="Inventory manager"
							class="img-fluid rounded-circle mb-2" width="135" height="128">
						<h4 class="card-title mb-0"></h4>
						<br>
						<div>


							<form action="LogoutServlet">
								<div>


									<a class="btn btn-primary btn-sm" href="Adminlogin.jsp">Logout
										<span class="
glyphicon glyphicon-log-out"></span>
									</a>

								</div>
							</form>


						</div>
						<br>
						<hr class="my-0">

						<div class="card-body text-center">

							<div>
								<nav class='animated bounceInDown'>
								<ul>
									<li><a href="view_inventories.jsp">Inventories</a></li>
									<li><a href="AddInventory.jsp">Add Inventory</a></li>
									<li><a href="#">Request For Repair</a></li>
									<li><a href="#">Report</a></li>

									</a>

								</ul>




								</nav>





							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-8 col-xl-9" style="width: 75%;">
				<div class="card" style="height: 1000px;">
					<div class="card-header">
						<h5 class="card-title mb-0">
							<span class="glyphicon glyphicon-plus "></span> Add Inventory
						</h5>
						<div class="card-body h-100"></div>
					</div>


					<br> <br>



					<div class="form-group">
						<form action="./AddInventory" method="post"
							enctype="multipart/form-data">
							<!-- <label class="col-lg-2 col-lg-offset-2 control-label"
								for="filebutton">Car image</label>
							<div class="col-md-5">


								<p>
									<img id="output" width="200" height="200" /> <input
										type="file" accept="image/*" name="image" id="file"
										onchange="loadFile(event)" style="display: none;">
								</p>


								<script>
									var loadFile = function(event) {
										var image = document
												.getElementById('output');
										image.src = URL
												.createObjectURL(event.target.files[0]);
									};
								</script>


								<label for="file" style="cursor: pointer;">Upload Image</label>
							</div>
							<br>
 -->
							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="product_name">Car ID</label>
								<div class="col-md-6">
									<input id="carID" name="cardid" placeholder="Car ID"
										pattern="[A-Z]{2}[0-9]{3}"
										title="Should start with 2 characters and 3 digits"
										maxlength="5" class="form-control input-md" required=""
										type="text">

								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="product_name_fr">Model</label>
								<div class="col-md-6">
									<input id="model" name="model" placeholder="Model"
										class="form-control input-md" required="" type="text">

								</div>
							</div>


							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="product_categorie">Category</label>
								<div class="col-md-6">
									<select id="product_categorie" name="category"
										class="form-control" required="">
										<option value="select one">Select Car Category</option>
										<option value="Mini">Mini</option>
										<option value="Zip">Zip</option>
										<option value="Premier">Premier</option>

									</select> </select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="available_quantity">Supplier ID</label>
								<div class="col-md-6">
									<input id="sup_ID" name="supid" placeholder="Supplier ID"
										class="form-control input-md" type="text">

								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="product_description">Description</label>
								<div class="col-md-6">
									<textarea class="form-control" id="description"
										name="description" required=""></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2 control-label"
									for="product_name_fr">Image URl</label>
								<div class="col-md-6">
									<input id="url" name="url" placeholder="Image Url"
										class="form-control input-md" required="" type="text">

								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 col-lg-offset-2"
									control-label" for="product_weight">No Of Passengers</label>
								<div class="col-md-6">
									<input id="num_of_pass" name="noOfpass"
										placeholder="No Of Passengers" min="1" max="5"
										class="form-control input-md" required="" type="number">

								</div>
							</div>





							<br> <br>

							<div class="form-group">

								<div class="col-lg-5 col-lg-offset-5">
									<button id="addbutton" name="addbutton" class="btn btn-primary"
										type="submit">Add Inventory</button>
								</div>
						</form>
					</div>



				</div>



			</div>
		</div>
	</div>


</body>
</html>