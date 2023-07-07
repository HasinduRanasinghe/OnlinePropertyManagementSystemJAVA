package user;

import jakarta.servlet.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			
			List<User> user = userDB.validates(username, password);
			request.setAttribute("user", user);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("profile.jsp");
			dis1.forward(request, response);
			
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
