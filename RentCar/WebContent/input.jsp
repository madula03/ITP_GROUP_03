<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body{
 background-color: red;

}

#expenseForm{



}

</style>


</head>
<body>


<script>
var count = 0;

function  myFunction(){
	
	
	  var x = document.createElement("INPUT");
	  x.setAttribute("type", "text");
	  x.setAttribute("value", "Expense type");
	  x.setAttribute("name", "expenceDes"+count)
	  x.setAttribute("style", "width:200px;margin-left:240px;")
	  document.getElementById("description").appendChild(x);
	    
	  
	  var a1 = document.createElement("br");
	  document.getElementById("description").appendChild(a1);
	  var a2 = document.createElement("br");
	  document.getElementById("description").appendChild(a2);
	  
	  
	  var y = document.createElement("INPUT");
	  y.setAttribute("type", "number");
	  y.setAttribute("name", "amount"+count)
	  y.setAttribute("style", "width:200px;margin-left:40px;")
	  document.getElementById("amount").appendChild(y);
		  
	  
	  var z = document.createElement("br");
	  document.getElementById("amount").appendChild(z);
	  var g = document.createElement("br");
	  document.getElementById("amount").appendChild(g);
	  
	  count++;
}

function finalSubmit() {
	var x = document.createElement("INPUT");
	  x.setAttribute("type", "hidden");
	  x.setAttribute("value",count);
	  x.setAttribute("name", "count")
	   document.getElementById("amount").appendChild(x);
}


</script>


  <button onclick="myFunction()">Click me</button>
  
  
  <form action="AddExpenseServlet" method="post">
  
  
<div id="description"> </div>
<div id="amount"> </div>

  
<button onclick="finalSubmit()" type="submit">submit</button>

</form>


</body>
</html>