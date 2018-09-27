<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page2</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
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
<div style="text-align:center">
<h1 >Here is Some of the Information about your choices</h1>
</div>

<div>
<form action="/Page2" method="Post" >
  <div class="form-group">
    <label for="exampleInputEmail1">Kerb Weight</label>
    <input type="text" class="form-control" name="kerbweight" value="<c:out value="${kerbweight}"/>" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Vehicle Payload</label>
    <input type="text" class="form-control" name="v_payload"value="<c:out value="${v_payload}"/>" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputFile">Trailer Payload</label>
   
   	<input type="text" class="form-control" name="T_payload" value="<c:out value="${t_payload}"/>" readonly>
  </div>
  <div class="form-group">
    <label>Trailer Tare Mass</label>
     <input type="text" class="form-control" name="t_mass" value="<c:out value="${t_payload}"/>" readonly>
  </div>
  
  <div class="form-group">
    <label>Maximum Trailer Towing</label>
     <input type="text" class="form-control" name="towing" value="<c:out value="${towing}"/>" readonly>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>



</div>

</body>
</html>