<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
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
    <c:choose>
    <c:when test="${mode == 'Authorised' }">
    <form action="/viewtables" method="Post"><button type="submit" class="btn btn-success">View Table</button> </form>
 	<form action="/adminhome">
 	<button type="submit" class="btn btn-success">Admin Home</button> 
 	 </form>
 </c:when>
 </c:choose>
 
 </div>
 <!-- Header Div Ended -->
 </div>

<c:choose> 

<c:when test="${ mode =='Authorised'}">
	
	<h1 style="text-align:center"> <mark> Welcome to Admin Portal <mark></h1>
	<h3 style="text-align:center"> Add New Entry in the Database </h3>
	<div style="margin-left:50%">
	<form action="/logout" method="post"><button type="submit" class="btn btn-danger">Logout</button> </form>
	</div>
	
	<div class="row">
	<div class="column" style="background-color:#FFF;">
    <div class="wrapper">
    <form class="form-signin" action="/admin" method="Post">
      <h2 class="form-signin-heading">Add New Entry for RAM models only!</h2>
       <c:choose>
  <c:when test="${mode == 'Message'}">
  <h3><mark> New Entry is Successfully Added into Vehicle Database.</mark></h3>
  </c:when>
  
  <c:otherwise>
  <c:choose>
  <c:when test="${mode =='error'}">
   <h3><mark>Error Will adding new Entry into the database.</mark></h3>
  </c:when>
  </c:choose>
  </c:otherwise>
  </c:choose>
      
      
      <label>RAM Model </label>
      <input type="text" class="form-control" name="model" placeholder="RAM Model Name (ex. RAM 1500 Express)" required="" autofocus="" /><br>
      <label>GVM</label>
      <input type="text" class="form-control" name="GVM" placeholder="GVM (ex.12345)" required="" autofocus=""/><br>
      <label>GCM </label>
      <input type="text" class="form-control" name="GCM" placeholder="GCM (ex.12345)" required="" autofocus="" /><br>
      <label>Kerb Weight</label>
      <input type="text" class="form-control" name="kerb" placeholder="kerb Weight (ex.12345)" required="" autofocus=""/><br>
      <label>Maximum Payload </label>
      <input type="text" class="form-control" name="payload" placeholder="Max Payload (ex.12345)" required="" autofocus="" /><br>
      <label>Maximum Towing </label>
      <input type="text" class="form-control" name="towing" placeholder="Max Towing (ex.12345)" required="" autofocus=""/><br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>
  
  </div>
  </div>
  
  
  
  <div class="column" style="background-color:#FFF;">
    <div class="wrapper">
    <form class="form-signin" action="/trailerload" method="Post">
      <h2 class="form-signin-heading">Add New Entry for Trailers models only!</h2>
      <label>Trailer Model </label>
      <input type="text" class="form-control" name="model" placeholder="RAM Model Name" required="" autofocus="" /><br>
      <label>Maximum Payload </label>
      <input type="text" class="form-control" name="payload" placeholder="Max Payload (ex.12345)" required="" autofocus="" /><br>
      <label>Maximum Towing </label>
      <input type="text" class="form-control" name="towing" placeholder="Max Towing (ex.12345)" required="" autofocus=""/><br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
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