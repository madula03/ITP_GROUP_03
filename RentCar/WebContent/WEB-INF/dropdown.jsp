
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>

<%@page import=" util.DBConnectionUtil"%>













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


 PreparedStatement preparedStatement;

 Connection connection;
 ResultSet resultset;
Statement statement;

%>>



<%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();

//connection = DBConnectionUtil.getDBConnection();

     // statement = connection.createStatement() ;

      //resultset =statement.executeQuery("select * from ahmed") ;
      ////////


      
		connection = DBConnectionUtil.getDBConnection();

		preparedStatement = null;

	
			String sql = "select* from ahmed";
			preparedStatement = connection.prepareStatement(sql);
			resultset = preparedStatement.executeQuery();
      
      
      ///////
%>

<center>
    <h1> Drop down box or select element</h1>
        <select>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString("name")%></option>
        <% } %>
        </select>
</center>

<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>




<p></p>>




</body>
</html>