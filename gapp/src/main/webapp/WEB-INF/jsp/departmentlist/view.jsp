<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Department-View</title>
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
    	<li><a href="../gapphome.html">Home</a></li>
        <li><a href="../departmentlist.html">Departments</a></li>        
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li>Hello, ${user}</li>
      <li><a href="../logout.html">Logout</a></li>      
    </ul>
  </div>
</nav>

<div class="container">
	<div class="jumbotron">
		<center><h1>${department.dname}</h1></center>
	</div>
<font color="white">	
<br />
<div class="col-md-6">
<h3>Programs</h3>
<ul class="pager">
	<li><a href="/springmvc/programs/add.html?id=${department.dno}">Add Programs</a></li>
</ul>
<table class="table table-bordered">
	<tr>
		<th style="text-align:center">Program Name</th>
		<th style="text-align:center">Edit</th>
		<th style="text-align:center">Delete</th>
	</tr>
	<c:forEach items="${programs}" var="prog">
		<tr>
			<td style="text-align:center">${prog.pname}</td>
			<td style="text-align:center"><a class="bg-primary" href="/springmvc/programs/edit.html?id=${prog.id}">Edit</a></td>
			<td style="text-align:center"><a class="bg-primary" href="/springmvc/programs/delete.html?id=${prog.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</div>
<div class="col-md-6">
<h3>Additional Requirements </h3>
<ul class="pager">
	<li><a href="/springmvc/additionalinfo/add.html?id=${department.dno}">Add Additional Requirements</a></li>
</ul>
<table class="table table-bordered">
	<tr>
		<th style="text-align:center">Name</th>
		<th style="text-align:center">Required</th>
		<th style="text-align:center">Type</th>
		<th style="text-align:center">Edit</th>
		<th style="text-align:center">Delete</th>
	</tr>
	<c:forEach items="${additionalinfo}" var="info">
		<tr>
			<td style="text-align:center">${info.name}</td>
			<td style="text-align:center">${info.required}</td>
			<td style="text-align:center">${info.type}</td>
			<td style="text-align:center"><a class="bg-primary" href="/springmvc/additionalinfo/edit.html?id=${info.id}">Edit</a></td>
			<td style="text-align:center"><a class="bg-primary" href="/springmvc/additionalinfo/delete.html?id=${info.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</div>
</font>
</div>
</body>
</html>