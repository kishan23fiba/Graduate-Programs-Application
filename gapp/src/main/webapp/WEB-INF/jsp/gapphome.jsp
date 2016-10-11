<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
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
  <a class="navbar-brand" href="gapphome.html">GAPP</a>
  <div class="navbar-collapse collapse">
    <ul class="nav navbar-nav navbar-left">
        <li><a href="departmentlist.html">Departments</a></li>        
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li>Hello, ${user}</li>
      <li><a href="logout.html">Logout</a></li>      
    </ul>
  </div>
</nav>
<font color="White">
<div class="col-md-4">
	<h3><b>Description</b></h3>
	<p align="justify">To apply for a graduate program at CSULA, a student needs to complete an online application at CSUMentor (known as the university application), submit a set of official transcripts, and pay the application fees. Some departments also require some additional application materials (known as supplemental application or department application), which may include personal statement, recommendation letters, and so on. The staff at the university admission office are responsible for importing the applications from CSUMentor to GET, and updating application status on GET to indicate whether the transcripts and application fees have been received. The university staff are also responsible for translating (using an external agency) and scanning transcripts, and uploading them to a document hosting service OnBase. The supplemental applications are sent directly to each department and are handled by department staff.
There are two problems in this process that make reviewing applications quite difficult. First, the application materials are scattered in several places (i.e. GET, OnBase, and the file cabinets in department offices) in different forms (i.e. electronic and paper). Second, the user interfaces of GET and OnBase are rather terrible and there's nothing we can do about it.
So in this project you are going to develop a web-based system we call Graduate Program Applications, or GAPP, which will host all the application materials. Specifically:
Students will use CSUMentor to submit a university application and use GAPP to submit a department application - we assume that a department application will be required by all departments.</p>
</div>
<div class="col-md-4">
	<h3><b>Duties</b></h3>
	<div align="justify">
		<li>University admission staff will upload scanned transcripts to GAPP.</li>
		<li>Department staff will upload additional application materials (e.g. personal statement, recommendation letters) to GAPP.</li>
		<li>Department admission committee will use GAPP to review the applications.</li>
	</div>
</div>
<div class="col-md-4">
	<h3><b>You (as an admin) can : </b></h3>
	<div align="justify">
		<li>List all the departments.</li>
		<li>View the details of a department, including name, programs, and the additional requirements of the department, e.g. GMAT score.</li>
		<li>Add new departments, including department programs and additional requirements.</li>
		<li>Edit departments, including changing department name, and adding/removing programs and additional requirements.</li>
	</div><br />
	<h4><b>To access your functionalities, go to the following link</b></h4>
	<br />
	<ul class="pager">
		<li><a href="departmentlist.html">GO TO DEPARTMENTS</a></li>
	</ul>
</div>
</font>
</body>
</html>