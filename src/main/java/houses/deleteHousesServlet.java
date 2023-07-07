package houses;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class deleteHousesServlet
 */
public class deleteHousesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String houseID = request.getParameter("houseID");
		
		boolean isTrue = false;
		
		isTrue = HousesDB.deleteHouses(houseID);
		
		if (isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("houses.jsp");
			dispatcher.forward(request, response);
			
		} else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccessfulDelete.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
