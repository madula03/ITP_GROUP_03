package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.NewEmployee;
import com.model.Salary;
import com.service.Employee;
import com.service.EmployeeImp;
import com.service.ISalary;
import com.service.SalaryImpl;

import service.IIncomeStatementService;
import service.IncomeStatementServiceimpl;

/**
 * Servlet implementation class AddSalary
 */
@WebServlet("/AddSalary")
public class AddSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddSalary() {
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

		Salary salary = new Salary();

		salary.setNIC(request.getParameter("NIC"));

		salary.setBasSal(Float.parseFloat(request.getParameter("basSal")));

		salary.setAttendnce(request.getParameter("attendnce"));

		salary.setEPF(Float.parseFloat(request.getParameter("EPF")));

		salary.setETF(Float.parseFloat(request.getParameter("ETF")));
		salary.setNetSal(Float.parseFloat(request.getParameter("NetSal")));

		ISalary ISAL = new SalaryImpl();

		ISAL.addSalary(salary);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Present_employees.jsp");
		dispatcher.forward(request, response);

	}

}
