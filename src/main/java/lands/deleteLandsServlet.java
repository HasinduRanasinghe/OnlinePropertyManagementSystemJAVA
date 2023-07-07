package lands;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class deleteLandsServlet
 */
public class deleteLandsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Storing values from submitted HTML form
		String landID = request.getParameter("landID");
		
		boolean isTrue = false;
		
		//Deleting data from the database
		isTrue = LandsDB.deleteLands(landID);
		
		if (isTrue == true) {
			
			//Forwarding the request to the relevant resource
			RequestDispatcher dispatcher = request.getRequestDispatcher("lands.jsp");
			dispatcher.forward(request, response);
			
		} else {
			
			//Forwarding the request to the relevant resource
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccessfulDelete.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
