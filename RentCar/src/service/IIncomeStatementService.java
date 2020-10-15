package service;

import java.util.ArrayList;

import Model.IncomeStatement;


public interface IIncomeStatementService {

	
	public void  insert(IncomeStatement IS);
	public ArrayList<IncomeStatement> get_IncomeStatement_details();
	
	
	public void insert_income_statement(IncomeStatement IS);
	
	public void removeIncomeStatement(String date);
	
	public void removeexpense(String date);
	
}
