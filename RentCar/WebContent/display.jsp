<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%


//String des=request.getParameter("Salary"));

 
%>



<form  action="AddExpenseServlet"  method="post">

	<input type="text" name="count" value="<%=count%>"><br><br>

	<%
	for(int i=0;i<count;i++){
	%>	
		<input type="text" name="expenceDes+i" value="<%=description[i]%>"><br>
		<input type="text" name="amount+i" value="<%=amount[i]%>"><br><br>

		


	<% 	
	}
	%>
	
	<input type="submit"  value="submit">	
</form>







<input type="hidden" name="count" value="<%=count%>"><br><br>

<input type="text" name="expenceDes" value="<%=description%>"><br>
		<input type="text" name="amount" value="<%=amount%>"><br><br>
		
		
	







</body>
</html>