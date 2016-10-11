<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Application View</title>
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
      <li><a href="../logout.html">Logout</a></li>      
    </ul>
  </div>
</nav>
<div class="container">
	<div class="jumbotron" style="background-color:rgba(245, 245, 245, 0.3)">
		<center>
			<h1>STUDENT-APPLICATION</h1>
		</center>
	</div>
	<font color="white">
	<div class="row">
	<div class="col-md-4">
		<div class="row">
			<h4>Application Details:</h4><br />
			Term: ${application.term} <br >
			Date Submitted: ${application.dateSubmitted}<br />
			Status: ${application.status} <br />	
		</div>
		<div class="row">
			Department: ${department.dname}<br />
			Program: ${program.pname}		
		</div>
	</div>
	<div class="col-md-4">
		<h4>Student details:</h4><br />
		Name: ${student.fname } ${student.lname}<br />
		CIN: ${student.cin}<br />
		Date of Birth: ${student.dob} <br />
		Gender: ${student.gender}<br />
		Phone: ${student.phone}<br />
		Citizenship: ${student.citizenship}<br />	
	</div>
	<div class="col-md-4">
		<h4>Academic Records</h4>
		<br />
		GPA: ${academicRecord.gpa}<br />
		Transcript: <a href="../applicationlist/view1.html?filename=${academicRecord.transcript}">${academicRecord.transcript}</a>	
	</div>
	</div>
	<hr>
		<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<h4>Educational Background</h4>
			<br /><br />
			<table class="table table-bordered">
			<tr>
				<th>College</th>
				<th>Degree</th>
				<th>Major</th>
				<th>Time Period</th>
			</tr>
			<c:forEach items="${educationalBackground}" var="edu">
				<tr>
					<td>${edu.collegeName }</td>
					<td>${edu.degree }</td>
					<td>${edu.major }</td>
					<td>${edu.timePeriod} yrs</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		<div class="col-md-3"></div>
		</div>
<br /><br />
</font>
</div>

</body>
</html>