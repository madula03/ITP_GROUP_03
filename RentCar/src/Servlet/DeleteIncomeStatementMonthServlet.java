package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IIncomeStatementService;
import service.IncomeStatementServiceimpl;
import service.Ipayment;
import service.Paymentservice;

/**
 * Servlet implementation class DeleteIncomeStatementMonthServlet
 */
@WebServlet("/DeleteIncomeStatementMonthServlet")
public class DeleteIncomeStatementMonthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteIncomeStatementMonthServlet() {
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
		
		
		
		String Date =request.getParameter("date");

		System.out.println("date is : "+Date);
		
		IIncomeStatementService IS1 = new IncomeStatementServiceimpl();
		IS1.removeexpense(Date);
		

		IIncomeStatementService IS = new IncomeStatementServiceimpl();
		IS.removeIncomeStatement(Date);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Insert_income_statement.jsp");
		dispatcher.forward(request, response);
		
	}

}
