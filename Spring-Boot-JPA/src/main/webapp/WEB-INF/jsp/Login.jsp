<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<form action="/login" method="Post">
<span>username</span>
<input type="text" name="username"><br>
<span>Password</span>
<input type="password" name="password">
<select name="city">
<option name="select">
Select
</option>
<option name="pasadena">
Pasadena
</option name="LA">
<option>
LA
</option>
</select>
<button type="submit"> Submit</button>
</form>
</body>
</html>