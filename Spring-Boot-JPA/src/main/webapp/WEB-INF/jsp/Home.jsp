<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Home</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
   <!-- Division CSS -->
  <link rel="stylesheet" href="http://lovepreetsingh.us/CustomCSS/division.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
  
  
<!--   Starting main Div -->
  <div class="container">


<!-- Header Div started -->
  <div class="row">
 <!--  Inner Div started -->
    <div class="col center" style=" border: 1px solid black;
    background-color: #000;
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 80px; text-align:center;
    color:#ffffff">
    <img src="http://lovepreetsingh.us/CustomCSS/RAM_logo.png" height=200px; width=auto>
    <h1>Welcome to RAM Towing Trailers</h1>
     
    <!-- Inner Div Ended -->
 </div>
 <!-- Header Div Ended -->
 </div>

 	<!-- Division of Two divs vertically started -->
    <div class="row">
    
    <!-- First Div Started -->
  <div class="column" style="background-color:#FFF">
  
  <!-- Inner Div started -->
    <div class="wrapper">
    <form class="form-signin" action="login" method="post">
      <h2 class="form-signin-heading">Admin Login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" /><br>
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/><br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </form>
     <!-- Inner Div Ended -->
  </div>
 <!--  End First Div partition -->
  </div>
  
  <!-- Second Div of Partition Started -->
  <div class="column" style="background-color:#FFF">
    <h2>Fill the RAM Trailer Information</h2>
   	<form action="/home" method="Post" >
   	
   	<!-- Form started -->
   	<div class="form-group">
   	
   	<h7 for="vehicle"><b>RAM Models</b></h7>
   	
   	<select class="btn btn-info" name="vehicle" required>
  	 <option>Select</option>
     <c:forEach var="vehicle" items="${vehicles}">
     <option>${vehicle.model}</option>
      </c:forEach>
      </select>
      	&nbsp <h7 for="vehicle"><b>Trailer</b></h7>
     <select class="btn btn-info" name="trailer" required>
  	 <option>Select</option>
     <c:forEach var="trailer" items="${trailers}">
     <option>${trailer.model}
     </option>
      </c:forEach>
      </select>
   
 <!-- Form Div Ended -->
  	</div>
   	
    <h4><b>Trailer Towing Capacity</b></h4>
      <input type="text" class="frm-group" placeholder="Please Enter the Value" name="capacity" required autofocus="" />
      <h4><b>Custom Vehicle Payload</b></h4>
      <input type="text" placeholder="Please Enter the Value" name="payload" required autofocus /><br>
      <br><button type="submit" class="btn btn-primary">Submit</button>
  		
</form>
<!-- Second Div Partition finished -->
</div>



 <!-- End of Division Div -->
  </div>
  
  
  <!-- End of Container Div -->
  </div>
  
 
  
  
  
  
    
  </body>
  
</html>
