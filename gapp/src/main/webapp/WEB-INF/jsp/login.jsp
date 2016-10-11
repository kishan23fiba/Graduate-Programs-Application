<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Login</title>
</head>
<body background="https://www.trianglebiofuels.com/wp-content/uploads/2015/03/Gray-Background.png">
<nav class="navbar navbar-inverse" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>    
  </div>
  <a class="navbar-brand" href="login.html">GAPP</a>
  <div class="navbar-collapse collapse">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.html">Register</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<div class="col-md-4"></div>
<div class="col-md-4">

<div class="panel panel-default" >
	<div class="panel-body panel-primary">
		<div class="jumbotron" bg-color="red">
			<h1><center>LOGIN</center></h1>
		</div>
		<center>
		<form action="login.html" method="post">
			<div class="input-group">
  				<span class="input-group-addon" id="basic-addon3"><b>Email </b></span>
  				<input type="text" placeholder="Enter email" name="email" class="form-control" id="basic-url" aria-describedby="basic-addon3">
			</div>
			<br />
			<div class="input-group">
  				<span class="input-group-addon" id="basic-addon3"><b>Password </b></span>
  				<input type="password" placeholder="Enter your password" name="password" class="form-control" id="basic-url" aria-describedby="basic-addon3">
			</div>
			<br />
			<input class="btn btn-primary" type="submit" value="Login" />		
			<p><br /><b> Not a user? <a href="register.html">Register</a> here.</b></p>	
		</form>
		</center>
	</div>
</div>
</div>

</div>
<div class="col-md-4">
</div>
</body>
</html>