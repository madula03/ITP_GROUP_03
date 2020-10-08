package service;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBConnectionUtil;

import Model.Customer;

public class CustomerImp implements ICustomer {

	private PreparedStatement preparedStatement;

	private static Connection connection;
	private ResultSet resultset;

	Statement statement;

	public void AddCustomer(Customer customer) {

		try {

			String sql = "insert into Customer(FirstName,LastName,NIC,LicenseNum,LicenseEndDate,Address,Phone,Email) values (?,?,?,?,?,?,?,?)";

			connection = DBConnectionUtil.getDBConnection();

			/*
			 * Query is available in sql
			 */
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, customer.getFirstName());
			preparedStatement.setString(2, customer.getLastName());
			preparedStatement.setString(3, customer.getNIC());
			preparedStatement.setString(4, customer.getLicenseNum());
			preparedStatement.setString(5, customer.getLicenseEndDate());
			preparedStatement.setString(6, customer.getAddress());
			preparedStatement.setString(7, customer.getPhone());
			preparedStatement.setString(8, customer.getEmail());

			preparedStatement.execute();
			connection.commit();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

	}

	// Retrieve Customer Details from Customer table
	public ArrayList<Customer> get_Customer_details() {

		connection = DBConnectionUtil.getDBConnection();

		preparedStatement = null;

		ArrayList<Customer> arraylist = new ArrayList<>();

		try {

			String sql = "select* from Customer";
			preparedStatement = connection.prepareStatement(sql);
			resultset = preparedStatement.executeQuery();

			while (resultset.next()) {

				Customer customer = new Customer();

				customer.setFirstName(resultset.getString("FirstName"));
				customer.setLastName(resultset.getString("LastName"));
				customer.setNIC(resultset.getString("NIC"));
				customer.setLicenseNum(resultset.getString("LicenseNum"));
				customer.setLicenseEndDate(resultset.getString("LicenseEndDate"));
				customer.setAddress(resultset.getString("Address"));
				customer.setPhone(resultset.getString("Phone"));
				customer.setEmail(resultset.getString("Email"));

				arraylist.add(customer);

			}

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

		return arraylist;

	}

	// Update existing Event
	public void updateCustomer(Customer customer) {

		try {
			connection = DBConnectionUtil.getDBConnection();

			System.out.println("lakshi" + customer.getNIC());

		
			String sql = "update Customer set LicenseEndDate =? , Address =?,  Phone =?, Email =?  where NIC=? ";

			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, customer.getLicenseEndDate());
			preparedStatement.setString(2, customer.getAddress());

			preparedStatement.setString(3, customer.getPhone());

			preparedStatement.setString(4, customer.getEmail());
			preparedStatement.setString(5, customer.getNIC());

			preparedStatement.executeUpdate();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

	}

	// Remove existing Event
	public void removeCustomer(String NIC) {
		try {
			connection = DBConnectionUtil.getDBConnection();

			String sql = "Delete   from Customer where NIC=?";
			PreparedStatement preparedstatement = connection.prepareStatement(sql);

			preparedstatement.setString(1, NIC);
			preparedstatement.executeUpdate();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

	}

}
