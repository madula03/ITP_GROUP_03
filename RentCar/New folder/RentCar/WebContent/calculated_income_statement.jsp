



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

<link rel="stylesheet" type="text/css" href=" CSS/ADMIN_PAGE.css">
<link rel="stylesheet" type="text/css" href=" CSS/calculated_incSTM.css">
<style>

#td1{
 padding: 10px;
}

</style>

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


		<%	
		
		
		//String rSalary=String.format(request.getParameter("date"));
		
		String date=String.format(request.getParameter("date"));
		
	
		
		int Salary=Integer.parseInt(request.getParameter("Salary"));
		int maintanance=Integer.parseInt(request.getParameter("maintance"));
		int electricity=Integer.parseInt(request.getParameter("electricity"));
		int rent_expenses=Integer.parseInt(request.getParameter("rent_expenses"));
		int other_expenses=Integer.parseInt(request.getParameter("other_expenses"));
		
		int tot_exp=Salary+maintanance+electricity+rent_expenses+other_expenses;

		
		int Rent_income=Integer.parseInt(request.getParameter("Rent_income"));
		int other_income=Integer.parseInt(request.getParameter("other_income"));
		
		int tot_inc= Rent_income+other_income;
		
		int profit_or_loss=tot_inc-tot_exp;
		
		int budget=profit_or_loss*10/100;
		
		%>








			<table border="3"  style="height:50%; width:100%; margin-top:20px;">
			<caption style="margin-left:600px;"><b>DATE : <%out.println(date); %></b></caption>
			
			<tr>
			<td bgcolor="#8080ff" id="td1">Income</td>
			<td ></td>
			<td ></td>
			
			</tr>
			</tr>
			<tr>
			<td id="td1"> Rent income</td>
			<td style="  padding: 10px;"><%out.println(Rent_income); %></td>
			<td></td>
			
			</tr>
			
			</tr>
			<tr>
			<td id="td1">other income</td>
			<td id="td1" ><%out.println(other_income); %></td>
			<td ></td>
			</tr>
			
			
			
		
				<tr>
			<td></td>
			<td></td>
			<td></td>
			
			</tr>
			
			
			
				<tr>
			<td   id="td1"><b>Total income</b></td>
			<td></td>
			<td  id="td1"><%out.println(tot_inc); %></td>
				
				</tr>
		
			
			
			
			<tr>
			
			
			
			
			
			<td bgcolor="#8080ff"  id="td1">Expenses</td>
			<td ></td>
			<td></td>
			
			</tr>
			
				<tr>
			<td   id="td1">salary</td>
			<td   id="td1"><%out.println(Salary); %></td>
			<td></td>
							
			
			</tr>
			
			
			
			<tr>
			<td   id="td1">maintance</td>
			<td   id="td1"><%out.println(maintanance); %></td>
			<td></td>
							
			
			</tr>
			
			
			
			<tr>
			<td   id="td1">electricity</td>
			<td   id="td1"><%out.println(electricity); %></td>
			<td></td>
			
			</tr>
			<tr>
			<td   id="td1">rent expenses</td>
			<td   id="td1"><%out.println(rent_expenses); %></td>
			<td></td>
			
			</tr>
			<tr>
			<td   id="td1">other expenses</td>
			<td   id="td1"><%out.println(other_expenses); %></td>
			<td></td>
				
			</tr>
			
			</tr>
			<tr>
			<td   id="td1"><b>Total Expense</b></td>
			<td></td>
			<td   id="td1">(<%out.println(tot_exp); %>)</td>
				
			</tr>
			
			
			
				<tr>
			<td></td>
			<td></td>
			<td></td>
			
			</tr>
			
		
			
			</tr>
			
			</tr>
			<tr>
			<td bgcolor="#8080ff">profit or loss</td>
			<td></td>
			<td  id="td1"><%out.println(profit_or_loss); %></td>
			
			</tr>
			
		
			
			<tr>
			<td bgcolor="#8080ff">budjet</td>
			<td></td>
			<td  id="td1"><%out.println(budget); %></td>
			
			</tr>
			
			</table>
	
			
			
	
			
				 <form method="post" action="AddIncomeStatementServlet">
			<input type="hidden"  name="date" value="<%out.println(date); %>">
			
			<input type="hidden" name=Salary value="<%out.println(Salary);  %>">
			<input type="hidden" name=maintanance value="<%out.println(maintanance);  %>">
			<input type="hidden" name=electricity value="<%out.println(electricity);  %>">
			<input type="hidden" name=rent_expenses value="<%out.println(rent_expenses);  %>">
			<input type="hidden" name=other_expenses value="<%out.println(other_expenses);  %>">
			
			<input type="hidden" name=Rent_income value="<%out.println(Rent_income);  %>">
			<input type="hidden" name=other_income value="<%out.println(other_income);  %>">
			
			<input type="hidden" name=tot_exp value="<%out.println(tot_exp);  %>">
			<input type="hidden" name=tot_inc value="<%out.println(tot_inc);  %>">
			
			
			<input type="hidden" name=profit_or_loss value="<%out.println(profit_or_loss);  %>">
			<input type="hidden" name=budget value="<%out.println(budget);  %>">
							
			
			
					
					
					
			
					
					
								
						
			<input type="submit"  value="submit" style="margin-left:600px; margin-top:100px;">	
			
			</form>		
						
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