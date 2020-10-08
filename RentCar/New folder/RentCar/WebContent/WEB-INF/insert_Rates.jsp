









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
<link rel="stylesheet" type="text/css" href=" CSS/income_statement.css">


<title>MYEvent</title>


</head>

<body>


	<div class="container">
		<h1 class="h3 mb-3">Profile</h1>
		<div class="row">
			<div class="col-md-4 col-xl-3">
				<div class="card mb-3">
					<div class="card-header">



						<h5 class="card-title mb-0 text-center">User</h5>
					</div>
					<div class="card-body text-center">
						<br> <img src="images/avatar7.png" alt="Marie Salter"
							class="img-fluid rounded-circle mb-2" width="128" height="128">
						<h4 class="card-title mb-0"></h4>
						<br>
						<div>


							<form action="LogoutServlet">
								<div>


									<input type="submit" value="logout"
										class="btn btn-primary btn-sm"> <a
										class="btn btn-primary btn-sm" href="UserViewRegistration.jsp">Settings
										<span class="glyphicon glyphicon-cog"></span>
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
									<li><a href="userProfile.jsp">Our Services</a></li>
									<li><a href="UserViewMyEvent.jsp">My Events</a></li>
									<li class='sub-menu'><a href='#'>Complaints
											<div class='fa fa-caret-down right'></div>
									</a>
										<ul>
											<li><a href="MakeComplaints.jsp">Make Complaints</a></li>
											<li><a href="MyComplaint.jsp">My Complaints</a></li>
										</ul>
								</ul>





								</nav>





							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-8 col-xl-9">
				<div class="card" style="height: 1000px;">
					<div class="card-header">
						<h5 class="card-title mb-0">INCOME_STATEMENT</h5>
						<div class="card-body h-100"></div>
					</div>


				<p id="date">Enter the date<input type="date" name="date"></p>
				
				
				
				<div id="INCOME_STATEMENT">
						<div class="vl1"></div>
						
							<h7 id="h"><B>EXPENSES</B></h7><br><br>
						<P id="expenses"> Salary</P>
						<Pv id="expenses"> maintance</P>
						<P id="expenses"> electricity</P>
						<P id="expenses"> rent expenses</P>
						<P id="expenses"> other expenses</P>
						
							
						<h7><B>INCOME</B></h7><br><br>
						<P id="income"> Rent income</P>
						<P id="income"> other income</P>
						
						
						
						
					<div id="enxp"	><br><br>
						<p ><input type="text"  name="salarry" style="width:150px;height:22px;"></p>
						<p ><input type="text"  name="ss"   style="width:150px;height:22px;"></p>
						<p ><input type="text"  name="aa"   style="width:150px;height:22px;"></p>
						<p ><input type="text"  name="a"  style="width:150px;height:22px;"></p>
						<p ><input type="text"  name="z"  style="width:150px;height:22px;"></p><br>
					</div>	
					
					<div id="inc">
						<p><input type="text"  name="a" style="width:150px;height:22px;" ></p>
						<p><input type="text"  name="d"  style="width:150px;height:22px;"></p>
					</div>	
					
						<input type="submit" value="calculate"  style="margin-left:343px;margin-top:10px;" >	
					
						
					
					
						
						
						
						
				</div>


					
				</div>
			</div>
		</div>





























	</div>
	</div>


	</div>

	</div>
	<script>
                $('.sub-menu ul').hide();
$(".sub-menu a").click(function () {
	$(this).parent(".sub-menu").children("ul").slideToggle("100");
	$(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
});
</script>

</body>
</html>