<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>User Profile</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="navfooter.css">
	<link rel="stylesheet" href="forms.css">
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
          				<a class="nav-link active" aria-current="page" href="houses.jsp">Houses</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="apartments.jsp">Apartments</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="updateUser.jsp">Update Profile</a>
        			</li>
        			
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="home.jsp">Log Out</a>
        			</li>
        
      			</ul>
      
    		</div>
    		
  		</div>
  		
	</nav>
	
  	<div class="container py-5">
  
  		<c:forEach var="user" items="${user}">

	    <div class="row">
	      
	      <div class="col-lg-4 pt-5 align-self-center">
	        
	        <div class="card mb-4">
	          <div class="card-body text-center">
	            <img src="https://imgv3.fotor.com/images/blog-richtext-image/10-profile-picture-ideas-to-make-you-stand-out.jpg" alt="avatar" class="rounded img-fluid">
	            <h5 class="my-3">${user.userName}</h5>
	            <p class="text-muted mb-1">Welcome to your profile</p>
	          </div>
	        </div>
	       
	      </div>
	      
	      <div class="col-lg-8 pt-5 align-self-center">
	        <div class="card mb-4">
	          <div class="card-body">
	            
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Fist Name</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${user.firstname}</p>
	              </div>
	            </div>
	            
	            <hr>
	            
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Last Name</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${user.lastname}</p>
	              </div>
	            </div>
	            
	            <hr>
	            
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Birthday</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${user.birthday}</p>
	              </div>
	            </div>
	            
	            <hr>
	            
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Phone No.</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${user.phone}</p>
	              </div>
	            </div>
	            
	            <hr>
	            
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Email</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${user.email}</p>
	              </div>
	            </div>
   
	          </div>
	        </div>   
	      </div>
	    </div>
	    </c:forEach>
    </div>
	
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
</html>