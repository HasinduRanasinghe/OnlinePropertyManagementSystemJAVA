package lands;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;


@MultipartConfig
/**
 * Servlet implementation class insertLandServlet
 */
public class insertLandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Storing values from submitted HTML form
		String landID = request.getParameter("landID");
		String location = request.getParameter("location");
		String size = request.getParameter("size");
		String price = request.getParameter("price");
		String owner = request.getParameter("owner");
		String ownerContact = request.getParameter("ownerContact");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		//Image uploading handling section
		Part file = request.getPart("image");
		  
		String filepath = file.getSubmittedFileName();
		  
		String uploadPath = "F:\\SE\\Eclipse\\OnlinePropertyManagementSystem\\src\\main\\webapp\\landImages\\" + filepath;
	
		//try catch block to perform file functions
		try{
	  
			FileOutputStream fos = new FileOutputStream(uploadPath); 
		  
			InputStream is = file.getInputStream();
		  
			byte[] data = new byte[is.available()];
		  
			is.read(data); 
			fos.write(data); 
		  	fos.close();
	  
		} catch (Exception e) {
	  
			e.printStackTrace(); 
		  
		}
	  
		//Inserting data into the database
		isTrue = LandsDB.insertLand(landID, location, size, price, owner, ownerContact, description, filepath);
	  
		if(isTrue == true) {
	  
			//Forwarding the request to the relevant resource
			RequestDispatcher dis1 = request.getRequestDispatcher("lands.jsp");
			dis1.forward(request, response);
	  
		} else {
	  
			//Forwarding the request to the relevant resource
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessfulInsert.jsp"); 
			dis2.forward(request, response); 
			
		}
	 
	}

}
