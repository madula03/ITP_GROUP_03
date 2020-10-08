<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<style>
label{
 color: #000;
  letter-spacing: 2px;
  font-size:20px;
  font-family:Courgette;
  }
  .form-control{
  border:1px solid #000;
  }
  .form-container{
border:1px solid #000;
padding:80px 80px;
margin-top:10vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
}
center{
  color: #000;
  letter-spacing: 2px;
  font-size:30px;
  margin-top:0px;
  font-family:Poppins;
  text-transform: uppercase;
}
body{
  
  background-image: url('images/pexels-photo-1103970.jpeg');
  background-attachment:fixed;
background-size:cover;
font-family:new time roman;
}



</style>
 

<body>

<img src=>
	<div class="contanier-fulid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	<div class="col-md-4 col-sm-4 col-xs-12">
	
	<form class="form-container"  action="LoginValidationServlet1" method="post">
	<center >Log In</center>
	<div ><br>
	
	<input type="text" class="form-control" id="exampleInputName" placeholder="Username" name="name">
	</div><br><br>
	<div class="form-group">
	
	<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  name="password">
	</div><br>
	 
	
	<input type="submit"  value="submit" class="btn btn-success btn-block"><br>
	
	<a href="registration.jsp">Create Account</a>
	</form>
	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
	</div> 
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>