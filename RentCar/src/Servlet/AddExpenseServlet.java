package Servlet;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.IncomeStatement;
import service.IIncomeStatementService;
import service.IncomeStatementServiceimpl;
import util.DBConnectionUtil;

/**
 * Servlet implementation class AddExpenseServlet
 */
@WebServlet("/AddExpenseServlet")
public class AddExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddExpenseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		System.out.println("enered in servlet");
		
		int count = Integer.parseInt(request.getParameter("count"));

			
		String date=request.getParameter("date");
		
		
		System.out.println("count"+count);
		
		String[] description = new String[10];
		int[] amount = new int[10];
		float otherexpenses=0;
		
		for (int i = 0; i < count; i++) {

			description[i] = request.getParameter("expenceDes" + i);
			amount[i] = Integer.parseInt(request.getParameter("amount" + i));
			otherexpenses=otherexpenses+amount[i];
		}

		System.out.println("other expenses : "+otherexpenses );
		
		for (int i = 0; i < count; i++) {

			System.out.println("expenceDes : " + i + " " + description[i]);
			System.out.println("amount : " + i + " " + amount[i]);

		}

		
		
		
		
		

		
		
		IncomeStatement is = new IncomeStatement();
		
		float other_income = Float.parseFloat(request.getParameter("other_income"));
		float Salary = Float.parseFloat(request.getParameter("Salary"));
		System.out.println("1 "+Salary);
		
		float maintanance = Float.parseFloat(request.getParameter("maintance"));
		System.out.println("12 "+maintanance);
		float electricity = Float.parseFloat(request.getParameter("electricity"));
		System.out.println("3 "+electricity);
		float rent_expenses = Float.parseFloat(request.getParameter("rent_expenses"));
		System.out.println("4 "+rent_expenses);
		//float other_expenses = Float.parseFloat(request.getParameter("other_expenses"));

		float Rent_income = Float.parseFloat(request.getParameter("Rent_income"));
		System.out.println("5 "+Rent_income);
		
		
		float tot_exp=Salary+maintanance+electricity+rent_expenses+otherexpenses;
		float tot_inc= Rent_income+other_income;
		
		float profit_or_loss=tot_inc-tot_exp;
		
		
		
		is.setDate(request.getParameter("date"));

		is.setSalary(Salary);
		is.setMaintance(maintanance);
		is.setElectricity(electricity);
		is.setRent_expenses(rent_expenses);
		is.setOther_expenses(otherexpenses);

		is.setTOTAL_INCOME(tot_inc);
		is.setTOTAL_Expense(tot_exp);

		is.setRent_income(Rent_income);
		is.setOther_income(other_income);

		is.setProfit_loss(profit_or_loss);

		
		IIncomeStatementService I_is = new IncomeStatementServiceimpl();
		I_is.insert(is);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		////////// insert query  to expenses

		PreparedStatement preparedStatement = null;

		Connection connection;

		Statement statement;

		connection = DBConnectionUtil.getDBConnection();

		/*
		 * Query is available in sql
		 */
		try {

			
			
			for (int i = 0; i < count; i++) {

				String sql = "insert into expenses(date2,description,amount) values (?,?,?)";

				preparedStatement = connection.prepareStatement(sql);

				preparedStatement.setString(1, request.getParameter("date"));
				preparedStatement.setString(2, description[i]);
				preparedStatement.setInt(3, amount[i]);

				preparedStatement.execute();

			}

			connection.commit();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//////////// insert    expenses end 

//		INCOMESTATEMENT START
		


		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
//   INCOMESTM END		
		
		
		
		
		
		
		
		
//		int count=Integer.parseInt(request.getParameter("count"));
//		System.out.println("count : "+count);
//		
//		String[] description =new String[10] ;
//		int[] amount=new int[10];
//
//		System.out.println("count1 : "+count);
//		
//		//description=request.getParameter("description");
//		//amount=Integer.parseInt(request.getParameter("amount"));
////		
//	
//		
//		
//		for(int i=0;i<count;i++){
//			System.out.println("loop"+i);
//			System.out.println("amount"+request.getParameter("amount"));
//			System.out.println("expenceDes"+request.getParameter("expenceDes"));
//			
//			
//			 description[i]=request.getParameter("expenceDes");
//			 amount[i]=Integer.parseInt(request.getParameter("amount"));
//				
//		}
//		/////
//		
//		System.out.println("count2 : "+count);
//		for(int i=0;i<count;i++){
//				
//			
//
//			System.out.println("des"+description[i]);
//			System.out.println("amt"+amount[i]);
//			
//			}
//		
//		///
//		
//		
//		
//		System.out.println("count3 : "+count);
		
	
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/calculated_income_statement.jsp?date="+date);
		dispatcher.forward(request, response);

	}

}
