<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Rapid Home</title>
	
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
          				<a class="nav-link active" aria-current="page" href="#">Home</a>
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
          				<a class="nav-link active" aria-current="page" href="userLogin.jsp">Login</a>
        			</li>
       
        
        
      			</ul>
      
    		</div>
    		
  		</div>
  		
	</nav>
	
	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  		
  		<div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
		 </div>
  
  		<div class="carousel-inner">
    		
    		<div class="carousel-item active">
      			<img src="img/land01.jpg" class="d-block w-100" alt="...">
      			<div class="carousel-caption d-none d-md-block">
       				 <h5>Find Your Dream Land</h5>
    				 <p>We provide you the best among the best.</p>
      			</div>
    		</div>
    
    		<div class="carousel-item">
      			<img src="img/house01.jpg" class="d-block w-100" alt="...">
      			<div class="carousel-caption d-none d-md-block">
        			<h5>Make It Happen</h5>
       				<p>Build or buy your dream home with us.</p>
      			</div>
    		</div>
    
    		<div class="carousel-item">
      			<img src="img/apartment01.jpg" class="d-block w-100" alt="...">
      			<div class="carousel-caption d-none d-md-block">
        			<h5>Views Make Life</h5>
        			<p>Stay where you feel like home.</p>
      			</div>
    		</div>
  		
  		</div>
  
  		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Previous</span>
  		</button>
  
  		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Next</span>
  		</button>
	
	</div>
	     
    <section id="portfolio" class="portfolio section-padding">
       <div class="container">
           
           <div class="row">
               <div class="col-md-12">
                   <div class="section-header text-center pb-5">
                       <h2>What Can You Get From Us</h2>
                       <p>We are delighted to provide you our services at our level best</p>
                   </div>
               </div>
           </div>
           
           <div class="row">
               <div class="col-12 col-md-12 col-lg-4">
                   <div class="card text-light text-center bg-white pb-2">
                       <div class="card-body text-dark">
                         <div class="img-area mb-4">
                             <img src="img/land02.jpg" class="img-fluid" alt="">
                         </div>
                           <h3 class="card-title">Lands</h3>
                           <p class="lead">Are you looking forward to buy your dream land? We are here to help you.<br>Explore with us</p>
                           <button class="btn bg-warning text-dark" onclick="window.location.href='lands.jsp';">Explore More</button>
                       </div>
                   </div>
               </div>
               
               <div class="col-12 col-md-12 col-lg-4">
                   <div class="card text-light text-center bg-white pb-2">
                       <div class="card-body text-dark">
                         <div class="img-area mb-4">
                             <img src="img/house02n.jpg" class="img-fluid" alt="">
                         </div>
                           <h3 class="card-title">Houses</h3>
                           <p class="lead">We bring your dreams to alive. Newly constructed homes are now available.<br>Explore with us</p>
                           <button class="btn bg-warning text-dark" onclick="window.location.href='houses.jsp';">Explore More</button>
                       </div>
                   </div>
               </div>
               
               <div class="col-12 col-md-12 col-lg-4">
                   <div class="card text-light text-center bg-white pb-2">
                       <div class="card-body text-dark">
                         <div class="img-area mb-4">
                             <img src="img/apartment02.jpg" class="img-fluid" alt="">
                         </div>
                           <h3 class="card-title">Apartments</h3>
                           <p class="lead">Places with everything you want at your doorstep. These apartments are for you.<br>Explore with us</p>
                           <button class="btn bg-warning text-dark" onclick="window.location.href='apartments.jsp';">Explore More</button>
                       </div>
                   </div>
               </div>
           
           </div>
       
       </div>
     
     </section>
      
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