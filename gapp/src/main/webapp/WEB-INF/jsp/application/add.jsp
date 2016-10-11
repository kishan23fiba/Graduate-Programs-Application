<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Add New Application</title>
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
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<center>
		<h4 style="color:white;">Student Details</h4>
		<hr>
		<form action="add.html" method="post">
			<input type="hidden" name="uid" value="${uid}"/>
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">First Name</span>
				<input type="text" name="fname" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Last Name</span>
				<input type="text" name="lname" class="form-control" required />
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Date of Birth</span>
				<input type="date" name="dob" class="form-contol" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Gender</span>
				<select name="gender" class="form-control" required>
					<option value="" disabled selected>----------------</option>
					<option value="male">MALE</option>
					<option value="female">FEMALE</option>
				</select>
			</div><br />
			<div class="input-group" >
				<span class="input-group-addon" id="basic-addon2">Citizenship</span>
				<input type="text" name="citizenship" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">CIN</span>
				<input type="text" name="cin" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Email Address</span>
				<input type="text" name="email" class="form-control" required/>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Phone Number</span>
				<input type="text" name="phone" class="form-control" required/>
			</div><br />
			<center>
			<input type="submit" value="Submit & Next" class="btn btn-primary">
			</center>
		</form>
		</center>
	</div>
	<div class="col-md-3"></div>
	
</div>
		
		

</body>
</html>