<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Here is Some of the Information about your choices</h1>
   
   <form action="/Page3" method="Post" >
   
   <span>Kerb Weight</span>
   <input type="text" name="kerbweight" value=845 readonly><br>
   
      <span>Vehicle Payload</span>
   <input type="text" name="kerbweight" value=800 readonly><br>
      
      <span>Trailer Payload</span>
   
   <input type="text" name="kerbweight" value=1990 readonly><br>
         <span>Trailer Tare Mass</span>
   
   <input type="text" name="kerbweight" value=1990 readonly><br>
         
         
         <span>Maximum Trailer Towing</span>
   
   <input type="text" name="kerbweight" value=3500 readonly>
   
   
  <br> <button type="submit">Submit </button>
    </form>
</body>
</html>