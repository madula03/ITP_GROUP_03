


<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>







<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>



<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>


<%@page import="Model.IncomeStatement"%>
<%@page import="util.DBConnectionUtil"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>






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






	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());

	document.open();
	
	
	Paragraph p = new Paragraph();
	p.add("ahmed11");
	p.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	
	
	
	
	
	
	////////
	
	
	Paragraph p3,p4 =null;
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	connection = DBConnectionUtil.getDBConnection();
	preparedStatement = null;
	ArrayList<IncomeStatement> arraylist = new ArrayList<>();

	
	String date="2020-05-23";
	String sql = "select* from IncomeStatement where date1=?";
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1,date);
	resultset = preparedStatement.executeQuery();

	
	
	
	
	while (resultset.next()) {
				p3=new Paragraph();
				p4=new Paragraph();
		
				p3.add(resultset.getString("date1"));
				p4.add(""+(resultset.getFloat("TOTAL_INCOME")));
				p4.setAlignment(Element.ALIGN_CENTER);
				
				//p4.setStyle(Font.BOLD);
				
				
				//p3.add(resultset.getFloat("TOTAL_Expense"));
				//p3.add(resultset.getFloat("profit_OR_loss"));

				document.add(p3);
				document.add(p4);

				
				PdfPTable table =new PdfPTable(3);
				PdfPCell c1 =new PdfPCell(new Phrase("aaaaaaa"));
				table.addCell(c1);
				
				c1 =new PdfPCell(new Phrase(resultset.getString("date1")));
				table.addCell(c1);
				
				 c1 =new PdfPCell(new Phrase("ccccccc"));
				table.addCell(c1);
				
				table.setHeaderRows(1);
				
				table.addCell("1111");
				table.addCell("   ");
				table.addCell("1111");
				
				table.addCell("2221212");
				table.addCell("3333");
				table.addCell((""+(resultset.getFloat("TOTAL_INCOME"))));
				
				document.add(table);
				
				
				
			}
	
	
	////
	
	
	////table
	
	
	
	
	
	
	
	
	
	
	
	document.close();
	
%>


</body>
</html>