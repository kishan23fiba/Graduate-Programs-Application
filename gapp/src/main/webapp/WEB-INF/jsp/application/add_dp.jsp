<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<title>Add dept & programs</title>
<script type="text/javascript">
	$(document).ready(function(){
		$('#tempd').change(function(){
			var id=$("#tempd").val();			
			$.ajax({
				type: 'POST',
				url: '/springmvc/getProg.html',
				data: {
					dno : id
				},
				success : function(data){
					$("#tempp").html(data)
				}
			});
		});
	});
</script>
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
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<form action="add_dp.html" method="post">
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Term</span>
				<select name="term" class="form-control" required>
				<option value="" disabled selected>Select a Term</option>
				<option value="Fall 2016">Fall 2016</option>
				<option value="Summer 2016">Summer 2016</option>
				<option value="Spring 2017">Spring 2017</option>
				</select>
			</div><br />
		
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Department</span>
				<select name="dno" class="form-control" id="tempd" required>
				<option value="" disabled selected>Select Department</option>
				<c:forEach items="${department}" var="d">
					<option value="${d.dno}">${d.dname}</option>
				</c:forEach>
				</select>
			</div><br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">Program</span>		
				<select name="pno" class="form-control" id="tempp">
				<%-- <option value="" disabled selected>Select Program</option>
				<c:forEach items="${proglist}" var="p">
					<option value="${p.id}">${p.pname}</option>
				</c:forEach> --%>
				</select>
			</div><br />
			<center> 
			<input type="submit" value="Submit & Next" class="btn btn-primary">
			</center>
		</form>
	</div>
	<div class="col-md-4"></div>	
</div>
</body>
</html>