package groupone;

import java.sql.*;
import java.util.ArrayList;

import javax.swing.DefaultListModel;

public class DBOperation {
	
	public static boolean isValidLogin(String email, String pass) {
		email = email.toUpperCase();
		boolean found = false;
		Connection con = new DBConnection().getDBConnection();
		String sqlCmd = "SELECT email FROM account "
						+ "WHERE email = '" + email + "' "
						+ "AND password = '" + pass + "'";
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlCmd);
			
			while (rs.next()) {
				found = true;
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return found;
	}
	
	public static boolean createAccount(String firstName, String lastName, String email, String pass, String type) {
		firstName = firstName.toUpperCase();
		lastName = lastName.toUpperCase();
		email = email.toUpperCase();
		type = type.toUpperCase();
		
		Connection con = new DBConnection().getDBConnection();
		//INSERT INTO `groupone`.`account` (`email`, `password`, `firstName`, `lastName`, `acctType`) VALUES ('kvraymundo@gmail.com', '54321', 'Kev', 'Ray', 'C');
		String sqlCmd = "INSERT INTO account (email, password, firstName, lastName, acctType) "
						+ "VALUES ('" + email + "', '" + pass + "', '" + firstName + "', '" + lastName + "', '" + type + "')";
		try {
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(sqlCmd);

			stmt.close();
			con.close();
			
		} catch(SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	
	public static boolean isVendor(String email) {
		email = email.toUpperCase();
		boolean found = false;
		Connection con = new DBConnection().getDBConnection();
		String sqlCmd = "SELECT acctType FROM account "
						+ "WHERE email = '" + email + "' "
						+ "AND acctType = 'V'";
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlCmd);
			
			while (rs.next()) {
				found = true;
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return found;
	}

	public static ArrayList<Coupon> getCouponList() {
		Connection con = new DBConnection().getDBConnection();
		ArrayList<Coupon> coupons = new ArrayList<Coupon>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM coupon");
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				Coupon coupon = new Coupon();
				coupon.setId(rs.getString(1));
				coupon.setTitle(rs.getString(2));
				coupon.setCreateDate(rs.getString(3));
				coupon.setExpireDate(rs.getString(4));
				coupon.setQuantity(rs.getString(5));
				coupon.setPrice(rs.getString(6));
				coupon.setCategory(rs.getString(7));
				coupon.setSold(rs.getString(8));
				coupon.setVendor(rs.getString(9));
				coupons.add(coupon);
			}
		} catch(SQLException e) {}
		
		return coupons;
	}
	
	public static ArrayList<Account> getAccountList() {
		Connection con = new DBConnection().getDBConnection();
		ArrayList<Account> accounts = new ArrayList<Account>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM account");
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				Account account = new Account();
				account.setId(rs.getString(1));
				account.setEmail(rs.getString(2));
				account.setPassword(rs.getString(3));
				account.setFirstName(rs.getString(4));
				account.setLastName(rs.getString(5));
				
				accounts.add(account);
			}
		} catch(SQLException e) {}
		
		return accounts;
	}
	
	public static Account getAccount(String email, String pass) {
		email = email.toUpperCase();
		Connection con = new DBConnection().getDBConnection();
		Account account = new Account();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM account WHERE email = '" + email + "' AND password = '" + pass + "'");
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				account.setId(rs.getString(1));
				account.setEmail(rs.getString(2));
				account.setPassword(rs.getString(3));
				account.setFirstName(rs.getString(4));
				account.setLastName(rs.getString(5));
			}
		} catch(SQLException e) {}
		
		return account;
	}
	
	public static ArrayList<String> queryToArrayList(String sqlCmd) {
		Connection con = new DBConnection().getDBConnection();
		ArrayList<String> list = new ArrayList<String>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlCmd);
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				for (int i=1; i<numColumns+1; i++) {
					list.add(rs.getString(i));
			    }
			}
		} catch(SQLException e) {}
		
		return list;
	}
	
	
	
	public static DefaultListModel<String> queryToDefaultListModel(String sqlCmd) {
		Connection con = new DBConnection().getDBConnection();
		DefaultListModel<String> list = new DefaultListModel<String>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlCmd);
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				for (int i=1; i<numColumns+1; i++) {
					list.add(i - 1, rs.getString(i));
			    }
			}
		} catch(SQLException e) {}
		
		return list;
	}
	
	public static void updateQueryList(String query, DefaultListModel<String> list) {
		Connection con = new DBConnection().getDBConnection();
		list.clear();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			// Get result set meta data
		    ResultSetMetaData rsmd = rs.getMetaData();
		    int numColumns = rsmd.getColumnCount();
		    
			while(rs.next()) {
				for (int i=1; i<numColumns+1; i++)
					list.add(i - 1, rs.getString(i));
			}
		} catch(SQLException e) {}
	}

	

	public static int getRowCount(String query) {
		Connection con = new DBConnection().getDBConnection();
		int count = 0;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM (" + query + ")");
		    
			while(rs.next()) {
				count = Integer.parseInt(rs.getString(1));
			}
		} catch(SQLException e) {}
		return count;
	}


	public static void insertData(String update) {
		Connection con = new DBConnection().getDBConnection();
		try {
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(update);
			
			stmt.close();
		    con.close();
		} catch(SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static boolean AddCoupon(String title, String date, String quantity, String price, String category, String id)
	{
		title = title.toUpperCase();
		date = date.toUpperCase();
		quantity = quantity.toUpperCase();
		price = quantity.toUpperCase();
		category = category.toUpperCase();
		id = id.toUpperCase();
		
		Connection con = new DBConnection().getDBConnection();
		
		String sqlCmd = "INSERT INTO coupon (title, expiredate, quantity, price, category, idVendor)"
				+ "VALUES ('" + title + "', '" + date + "', '" + quantity + "', '" + price + "', '" + category + "' , '" + id + "')";
		try 
		{
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(sqlCmd);

			stmt.close();
			con.close();
			
		} 
		catch(SQLException e) 
		{
			System.out.println(e.getMessage());
			return false;
		}
		return true;
		
	}
	
}





