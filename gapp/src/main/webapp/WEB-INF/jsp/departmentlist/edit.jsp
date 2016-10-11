<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Edit Department</title>
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
	<div class="col-md-3"></div>
	<div class="col-md-6">			
		<div class="panel panel-default" >
			<div class="panel-body panel-primary">
				<div class="jumbotron">
					<h1><center>EDIT-DEPARTMENT</center></h1>
				</div>
				<center>
				<form:form modelAttribute="department">
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3"><b>Department Name </b></span>
  							<form:input path="dname" class="form-control" id="basic-url" aria-describedby="basic-addon3" value="${department.dname}" required="required"/>
					</div>
					<br />				
					<input class="btn btn-primary" type="submit" value="Update" />
				</form:form>
				</center>
			</div>
		</div>							
	</div>
	<div class="col-md-3"></div>		
</div>				
</body>
</html>