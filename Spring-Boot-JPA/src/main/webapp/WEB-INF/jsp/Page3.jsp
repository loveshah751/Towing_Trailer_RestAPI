<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page 3</title>
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
<h1>Some More Information about your Selection </h1>
</div>

<div>
<form action="/Page3" method="Post">
  <div class="form-group">
    <label for="exampleInputEmail1">Vehicle Kerb Weight</label>
  <input type="text"  class="form-control" name="v_kerb" value="<c:out value="${kerb}"/>" readonly><br>
   </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Vehicle Payload</label>
  <input type="text"  class="form-control" name="payload_Entered" value="<c:out value="${payload_enter}"/>" readonly><br>
</div>

  <div class="form-group">
    <label for="exampleInputFile">Aggregate Trailer Mass</label>
   
  <input type="text"  class="form-control" name="ATM" value="<c:out value="${atm}"/>" readonly><br>
  </div>
  
  <div class="form-group">
    <label>Tow Ball Download</label>
 <input type="text"  class="form-control" name="TBD" value="<c:out value="${tbd}"/>" readonly><br>
</div>
  
  <div class="form-group">
    <label>Vehicle Payload Remaining</label>
  <input type="text"  class="form-control" name="v_payload_remaining" value="<c:out value="${v_rem}"/>" readonly><br>
</div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>



</div>


</body>
</html>