<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Academic Details</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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
			<h1>EDIT-APPLICATION</h1>
		</center>
	</div>
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<center>
		<h4 style="color:white;">Academic Information</h4>
		<hr>
		<form action="edit_acad.html" method="post" enctype="multipart/form-data">
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">GPA</span>
				<input type="text" name="gpa" value="${acad.gpa }" class="form-control"/>
			</div><br />
			<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">You have uploaded</span>
					<a href="../gapphomestudent/applicationlist/view1.html?filename=${acad.transcript}" class="btn btn-primary; form-control" >${acad.transcript}</a>
			</div><br />	
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Upload New Transcript</span>
				<input type="file" value ="${acad.transcript}" name="file" class="form-control">
			</div><br />
			<input type="hidden" name="sid" value="${sid}" />
			<input type="submit" value="Submit & Next" class="btn btn-primary"/>
		</form>
		</center>
	</div>
	<div class="col-md-3"></div>
</div>
</body>
</html>