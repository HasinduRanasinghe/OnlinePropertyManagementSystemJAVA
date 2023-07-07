package user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class updateUserServlet
 */
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean result1 = userDB.updatetUser(username, fname, lname, birthday, phone, email, password);
		
		if(result1 == true) {
			
			List <User> userDetails = userDB.validates(username, password); //userDB.getuser(username);
			
			request.setAttribute("user", userDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("profile.jsp");
			dis1.forward(request, response);	
			
		} else {
			
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessalert.jsp");
				dis2.forward(request, response);
			}
	}

}
