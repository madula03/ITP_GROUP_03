package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.IncomeStatement;
import util.DBConnectionUtil;

public class IS_for_the_year {

	public IncomeStatement get_values_of_IncomeStatement_for_the_year(String date) {

		IncomeStatement IS = new IncomeStatement();
		DBConnectionUtil dbConnectionUtil = new DBConnectionUtil();
		@SuppressWarnings("static-access")
		Connection connection = dbConnectionUtil.getDBConnection();

		PreparedStatement preparedstatement = null;
		ResultSet resultset = null;

		String date1 = date;

		try {

			String sql = "SELECT count(date1) as'date1', sum(Salary)as 'Salary',sum(maintance)as'maintance',sum(electricity)as'electricity',	sum(rent_expenses)as'rent_expenses',sum(other_expenses)as'other_expenses',sum(Rent_income)as'Rent_income', 	sum(other_income)as'other_income',sum(TOTAL_INCOME)as'TOTAL_INCOME',sum(TOTAL_Expense)as'TOTAL_Expense',sum(profit_OR_loss)as'profit_OR_loss'FROM IncomeStatement 	WHERE date1  LIKE ?";

			preparedstatement = connection.prepareStatement(sql);

			preparedstatement.setString(1, date + "%");

			resultset = preparedstatement.executeQuery();

			while (resultset.next()) {

				IS.setDate(resultset.getString("date1"));

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
				// IS.setBudget(resultset.getInt("budget"));

			}

		} catch (Exception e) {
			System.out.println(e);
		}

		if (IS.getMaintance() == 0.0) {

			return null;
		} else {
			return IS;
		}

	}

}// final bracket
