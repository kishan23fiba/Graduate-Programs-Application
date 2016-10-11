<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Application List</title>
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
    	<li><a href="/springmvc/gapphomestudent/add.html?uid=${user_id }">New Application</a></li>
    	        
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout.html">Logout</a></li>           
    </ul>
  </div>
</nav>
<div class="container">
	<div class="jumbotron" style="background-color:rgba(245, 245, 245, 0.3)">
		<center>
			<h1>STUDENT-APPLICATIONS</h1>
		</center>
	</div>
	<font color="white">
	<table class="table table-bordered">
	<tr>
		<th><center>ID</center></th>
		<th><center>Term</center></th>
		<th><center>Department</center></th>
		<th><center>Program</center></th>
		<th><center>Submitted-On</center></th>
		<th><center>Status</center></th>
		<th><center>Details</center></th>
		<th><center>Edit</center></th>
	</tr>
	<c:forEach items="${applications}" var="app" varStatus="status">
		<tr>
			<td align="center">${app.id}</td>
			<td align="center">${app.term}</td>
			<td align="center">${deptname[status.index]}</td>
			<td align="center">${progname[status.index]}</td>
			<td align="center">${app.dateSubmitted}</td>
			<td align="center">${app.status}</td>
			<td align="center"><a href="/springmvc/gapphomestudent/applicationlist/view.html?id=${app.id}">Details</a></td>
			<c:if test="${app.status=='Not Submitted'}">
				<td align="center"><a href="/springmvc/gapphomestudent/edit.html?id=${app.id}">Edit</a></td>
			</c:if>
			<c:if test="${app.status=='Submitted'}">
				<td align="center">----</td>
			</c:if>
			
		</tr>
	</c:forEach>
	</table>
	</font>
</div>


</body>
</html>