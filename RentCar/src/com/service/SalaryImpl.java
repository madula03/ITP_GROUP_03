package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.NewEmployee;
import com.model.Salary;
import com.util.DBconnect;

import Model.IncomeStatement;

public class SalaryImpl implements ISalary {
	
	
	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st;
	
	private ResultSet resultset;
	
	
	public void addSalary(Salary sal) {
		// TODO Auto-generated method stub
		try {
			connection=DBconnect.initializeddb();
			pt=connection.prepareStatement("insert into Salary(Nic,basic_salary,attendence,epf,etf,netsalary) values(?,?,?,?,?,?)");
	
	
					
						
			
			pt.setString(1, sal.getNIC());
			pt.setFloat(2, sal.getBasSal());
			pt.setString(3, sal.getAttendnce());
			pt.setFloat(4, sal.getEPF());
			pt.setFloat(5, sal.getETF());
			pt.setFloat(6, sal.getNetSal());
			
			
			
		
		 
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

	
	public ArrayList<Salary> listsalary() {
		ArrayList<Salary> salary=new ArrayList();
				
				try {
					
					connection=DBconnect.initializeddb();
				pt=connection.prepareStatement("select * from Salary");
				ResultSet result=pt.executeQuery();
				
				while(result.next()) {
					
					Salary salary1 = new Salary();

					salary1.setEPF(resultset.getFloat("epf"));
					salary1.setETF(resultset.getFloat("etf"));
					salary1.setNetSal(resultset.getFloat("netsalary"));
					
			
					
					
					salary.add(salary1);
				 
					
					
				}
				
				}catch (Exception e){
					
					e.printStackTrace();
				}
				return salary;
			}

	
	
	
	
	
	
	
}//final bracket
