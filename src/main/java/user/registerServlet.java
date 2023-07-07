package user;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;



public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean result = userDB.insertUser(fname, lname, birthday, phone, uname, email, password);
		
		if(result == true) {
			
			List<User> user = userDB.validates(uname, password);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("profile.jsp");
			dispatcher1.forward(request, response);
			
		} else {
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher2.forward(request, response);
			
		}
		
	}

}
