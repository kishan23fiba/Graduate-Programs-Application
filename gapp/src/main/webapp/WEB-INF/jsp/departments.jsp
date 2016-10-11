<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Departments</title>
</head>
<body background="https://www.trianglebiofuels.com/wp-content/uploads/2015/03/Gray-Background.png" >
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
    	<li><a href="gapphome.html">Home</a></li>
        <li><a href="departmentlist.html">Departments</a></li>        
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li>Hello, ${user}</li>
      <li><a href="logout.html">Logout</a></li>      
    </ul>
  </div>
</nav>
<font color="white">
<div class="container">
<div class="jumbotron">
	<center>
	<h1><font color="black">DEPARTMENT HOME</font></h1>
	</center>
</div>
<ul class="pager">
	<li><a href="/springmvc/departmentlist/add.html">ADD NEW DEPARTMENT</a></li>
</ul>
<div class="table-responsive">
	<table class="table table-bordered">
		<tr>			
			<th style="text-align:center">Department Name</th>
			<th style="text-align:center">Number of Programs</th>
			<th style="text-align:center">Details</th>
			<th style="text-align:center">Edit</th>					
		</tr>
		<c:forEach items="${departments}" var="dept" varStatus="status">
			<tr>
				<td align="center">${dept.dname}</td>
				<td align="center">${programCount[status.index]}</td>	
				<td align="center"><a class="bg-primary" href="/springmvc/departmentlist/view.html?id=${dept.dno}">Details</a>
				<td align="center"><a class="bg-primary" href="/springmvc/departmentlist/edit.html?id=${dept.dno}">Edit</a>			
			</tr>
		</c:forEach>
	</table>
</div>
</div>

</font>
</body>
</html>