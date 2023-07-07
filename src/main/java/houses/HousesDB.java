package houses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HousesDB {

	public static boolean insertHouse(String houseID, String location, String size, String price, String owner, String ownerContact, String description, String filepath) {
	    	
	    	boolean isSuccess = false;
	    	
	    	String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
			String usernameDB = "root";
			String passwordDB = "hasindu2098#";
	    	
	    	try {
	    		
	    		Class.forName("com.mysql.jdbc.Driver");
	   			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
	    		
	    		Statement statement = connection.createStatement();
	    		
	    	    String sql = "insert into housesdetails values ('"+houseID+"', '"+location+"', '"+size+"', '"+price+"', '"+owner+"', '"+ownerContact+"', '"+description+"', '"+filepath+"')";
	    		
	    	    int results = statement.executeUpdate(sql);
	    		
	    		if(results > 0) {
	    			
	    			isSuccess = true;
	    			
	    		} else {
	    			
	    			isSuccess = false;
	    			
	    		}
	    		
	    	} catch (Exception e) {
	    		
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	
	public static boolean updateHouses(String location, String size, String price, String owner, String ownerContact, String description, String filepath, String houseID) {
		
			boolean returns = false;
	
			String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
			String usernameDB = "root";
			String passwordDB = "hasindu2098#";
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
				Statement statement = connection.createStatement();
				
				String sql = "Update housesdetails Set location = '"+location+"', size = '"+size+"', price = '"+price+"', owner = '"+owner+"', ownerContact = '"+ownerContact+"', description = '"+description+"', filepath = '"+filepath+"' Where houseID = '"+houseID+"'";
				
				int result =  statement.executeUpdate(sql);
				
				if(result > 0) {
					
					returns = true;
					
				} else {
					
					returns = false;
					
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}
			
			return returns;
		}
	
	public static boolean deleteHouses(String houseID) {
		
		String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
		String usernameDB = "root";
		String passwordDB = "hasindu2098#";
		
		boolean isSuccess = false;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
	   		Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
	   		
			Statement statement = connection.createStatement();
			
			String sql = "Delete From housesdetails Where houseID ='"+houseID+"'";
			
			int result = statement.executeUpdate(sql);
			
			if(result > 0) {
				
				isSuccess = true;
				
			} else {
				
				isSuccess = false;
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
