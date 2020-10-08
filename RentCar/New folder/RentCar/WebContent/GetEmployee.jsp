<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.model.NewEmployee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-8 col-xl-9">
				<div class="card" style="height: 1000px;">
					<div class="card-header">
						<h5 class="card-title mb-0">Add employee details</h5>
						<div class="card-body h-100"></div>
					</div>
						
						<%NewEmployee emp=(NewEmployee)request.getAttribute("emp"); %>
						
					    <form class="form-container" action="./UpdateEmployee"  method="post"  id="ticket_submit">
	
				
				<label>First Name</label>
				<input type="text" class="form-control" id="exampleInputFName"   name="fname"  value="<%=emp.getFirstName()%>"  required     >
				<br>
				
				<label>Last Name</label>
				<input type="text" class="form-control" id="exampleInputFName"   name="lname" value="<%=emp.getLastName()%>"  required>
				<br>
				
				<label>Employee Id</label>
				<input type="number" class="form-control" id="exampleInputPassword1"   name="empid" value="<%=emp.getEmpID()%>" required><br>
				
				<label>NIC num</label>
				<input type="text" class="form-control" id="exampleInputFName"   name="nic"  value="<%=emp.getNIC()%>"  required     >
				<br>
				
				<label>Address</label>
				<input type="text" class="form-control" id="exampleInputFName"   name="address"  value="<%=emp.getAddress()%>"  required     >
				<br>
				
				<label>Phone Number</label>
				<input type="phone" class="form-control" id="exampleInputFName"   name="phone"  value="<%=emp.getPhoneNum()%>"  required     >
				<br>
				
				<label>Email Id</label>
				<input type="email" class="form-control" id="exampleInputFName"   name="email"    value="<%=emp.getEmail()%>"     >
				<br>
				
				<label>Job role</label>
				<input type="text" class="form-control" id="exampleInputFName"   name="job" value="<%=emp.getJobrole()%>"   required     >
				<br>
				
				<label>Basic salary per month</label>
				<input type="number" class="form-control" id="exampleInputFName"   name="bsal"  value="<%=emp.getBasicSal()%>"  required     >
				<br>
				
				<div>
				<br><br>
				<input type="submit" class="btn btn-success "  value="UPDATE"  style="margin-left:10px; width:100px;"> 
				</div>
				 
	</form>
						
				</div>


</body>
</html>