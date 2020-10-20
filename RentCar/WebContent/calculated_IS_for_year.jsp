<%@page import="service.RateServiceimpl"%>
<%@page import="service.IS_for_the_year"%>
<%@page import="Model.IncomeStatement"%>
<%@page import="java.util.ArrayList"%>

<%@page import="Servlet.Get_IS_for_the_year"%>




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
#td1 {
	padding: 10px;
}
</style>

<title>MYEvent</title>


</head>

<body>
	<%
	String date = (String) request.getParameter("date");

	IS_for_the_year IS_FOR_THE_YEAR = new IS_for_the_year();
	IncomeStatement IS = IS_FOR_THE_YEAR.get_values_of_IncomeStatement_for_the_year(date);
	
	
    
    

   
	
	
	if (IS == null) {
		out.println("<script type=\"text/javascript\">");
		out.println("alert('This date dosent have any incomestatement');");
		out.println("location='Add_IS_for_the_year.jsp';");
		out.println("</script>");
	}
	
	

	
	

	
	
	
	%>



	<%
		if (IS != null) {
			
			int no_of_dates= Integer.parseInt(IS.getDate());

			
			if(no_of_dates<3){
					out.println("<script type=\"text/javascript\">");
					out.println("alert('This date dosent contain 12 months');");
					out.println("location='Add_IS_for_the_year.jsp';");
					out.println("</script>");
					
				}
			else{
			
			
			  float profitORloss=  IS.getProfit_loss();
			  float  budjet;
			  
			  if(profitORloss>0)
			  {
				  budjet=profitORloss*10/100;
			  }else
			  {
				  budjet=0;
			  }
			  
			
	%>
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
										class="btn btn-primary btn-sm">


								</div>
							</form>


						</div>
						<br>
						<hr class="my-0">

						<div class="card-body text-center">

							<div>
									<nav class='animated bounceInDown'>
										<ul>
		
											<li class='sub-menu'><a href='#'>IncomeStatement For the month<div class='fa fa-caret-down right'></div></a>
												<ul>
													<li><a href="Insert_income_statement.jsp">Calculate	IncomeStatement</a></li>
													<li><a href="View_IncomeStatement.jsp">View	IncomeStatement</a></li>
												</ul>
											<li class='sub-menu'><a href='Add_IS_for_the_year.jsp'>IncomeStatement For the year <div class='fa fa-caret-down right'></div></a>	
											<li class='sub-menu'><a href='Insert_Rates.jsp'>Rates <div class='fa fa-caret-down right'></div></a>
											<li class='sub-menu'><a href='#'>Report	<div class='fa fa-caret-down right'></div></a>
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












					<table border="3"
						style="height: 50%; width: 100%; margin-top: 20px;">
						<caption style="margin-left: 600px;">
							<b>DATE : <%=date%></b>
						</caption>




						<tr>
							<td bgcolor="#8080ff" id="td1">Income</td>
							<td></td>
							<td></td>

						</tr>
						</tr>
						<tr>
							<td id="td1">Rent income</td>
							<td style="padding: 10px;"><%=IS.getRent_income()%></td>
							<td></td>


						</tr>

						</tr>
						<tr>
							<td id="td1">other income</td>
							<td id="td1"><%=IS.getOther_income()%></td>
							<td></td>
						</tr>




						<tr>
							<td></td>
							<td></td>
							<td></td>

						</tr>



						<tr>
							<td id="td1"><b>Total income</b></td>
							<td></td>
							<td id="td1"><%=IS.getTOTAL_INCOME()%></td>

						</tr>




						<tr>





							<td bgcolor="#8080ff" id="td1">Expenses</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td id="td1">salary</td>
							<td id="td1"><%=IS.getSalary()%></td>
							<td></td>


						</tr>



						<tr>
							<td id="td1">maintance</td>
							<td id="td1"><%=IS.getMaintance()%></td>
							<td></td>


						</tr>



						<tr>
							<td id="td1">electricity</td>
							<td id="td1"><%=IS.getElectricity()%></td>
							<td></td>

						</tr>
						<tr>
							<td id="td1">rent expenses</td>
							<td id="td1"><%=IS.getRent_expenses()%></td>
							<td></td>

						</tr>
						<tr>
							<td id="td1">other expenses</td>
							<td id="td1"><%=IS.getOther_expenses()%></td>
							<td></td>

						</tr>

						</tr>
						<tr>
							<td id="td1"><b>Total Expense</b></td>
							<td></td>
							<td id="td1">(<%=IS.getTOTAL_Expense()%>)
							</td>

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
							<td id="td1"><%=IS.getProfit_loss()%></td>

						</tr>



						<tr>
							<td bgcolor="#8080ff">budjet</td>
							<td></td>
							<td id="td1"><%=budjet%></td>

						</tr>

					</table>


				




					<form method="post" action="Add_IS_for_the_year">
						<input type="hidden" name="date" value="<%=date %>">

						<input type="hidden" name="Salary"	value="<%  out.println( IS.getSalary());   %>">
						 <input type="hidden"name="maintanance" value="<%   out.println( IS.getMaintance());    %>">
						<input type="hidden" name="electricity" value="<%   out.println( IS.getElectricity());     %>"> 
						<input	type="hidden" name="rent_expenses" value="<%  out.println( IS.getRent_expenses());          %>"> 
						<input type="hidden" name="other_expenses" value="<%  out.println( IS.getOther_expenses());      %>">
						<input	type="hidden" name="Rent_income"	value="<%  out.println( IS.getRent_income());      %>">
						<input	type="hidden" name="other_income"	value="<%  out.println( IS.getOther_income());        %>">
						<input	type="hidden" name="tot_exp" value="<%  out.println( IS.getTOTAL_Expense());   %>">
						<input type="hidden" name="tot_inc"	value="<%  out.println( IS.getTOTAL_INCOME());    %>">
						<input type="hidden"name="profit_or_loss" value="<%  out.println( IS.getProfit_loss());        %>">
						<input type="hidden" name="budget" value="<%out.println(budjet); %>"> 
						
						<input type="submit" class="btn btn-success " value="submit"style="background-color: #8080ff; margin-left: 600px; margin-top: 100px;"
							onclick="return confirm('Do you really want to submit the form?');">

					</form>







				</div>



			</div>
		</div>
	</div>

	<%
		}
		}
	%>



























	</div>
	</div>


	</div>

	</div>
	<script>
		$('.sub-menu ul').hide();
		$(".sub-menu a").click(function() {
			$(this).parent(".sub-menu").children("ul").slideToggle("100");
			$(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
		});
	</script>

</body>
</html>