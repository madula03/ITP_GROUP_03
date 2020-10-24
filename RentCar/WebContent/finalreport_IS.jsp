<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>



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
	
	String date=request.getParameter("date");
	
	//String date="2020";
	
	Paragraph p = new Paragraph();
	Paragraph p33 = new Paragraph();
	p.add("INCOME STATEMENT FOR THE YEAR ENDED   "+date);
	p.setAlignment(Element.ALIGN_CENTER);
	p33.add("       ");
	p33.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	document.add(p33);
	
	
	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultset;
	Statement statement;

	connection = DBConnectionUtil.getDBConnection();
	preparedStatement = null;
	ArrayList<IncomeStatement> arraylist = new ArrayList<>();

	
	
	String sql = "select* from IncomeStatement_for_the_year where year=?";
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1,date);
	resultset = preparedStatement.executeQuery();
	
	
	
	
	while (resultset.next()) {

		

		Font f = new Font();
		f.setStyle(Font.BOLD);
		f.setSize(8);

		
		PdfPTable table =new PdfPTable(3);
		
		table.setWidthPercentage(100);
		 // Code 2
		table.setHorizontalAlignment(Element.ALIGN_LEFT);
		
		Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 15, Font.BOLD);
		
		
		PdfPCell c1 =new PdfPCell(new Phrase("INCOME",boldFont));
		table.addCell(c1);
		table.addCell("   ");
		table.addCell("");
		
		table.addCell("rent income");
		table.addCell(""+(resultset.getFloat("Rent_income")));
		table.addCell("");
		
		table.addCell("other income");
		table.addCell(""+(resultset.getFloat("other_income")));
		table.addCell("");
		
		
		c1 =new PdfPCell(new Phrase("TOTAL INCOME",boldFont));
		table.addCell(c1);
		table.addCell("");
		table.addCell(""+(resultset.getFloat("TOTAL_INCOME")));
		
		table.addCell("EXPENSES");
		table.addCell("");
		table.addCell("");
		
		table.addCell("salary");
		table.addCell(""+(resultset.getFloat("Salary")));
		table.addCell(" ");
		
		table.addCell("maintance");
		table.addCell(""+(resultset.getFloat("maintance")));
		table.addCell(" ");
		
		table.addCell("electricity");
		table.addCell(""+(resultset.getFloat("electricity")));
		table.addCell(" ");
		
		table.addCell("rent expenses");
		table.addCell(""+(resultset.getFloat("rent_expenses")));
		table.addCell(" ");
		
		
		
		
		table.addCell("other expenses");
		table.addCell(""+(resultset.getFloat("TOTAL_INCOME")));
		table.addCell(" ");
		
		
		
		c1 =new PdfPCell(new Phrase("TOTAL EXPENSES",boldFont));
		table.addCell(c1);
		table.addCell("");
		table.addCell(("("+""+(resultset.getFloat("TOTAL_Expense")+")")));
		
		
		c1 =new PdfPCell(new Phrase("PROFIT OR LOSS",boldFont));
		table.addCell(c1);
		table.addCell("");
		table.addCell((""+(resultset.getFloat("profit_OR_loss"))));
		
		
		c1 =new PdfPCell(new Phrase("BUDJET",boldFont));
		table.addCell(c1);
		table.addCell("");
		table.addCell((""+(resultset.getFloat("budget"))));
		
		
		document.add(table);
		
		
		
	}
	
	


	
	

	
	
	
	
	
	
	
	
	document.close();
	
%>












</body>
</html>