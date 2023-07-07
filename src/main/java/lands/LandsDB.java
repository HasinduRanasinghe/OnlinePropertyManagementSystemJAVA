package lands;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//This is the land database class and this contains all CRUD functions
public class LandsDB {

	//Function to insert data to the database
	public static boolean insertLand(String landID, String location, String size, String price, String owner, String ownerContact, String description, String filepath) {
	    	
	    	boolean isSuccess = false;
	    	
	    	//Essential variables to connect with the MYSQL database 
	    	String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
			String usernameDB = "root";
			String passwordDB = "hasindu2098#";
	    	
			//try catch block to handle SQL Exceptions
	    	try {
	    		
	    		//Loading and registering the JDBC driver
	    		Class.forName("com.mysql.jdbc.Driver");
	    		
	    		//Establishing the connection with the database
	   			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
	    		
	   			//Creating a Statement object
	    		Statement statement = connection.createStatement();
	    		
	    		//SQL query
	    	    String sql = "Insert Into landsdetails Values ('"+landID+"', '"+location+"', '"+size+"', '"+price+"', '"+owner+"', '"+ownerContact+"', '"+description+"', '"+filepath+"')";
	    		
	    	    //Executing SQL query and storing the value as affected number of raws
	    	    int results = statement.executeUpdate(sql);
	    		
	    	    //Validations according to results variable
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

	//Function to update data in the database
	public static boolean updateLands(String location, String size, String price, String owner, String ownerContact, String description, String filepath, String landID) {
		
			boolean returns = false;
	
			//Essential variables to connect with the MYSQL database 
			String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
			String usernameDB = "root";
			String passwordDB = "hasindu2098#";
			
			//try catch block to handle SQL Exceptions
			try {
				
				//Loading and registering the JDBC driver
				Class.forName("com.mysql.jdbc.Driver");
				
				//Establishing the connection with the database
				Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
				
				//Creating a Statement object
				Statement statement = connection.createStatement();
				
				//SQL query
				String sql = "Update landsdetails Set location = '"+location+"', size = '"+size+"', price = '"+price+"', owner = '"+owner+"', ownerContact = '"+ownerContact+"', description = '"+description+"', filepath = '"+filepath+"' Where landID = '"+landID+"'";
				
				//Executing SQL query and storing the value as affected number of raws
				int results =  statement.executeUpdate(sql);
				
				//Validations according to results variable
				if(results > 0) {
					
					returns = true;
					
				} else {
					
					returns = false;
					
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}
			
			return returns;
		}
	
	//Function to delete data in the database
	public static boolean deleteLands(String landID) {
		
		//Essential variables to connect with the MYSQL database 
		String url = "jdbc:mysql://localhost:3306/onlinepropertymanagement";
		String usernameDB = "root";
		String passwordDB = "hasindu2098#";
		
		boolean isSuccess = false;
		
		//try catch block to handle SQL Exceptions
		try {
			
			//Loading and registering the JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Establishing the connection with the database
	   		Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
	   		
	   		//Creating a Statement object
			Statement statement = connection.createStatement();
			
			//SQL query
			String sql = "Delete From landsdetails Where landID ='"+landID+"'";
			
			//Executing SQL query and storing the value as affected number of raws
			int results = statement.executeUpdate(sql);
			
			//Validations according to results variable
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
}
