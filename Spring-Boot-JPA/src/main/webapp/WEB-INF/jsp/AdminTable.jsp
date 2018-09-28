<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Table</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <!-- Division CSS -->
  <link rel="stylesheet" href="http://lovepreetsingh.us/CustomCSS/division.css">
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
    <form action="/admin" method="Get"><button type="submit" class="btn btn-success">Add Entry</button> </form>
 </div>
 <!-- Header Div Ended -->
 </div>

<c:choose> 

<c:when test="${ mode =='Authorised'}">
	
	<h1 style="text-align:center"> <mark> Welcome to Admin Portal <mark></h1>
	<div style="margin-left:50%; margin-top:2%">
	<form action="/logout" method="post"><button type="submit" class="btn btn-danger">Logout</button> </form>
	</div>
	<div class="row">
	<div class="column" style="background-color:#FFF;">
    <div class="wrapper">
      <h2 class="form-signin-heading">Entries for Vehicles!</h2>
      
      <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Model</th>
      <th scope="col">GVM</th>
      <th scope="col">GCM</th>
       <th scope="col">Curb Weight</th>
      <th scope="col">Max Payload</th>
      <th scope="col">Max Towing</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="vehicle" items="${vehicles}">
    <tr>
      <td>${vehicle.model}</td>
      <td>${vehicle.gvm}</td>
      <td>${vehicle.gcm}</td>
      <td>${vehicle.kerb_weight}</td>
      <td>${vehicle.v_payload}</td>
      <td>${vehicle.max_towing}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
      

  
  </div>
  </div>
  
  
  
  <div class="column" style="background-color:#FFF;">
    <div class="wrapper">
      <h2 class="form-signin-heading">Entries for Trailer!</h2>
      
        <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Model</th>
      <th scope="col">Max Payload</th>
      <th scope="col">Max Towing</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="trailer" items="${trailers}">
    <tr>
      <td>${trailer.model}</td>
      <td>${trailer.payload}</td>
      <td>${trailer.max_towing}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
      
      
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