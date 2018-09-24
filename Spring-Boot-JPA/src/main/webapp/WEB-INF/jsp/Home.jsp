<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
   	<form action="/admin" method="get" >
     <span>Trailer</span>
     <select class="btn btn-info">
  	 <option>Select</option>
     <c:forEach var="trailer" items="${country}">
     <option name=${trailer.id}>${trailer.model}
     </option>
      </c:forEach>
      </select>
     <span>Vehicle</span>
     <select class="btn btn-info">
  	 <option>Select</option>
     <c:forEach var="vehicle" items="${result}">
     <option>${vehicle.name}</option>
      </c:forEach>
      </select>
      
      <br><span>Trailer Towing Capacity</span>
      <input type="text" id="tCapacity" placeholder="Enter value">
       <br><span>Trailer Towing Capacity</span>
       <input type="text" id=vpayload placeholder="Enter value">
    <br><button type="submit">Submit</button>
    </form>
    
  <%--  <form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>
    
    
    
    
    
  
  
	<select class="btn btn-info">
  <option>Select</option>
    <c:forEach var="trailer" items="${country}">
     <option>${trailer.model}</option>
      </c:forEach>
  
</select>
     --%>
    
  </div>
    
  </body>
  
</html>
