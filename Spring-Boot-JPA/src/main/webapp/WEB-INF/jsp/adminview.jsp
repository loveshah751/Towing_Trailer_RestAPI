<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome To Admin Portal</h1>
   <span>Trailer</span>
    <select class="btn btn-info">
  <option>Select</option>
    <c:forEach var="trailer" items="${value}">
     <option>${trailer.model}</option>
      </c:forEach>
      </select>
</body>
</html>