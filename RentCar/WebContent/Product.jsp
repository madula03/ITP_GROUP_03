<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="util.DBConnectionUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="header.jsp"%>
<title>Available Cars</title>
<link rel="stylesheet" href="product.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

</head>
  
<body>
<div class="container mt-5">
<%
      String startDate= (String)request.getAttribute("startdate");
	  System.out.println(startDate);
      String endDate= (String)request.getAttribute("enddate");
      System.out.println(endDate);
      SimpleDateFormat frmat = new SimpleDateFormat("dd-MM-yyyy");
      Date start= frmat.parse(startDate);
      Date end= frmat.parse(endDate);
      long dif=end.getTime()- start.getTime();
      int days=(int)(dif/(1000*60*60*24));
      float cost=10;
      
      try{
      
      Connection connection = DBConnectionUtil.getDBConnection();
      String sql = "Select * from inventory";
      PreparedStatement stat= connection.prepareStatement(sql);
      ResultSet rs = stat.executeQuery();
      String sql1;
      PreparedStatement stat1;
      ResultSet rs1;
      while(rs.next()){
    	   sql1 = "Select Amount from Rates where category='"+rs.getString("category")+"'";
           stat1= connection.prepareStatement(sql1);
           rs1 = stat1.executeQuery();
          while(rs1.next()){
        	  cost = rs1.getFloat("Amount");
          } 
          
      
%>
	<div class="card mt-4">
		<div class="row">
			<div class="col-md-4">
				<img src="<%=rs.getString("url")%>" class="img-fluid">
				
		
			</div>
		<div class="col-md-5">
			<h4 class="card-title mt-3"> <%=rs.getString("model")%> </h4>
			<h6 class="caption-title-sub">Start from <%=cost%> LKR /per a day</h6><hr>
			<div class="caption-text">
				<%=rs.getString("descriptionn")%></div>
			</div>
		
			<div class="col-md-3">

                                <span class="car-details-price">
                                	<h2 class=""> <small>&nbsp; </small> </h2>
									 <h2><small>LKR</small> <%=cost*days%> <br></h2>
                                    <span>LKR   <%=cost %> X <%=days %> Days</span>
 								</span>

                                <div class="clearfix"></div>
                             
                                <br>
								<a class="btn btn-lg btn-secondary pull-right" style="margin-right:120px;" onclick="submitBookingForm('SD','18753', '18753','Suzuki Alto 800', '26', '700', '110')">Book Now</a>

                                <br><br>
			 </div>
		</div>
	
	</div>
<%
          }
      }
      catch(Exception ex){
    	  ex.printStackTrace();
      }%>
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