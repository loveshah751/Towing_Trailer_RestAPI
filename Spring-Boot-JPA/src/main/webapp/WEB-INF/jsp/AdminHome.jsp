<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin Home</title>
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
    	
    
    
    <div align="center" style="margin-top:5px">
	<form action="/logout" method="post"><button type="submit" class="btn btn-danger">Logout</button> </form>
	</div>
 </div>
 <!-- Header Div Ended -->
 </div>
 
 <c:choose> 

<c:when test="${ mode =='Authorised'}">

<h1 style="text-align:center"> <mark> Welcome <c:out value="${name}"/> </mark></h1>
	<h3 style="text-align:center"> Please Select your Choice </h3>
	
<div class="row">
	<div class="column" style="background-color:#FFF;">
    <div class="wrapper">
    <h2 class="form-signin-heading">Add New Entry for RAM Trucks!</h2>
    <form class="form-signin" action="/admin" method="Post">
   	<button type="submit" class="btn btn-primary">Add Entry</button><br>
   	</form>
  
  </div>
  </div>
  
  
  
  <div class="column" style="background-color:#FFF;">
    <div class="wrapper">
      <h2 class="form-signin-heading">Check the Compatibility!</h2>
      <h3>You can check the Compatibility for your Custom Entries.</h3>
     <form class="form-signin" action="/compatible">
   		<button type="submit" class="btn btn-primary">Check the Compatibility</button>
   </form>
  </div>
  </div>
</div>	




</c:when>







<c:otherwise>
        <c:choose>
            <c:when test="${mode =='Unauthorised'}">


<h1 style="color:red; text-align:center"> <b>Unauthorised Access to Admin Portal!</b></h1>
<div class="text-center">
<a href="/home"><img src="http://lovepreetsingh.us/CustomCSS/unauthorized.png" class="rounded mx-auto d-block">
</a>
</div>

</c:when>
            </c:choose>
            </c:otherwise>


</c:choose>


 	
</div>


</body>
</html>