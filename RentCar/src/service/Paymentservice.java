package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Paymentmodel;

import util.DBConnectionUtil;

public class Paymentservice implements Ipayment {

	private ResultSet resultset;

	// *******************************************insert******************************************

	@Override
	public void insert(Paymentmodel pm) {
		// TODO Auto-generated method stub

		DBConnectionUtil obj_DB_Connection = new DBConnectionUtil();
		Connection connection = obj_DB_Connection.getDBConnection();
		PreparedStatement ps = null;

		try {
			String query = "insert into  Payment(Paytype,Cardholdername,cnumber,expire_date,ccv,couponcode) values(?,?,?,?,?,?)";
			ps = connection.prepareStatement(query);

			ps.setString(1, pm.getPayType());
			ps.setString(2, pm.getHoldername());
			ps.setString(3, pm.getCardnumber());
			ps.setString(4, pm.getExpDate());
			ps.setInt(5, pm.getCcv());
			ps.setString(6, pm.getCoupon());

			// close
			ps.executeUpdate();
			connection.commit();

		} catch (Exception e) {
			System.out.println(e);
		}

		finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}

		}

		// *********************Retrieve payment Details from
		// payment*****************************************
		// table***********************************************

	}

	@Override
	public ArrayList<Paymentmodel> get_payment_details() {
		// TODO Auto-generated method stub

		DBConnectionUtil obj_DB_Connection = new DBConnectionUtil();
		Connection connection = obj_DB_Connection.getDBConnection();
		PreparedStatement ps = null;

		ArrayList<Paymentmodel> arraylist = new ArrayList<>();

		try {

			String query = "select* from Payment";
			ps = connection.prepareStatement(query);
			resultset = ps.executeQuery();

			while (resultset.next()) {

				Paymentmodel pm = new Paymentmodel();

				pm.setPayID(resultset.getInt("payID"));
				pm.setPayType(resultset.getString("Paytype"));
				pm.setHoldername(resultset.getString("Cardholdername"));
				pm.setCardnumber(resultset.getString("cnumber"));
				pm.setExpDate(resultset.getString("expire_date"));
				pm.setCcv(resultset.getInt("ccv"));
				pm.setCoupon(resultset.getString("couponcode"));

				arraylist.add(pm);

			}

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

		return arraylist;
	}

	// ********************************delete************************************************************

	@Override
	public void removePayment(int payID) {
		// TODO Auto-generated method stub

		DBConnectionUtil obj_DB_Connection = new DBConnectionUtil();
		Connection connection = obj_DB_Connection.getDBConnection();
		PreparedStatement ps = null;

		try {

			String query = "Delete   from Payment where payID=?";
			ps = connection.prepareStatement(query);

			ps.setInt(1, payID);

			ps.executeUpdate();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}

		}

	}

	// **************************************update******************************************************************

	@Override
	public void updatePayment(Paymentmodel pm) {
		// TODO Auto-generated method stub

		DBConnectionUtil obj_DB_Connection = new DBConnectionUtil();
		Connection connection = obj_DB_Connection.getDBConnection();
		PreparedStatement ps = null;

		try {

			String query = "update Payment set Paytype=?,Cardholdername=?,cnumber=?,expire_date=?,ccv=?,couponcode=? where payID=?";

			ps = connection.prepareStatement(query);

			ps.setString(1, pm.getPayType());

			ps.setString(2, pm.getHoldername());
			ps.setString(3, pm.getCardnumber());
			ps.setString(4, pm.getExpDate());
			ps.setInt(5, pm.getCcv());
			ps.setString(6, pm.getCoupon());

			ps.setInt(7, pm.getPayID());

			System.out.println("waruthaaaaa" + pm.getCcv());

			ps.executeUpdate();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

	}

}
