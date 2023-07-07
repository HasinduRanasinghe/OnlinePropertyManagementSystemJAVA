<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String url ="jdbc:mysql://localhost:3306/onlinepropertymanagement";
	String usernameDB = "root";
	String passwordDB= "hasindu2098#";
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	 
	
	<title>Rapid Lands</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="navfooter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		
  		<div class="container">
    		
    		<a class="navbar-brand" href="#"><span class="text-warning">Rapid</span>Lands</a>
    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    		</button>
    		
    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
      			
      			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="lands.jsp">Lands</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="#">Houses</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="apartments.jsp">Apartments</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="addHouses.jsp">Add Houses</a>
        			</li>
       
      			</ul>
      
    		</div>
    		
  		</div>
  		
	</nav>
	
	<%
		try{
			String imgFileName = null;
			connection = DriverManager.getConnection(url, usernameDB, passwordDB);
			statement = connection.createStatement();
			String sql = "select * from onlinepropertymanagement.housesdetails";
			resultSet = statement.executeQuery(sql);
			
		while(resultSet.next()){
			
	%>
	
	<div class = "container pt-5">
	
			<div class="row mx-auto pt-5 pb-5">
			  
			  <div class="col ">
			    
			    <div class="card">
			    
			    <div class="img-area mb-4 mt-4">
	            	<center><img src="houseImages/<%=resultSet.getString("filepath")%>" class="center img-fluid" alt=""></center>
	            </div>
	            
			      <div class="card-body">
			         
			         <h5 class="card-title"><%=resultSet.getString("houseID")%></h5>
			        
			        <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Location</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0"><%=resultSet.getString("location")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Size</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0"><%=resultSet.getString("size")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Price</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0">LKR.<%=resultSet.getString("price")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Owner</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0"><%=resultSet.getString("owner")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Owner Contact</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0"><%=resultSet.getString("ownerContact")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="row">
		              <div class="col-sm-3">
		                <p class="mb-0">Description</p>
		              </div>
		              <div class="col-sm-9">
		                <p class="text-muted mb-0"><%=resultSet.getString("description")%></p>
		              </div>
		            </div>
		            
		            <hr>
		            
		            <div class="d-grid pb-2">
		                		<button class="btn btn-primary btn-login text-uppercase fw-bold" onclick="window.location.href='updateHouses.jsp';" type="submit">Update</button>
		            </div>
		            
		            <div class="d-grid">
		                		<button class="btn btn-primary btn-login text-uppercase fw-bold" onclick="window.location.href='deleteHouses.jsp';" type="submit">Delete</button>
		            </div>
		            
			      </div>
			    </div>
			  
			  </div>
			  
			</div>
	</div>
		
		<%
				}
		
			connection.close();
			
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		%>
		  
    <div class="footer-basic">
     
      <footer>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="contactus.jsp">Contact Us</a></li>
                <li class="list-inline-item"><a href="privacyPolicy.jsp">Privacy Policy</a></li>
            </ul>
            
            <p class="copyright">RapidLands © 2022</p>
            
      </footer>
      
     </div>
  
 	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>>