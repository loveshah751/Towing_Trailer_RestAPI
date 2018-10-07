<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page 4</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

 <link rel="stylesheet" href="http://lovepreetsingh.us/CustomCSS/popstyle.css">

<script src="http://lovepreetsingh.us/CustomCSS/popscript.js"></script>

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
    <form action="/adminhome">
<button type="submit" class="btn btn-danger">Home</button>
</form>

<div class="popup" onclick="myFunction()" align="center">
  <h1>
   <input type="button" class="form-control btn btn-primary"value="Check the Results">
     </h1>
 <c:if test = "${gvm_rem > 0}">
         <span class="popuptext" id="myPopup">Trailer is Compatible</span>
      </c:if>
  <span class="popuptext" id="myPopup">Sorry Trailer is not Compatible!</span>
</div>

 </div>
 
 <!-- Header Div Ended -->
 </div>
<div style="text-align:center">
<h1> Results!</h1>
</div>
<div>
<form action="home" method="post">
  <div class="form-group">
   <label>GVM Remaining</label>
<input type="text"  class="form-control" name="ATM" value="<c:out value="${gvm_rem}"/>" readonly><br>

<label>GTM</label>
<input type="text"  class="form-control" name="ATM" value="<c:out value="${gtm}"/>" readonly><br>

<label>GCM </label>
<input type="text"  class="form-control" name="ATM" value="<c:out value="${gcm}"/>" readonly>
</div>
</form>

</div>



</div>

<!-- 
My HTML -->

<h1> </h1>


</body>
</html>