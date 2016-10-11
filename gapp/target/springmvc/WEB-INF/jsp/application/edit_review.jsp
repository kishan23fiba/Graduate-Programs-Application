<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Edit Review</title>
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
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<center style="color:white;">
			<h3>Review</h3>
			<hr>
			<div class="row"><p>You can <b>SAVE</b> or <b>SUBMIT</b> the application. Once you <b>SUBMIT</b> the application, <b>it cannot be edited</b>. You can still <b>edit a SAVED</b> application</p></div>
			<form action="edit_review.html" method="post">
				<input type="hidden" name="id" value="${id}">
				<input type="submit" value="Save" name="save" class="btn btn-primary"/>&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="submit" value="Submit" name="submit" class="btn btn-primary"/>
			</form>	
		</center>
	</div>
	<div class="col-md-2"></div>
</div>
</body>
</html>