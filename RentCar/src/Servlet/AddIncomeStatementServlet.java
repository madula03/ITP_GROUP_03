package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.IncomeStatement;

import service.IIncomeStatementService;

import service.IncomeStatementServiceimpl;

/**
 * Servlet implementation class AddIncomeStatementServlet
 */
@WebServlet("/AddIncomeStatementServlet")
public class AddIncomeStatementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddIncomeStatementServlet() {
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

		IncomeStatement is = new IncomeStatement();

		float Salary = Float.parseFloat(request.getParameter("Salary"));
		float maintanance = Float.parseFloat(request.getParameter("maintanance"));
		float electricity = Float.parseFloat(request.getParameter("electricity"));
		float rent_expenses = Float.parseFloat(request.getParameter("rent_expenses"));
		float other_expenses = Float.parseFloat(request.getParameter("other_expenses"));

		float Rent_income = Float.parseFloat(request.getParameter("Rent_income"));
		float other_income = Float.parseFloat(request.getParameter("other_income"));

		float tot_exp = Float.parseFloat(request.getParameter("tot_exp"));
		float tot_inc = Float.parseFloat(request.getParameter("tot_inc"));

		float profit_or_loss = Float.parseFloat(request.getParameter("profit_or_loss"));
		float budget = Float.parseFloat(request.getParameter("budget"));

		is.setDate(request.getParameter("date"));

		is.setSalary(Salary);
		is.setMaintance(maintanance);
		is.setElectricity(electricity);
		is.setRent_expenses(rent_expenses);
		is.setOther_expenses(other_expenses);

		is.setTOTAL_INCOME(tot_inc);
		is.setTOTAL_Expense(tot_exp);

		is.setRent_income(Rent_income);
		is.setOther_income(other_income);

		is.setProfit_loss(profit_or_loss);

		is.setBudget(budget);

		IIncomeStatementService I_is = new IncomeStatementServiceimpl();
		I_is.insert(is);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View_IncomeStatement.jsp");
		dispatcher.forward(request, response);

	}

}
