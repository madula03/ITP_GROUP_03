<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Reservation</title>
</head>
<link
	href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<body>

	<div class="container">

		<div class="row">
			<div class="col-md-4">

				<form 
					method="post">
					
					<div class="form-group">
					Enter Location : <input type="text" name="location"
						value="${reservation.location}" class="form-control" > </div> <div class="form-group"> Enter Time : <input
						type="time" name="time1" value="${reservation.time1}" class="form-control"> </div> 
					<div class="form-group">Enter Pickup Date : <input type="date" name="pickupdate"
						value="${reservation.pickupdate}" class="form-control"></div> <div class="form-group"> Enter Return
					Date : <input type="date" name="returndate"
						value="${reservation.returndate}" class="form-control"></div> <div class="form-group"> Enter No Of
					Days : <input type="text" name="numofdays"
						value="${reservation.numofdays}" class="form-control"> </div> <div class="form-group">Enter No Of
					Passengers : <input type="text" name="numofpassengers"
						value="${reservation.numofpassengers}" class="form-control"> </div><input
						type="hidden" value="${reservation.rid}" name="rid" />
					<button class="btn btn-primary" type="submit">Save</button>

				</form>
			</div>

		</div>
	</div>

</body>
</html>