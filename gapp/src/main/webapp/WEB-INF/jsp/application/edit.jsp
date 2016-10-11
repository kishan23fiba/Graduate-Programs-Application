<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Edit Application</title>
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
			<h4 style="color:white;">Student Details</h4>
			<hr>
			<form action="edit.html" method="post">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">First Name</span>
					<input type="text" name="fname" value="${student.fname }" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Last Name</span>
					<input type="text" name="lname" value="${student.lname }" class="form-control"/>
				</div><br />			
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Date of Birth</span>
					<input type="date" name="dob" value="${dob}" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Gender</span>
						<select name="gender" class="form-control">
							<c:if test="${student.gender=='male'}">
							<option selected value="male">MALE</option>
							<option value="female">FEMALE</option>
						</c:if>
						<c:if test="${student.gender=='female'}">
							<option value="male">MALE</option>
							<option selected value="female">FEMALE</option>
						</c:if>
						</select>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Citizenship</span>
					<input type="text" name="citizenship" value="${student.citizenship }" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">CIN</span>
					<input type="text" name="cin" value="${student.cin }" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Email</span>
					<input type="text" name="email" value="${student.email }" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Phone</span>
					<input type="text" name="phone" value="${student.phone }" class="form-control"/>
				</div><br />
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Select Term</span>
					<select name="term" class="form-control">
					<option value="" disabled>Select a Term</option>
					<option value="Fall 2016" ${application.term=='Fall 2016'?'selected="selected"' : '' }>Fall 2016</option>
					<option value="Summer 2016" ${application.term=='Summer 2016'?'selected="selected"' : '' }>Summer 2016</option>
					<option value="Spring 2017" ${application.term=='Spring 2017'?'selected="selected"' : '' }>Spring 2017</option>
					</select></div><br />
		
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon2">Programs</span> 
				<select name="pno" class="form-control">
					<option value="" disabled>Select Program</option>
					<c:forEach items="${proglist}" var="p">
						<option value="${p.id}" ${pro==p.id ? 'selected="selected"' : ''}>${p.pname}</option>
					</c:forEach>
				</select>
				</div><br />
			<input type="hidden" name="id" value="${application.id}"/>
			<input type="submit" value="Submit & Next" class="btn btn-primary">		
		</form>		
		</center>
	</div>
	<div class="col-md-3"></div>
</div>
</body>
</html>