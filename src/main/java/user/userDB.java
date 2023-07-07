package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class userDB {

	private static ResultSet result = null;
	private static Statement statement = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	private static Connection connection = null;
	
	//Inserting user details to the database
	public static boolean insertUser(String firstname, String lastname, String birthday, String phone, String username, String email, String password) {
		
		boolean returns = false;
		
		String url = "jdbc:mysql://localhost:3306/onlinePropertyManagement";
		String usernameDB = "root";
		String passwordDB = "hasindu2098#";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
			Statement statement = connection.createStatement();
			
			int result =  statement.executeUpdate("insert into onlinePropertyManagement.user values ('"+firstname+"', '"+lastname+"', '"+birthday+"', '"+phone+"', '"+username+"', '"+email+"', '"+password+"');");
			
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
	
	//Retrieving user details from the database
	public static List<User> validates(String username, String password){
		
		ArrayList<User> userList = new ArrayList<>();
		
  		String url="jdbc:mysql://localhost:3306/onlinePropertyManagement";
  		String usernameDB= "root";
  		String passwordDB="hasindu2098#";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
  			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
  		    Statement statement = connection.createStatement();
  		    
  		    String sql = "Select * From user Where username = '"+username+"' and password = '"+password+"'";
  		    
  		    ResultSet rs = statement.executeQuery(sql);
  		    
  		    if(rs.next()) {
  		    	
  		    	String firstname = rs.getString(1);
  				String lastname = rs.getString(2);
  				String birthday = rs.getString(3);
  				String phoneNo = rs.getString(4);
  				String userName = rs.getString(5);
  				String email = rs.getString(6);
  				String pswd = rs.getString(7);
  				
  				User user = new User(firstname, lastname, birthday, phoneNo, userName, email, pswd);
  				userList.add(user);
  				
  		    } else {
  		    	
  		    	isSuccess = false;
  		    }
  		    
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return userList;
	}
	
	//Updating user details
	public static boolean updatetUser(String username, String fname, String lname, String birthday, String phone, String email, String password) {
		
		boolean returns1 = false;

		String url = "jdbc:mysql://localhost:3306/onlinePropertyManagement";
		String usernameDB = "root";
		String passwordDB = "hasindu2098#";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
			Statement statement = connection.createStatement();
			
			int result =  statement.executeUpdate("Update user Set firstname = '"+fname+"', lastname = '"+lname+"', birthday = '"+birthday+"', phone = '"+phone+"', email = '"+email+"', password = '"+password+"' Where username = '"+username+"'");
			
			if(result>0) {
				
				returns1 = true;
			
			} else {
				
				returns1 = false;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		
		}
		
		return returns1;
	}
	
	public static List <User> getuser(String username) {
    	
    	ArrayList <User> user = new ArrayList <>();
    	
    	try {
    		
    		String url = "jdbc:mysql://localhost:3306/onlinePropertyManagement";
			String usernameDB = "root";
			String passwordDB = "hasindu2098#";

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection(url, usernameDB, passwordDB);
			Statement statement = connection.createStatement();
    		
    		ResultSet rs = statement.executeQuery("Select * From user Where username = '"+username+"'");
    		
    		while(rs.next()) {
    			
    			String firstname = rs.getString(1);
    			String lastname = rs.getString(2);
    			String birthday = rs.getString(3);
    			String phone = rs.getString(4);
    			String email = rs.getString(5);
    			String un = rs.getString(6);
    			String password = rs.getString(7);
    			
    			User usr = new User(firstname, lastname, birthday, phone, email, un, password);
    			user.add(usr);
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}	
    	
    	return user;	
    }

}
