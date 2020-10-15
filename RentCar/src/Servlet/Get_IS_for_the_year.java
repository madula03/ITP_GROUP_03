package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.IncomeStatement;
import util.DBConnectionUtil;

/**
 * Servlet implementation class Get_IS_for_the_year
 */
@WebServlet("/Get_IS_for_the_year")
public class Get_IS_for_the_year extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Get_IS_for_the_year() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	
	
	

	public IncomeStatement get_values_of_IncomeStatement_for_the_year(String date) {

		IncomeStatement IS = new IncomeStatement();
		DBConnectionUtil dbConnectionUtil = new DBConnectionUtil();
		@SuppressWarnings("static-access")
		Connection connection = dbConnectionUtil.getDBConnection();

		PreparedStatement preparedstatement = null;
		ResultSet resultset = null;

		String date1 = date;

		
		System.out.println("date is : "+date);
		
		try {

			//String sql = "SELECT sum(Salary)as 'Salary',sum(maintance)as'maintance',sum(electricity)as'electricity',	sum(rent_expenses)as'rent_expenses',sum(other_expenses)as'other_expenses',sum(Rent_income)as'Rent_income', 	sum(other_income)as'other_income',sum(TOTAL_INCOME)as'TOTAL_INCOME',sum(TOTAL_Expense)as'TOTAL_Expense',sum(profit_OR_loss)as'profit_OR_loss'FROM IncomeStatement 	WHERE date1  LIKE  ' ?+ '%'";

			//String sql ="SELECT FROM IncomeStatement 	WHERE date1  LIKE '+?+%'";
			
			String sql = "SELECT  sum(Salary)as 'Salary',sum(maintance)as'maintance',sum(electricity)as'electricity',	sum(rent_expenses)as'rent_expenses',sum(other_expenses)as'other_expenses',sum(Rent_income)as'Rent_income', 	sum(other_income)as'other_income',sum(TOTAL_INCOME)as'TOTAL_INCOME',sum(TOTAL_Expense)as'TOTAL_Expense',sum(profit_OR_loss)as'profit_OR_loss'FROM IncomeStatement 	WHERE date1  LIKE ?";

			
			
			//String sql ="SELECT * FROM IncomeStatement 	WHERE date1  LIKE ?";
/////
			

//Code it like this:
//
//PreparedStatement pstmt = con.prepareStatement(
//    "SELECT * FROM analysis WHERE notes like ?");
//pstmt.setString(1, notes + "%");`
//			
			/////
			
			
			
			System.out.println("date 2222 : "+sql);
			
			preparedstatement = connection.prepareStatement(sql);
			//preparedstatement.setString(1, date);
			
			preparedstatement.setString(1, date+"%");
			
			resultset = preparedstatement.executeQuery();

			while (resultset.next()) {

				//IS.setDate(resultset.getString("date"));

				IS.setSalary(resultset.getFloat("Salary"));
				IS.setMaintance(resultset.getInt("maintance"));
				IS.setElectricity(resultset.getInt("electricity"));
				IS.setRent_expenses(resultset.getInt("rent_expenses"));
				IS.setOther_expenses(resultset.getInt("other_expenses"));

				IS.setRent_income(resultset.getInt("Rent_income"));
				IS.setOther_income(resultset.getInt("other_income"));

				IS.setTOTAL_INCOME(resultset.getInt("TOTAL_INCOME"));
				IS.setTOTAL_Expense(resultset.getInt("TOTAL_Expense"));

				IS.setProfit_loss(resultset.getInt("profit_OR_loss"));
				//IS.setBudget(resultset.getInt("budget"));

			}
			System.out.println("finished : "+IS.getMaintance());
			
			System.out.println("profit_OR_loss : "+IS.getProfit_loss());
		} catch (Exception e) {
			System.out.println(e);
		}

	
	
				return IS;
			

	
		
	}
	
	
	
	
	
}//final bracket
