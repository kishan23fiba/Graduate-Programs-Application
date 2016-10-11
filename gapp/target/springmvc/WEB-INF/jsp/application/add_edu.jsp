<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Add Educational Background</title>
</head>
<body background="http://orig05.deviantart.net/de08/f/2011/266/8/c/granulation_background_in_grey_by_java_user-d4apgir.jpg">
<nav class="navbar navbar-inverse" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>    
  </div>
  <!-- <a class="navbar-brand" href="/springmvc/gapphomestudent.html">GAPP</a> -->
  <div class="navbar-collapse collapse">
    <ul class="nav navbar-nav navbar-left">
    	<!-- <li><a href="/springmvc/gapphomestudent.html">Home</a></li> -->        
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.html">Logout</a></li>      
    </ul>
  </div>
</nav>
<div class="container">
	<div class="jumbotron" style="background-color:rgba(245, 245, 245, 0.3)">
		<center>
			<h1>NEW APPLICATION</h1>
		</center>
	</div>
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<center>
		<h4 style="color:white;">Educational Details</h4>
		<hr>
		<form action="add_edu.html" method="post">
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">College Name</span>
				<input type="text" name="clgname" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Degree</span>
				<input type="text" name="degree" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Time Period</span>
				<input type="text" name="timeperiod" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Major</span>
				<input type="text" name="major" class="form-control" required/>
			</div><br />
			<center>
			<input type="submit" name="Submit & Next" class="btn btn-primary" /><br />
			</center>
		</form>
		</center>
	</div>
	<div class="col-md-4"></div>
</div>
</body>
</html>