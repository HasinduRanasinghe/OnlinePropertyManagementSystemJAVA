<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Update Details</title>
	
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
          				<a class="nav-link active" aria-current="page" href="profile.jsp">Profile</a>
        			</li>
        
      			</ul>
      
    		</div>
    		
  		</div>
  		
	</nav>
	  
	  <div class="containerLog">
		<div class="row">
	    	<div class="col-sm-9 col-md-7 col-lg-5 mx-auto pt-5">
	        	<div class="card border-0 shadow rounded-3 my-5">
	          		<div class="card-body p-5 p-sm-5">
	            		<h5 class="card-title text-center mb-5 fw-light fs-5">Update Details</h5>
	            		
	            		<form action="userUp" method="post">
	            		
	            			<div class="form-floating mb-3">
		                		<input type="text" name="username" class="form-control" id="floatingUname" placeholder=" " required>
		                		<label for="floatingUname">Current User Name</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="text" name="firstname" class="form-control" id="floatingFname" placeholder=" " required>
		                		<label for="floatingFname">First Name</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="text" name="lastname" class="form-control" id="floatingLname" placeholder=" " required>
		                		<label for="floatingLname">Last Name</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="date" name="birthday" class="form-control" id="floatingBD" placeholder=" " required>
		                		<label for="floatingBD">Birthday</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="text" name="phone" class="form-control" id="floatingPN" placeholder=" " required>
		                		<label for="floatingPN">Phone Number</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="email" name="email" class="form-control" id="floatingEmail" placeholder=" " required>
		                		<label for="floatingEmail">Email Address</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="password" name="password" class="form-control" id="floatingPassword" placeholder=" " required>
		                		<label for="floatingPassword">Password</label>
		              		</div>
		              		<div class="form-floating mb-3">
		                		<input type="password" name="repassword" class="form-control" id="floatingRPassword" placeholder=" " required>
		                		<label for="floatingRPassword">Re-enter Password</label>
		              		</div>
			
		            		<div class="d-grid">
		                		<button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Update</button>
		            		</div>
		            		<hr class="my-4">
	
	          			</form>		
	        		</div>
	      		</div>
	    	</div>
	  	</div>
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