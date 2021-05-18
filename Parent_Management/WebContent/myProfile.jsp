<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My profile</title>
<link rel="stylesheet" type="text/css" href="css/profile.css">

</head>

<body>

<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1 class="namescl">Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">

<a href ="#">Student Details</a>
<a href ="#">Exam Result</a>
<a href ="#">Class Details</a>
<a href ="#">Fees Payment</a>
<a href ="#">Attendance</a>
<a href="#">Staff Details</a>
<a href ="#">Library</a>
<br>
<br>
<a href = "ParentLogin.jsp">Logout</a>
</div>

<h1 class="top">My Details</h1>
	<table id="parent">
	<c:forEach var="par" items="${parentDetails}" >
		<c:set var="nic" value="${par.nic}"/>
		<c:set var="name" value="${par.name}"/>
		<c:set var="sid" value="${par.sid}"/>
		<c:set var="address" value="${par.address}"/>
		<c:set var="phone" value="${par.phone}"/>
		<c:set var="job" value="${par.job}"/>
		<c:set var="grade" value="${par.grade}"/>
		<c:set var="clas" value="${par.clas}"/>

	<tr>
	<td class="topic">NIC Number</td>
	<td>${par.nic}</td>
	</tr>
	
	<tr>
		<td class="topic">Name</td>
		<td>${par.name}</td>
	</tr>
	
	<tr>
		<td class="topic">Student ID Number</td>
		<td>${par.sid}</td>
	</tr>
	
	<tr>
		<td class="topic">Address</td>
		<td>${par.address}</td>
	</tr>
	
	<tr>
		<td class="topic">Phone Number</td>
		<td>${par.phone}</td>
	</tr>
	
	<tr>
		<td class="topic">Job </td>
		<td>${par.job}</td>
	</tr>
	
	<tr>
		<td class="topic">Grade</td>
		<td>${par.grade}</td>
	</tr>
	
	<tr>
		<td class="topic">Class</td>
		<td>${par.clas}</td>
	</tr>
		
	</c:forEach>
	</table>
	
	<c:url value="UpdateParentProfile.jsp" var="parentUpdate">
		<c:param name="nic" value="${nic}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="sid" value="${sid}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="job" value="${job}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="clas" value="${clas}"/>
		
	</c:url>
	
	<a href ="${parentUpdate}">
	<input type="button" name="Update" value="Update My Account" class="btn1">
	</a><br>
	
	<c:url value="deleteParentProfile.jsp" var="deleteParent" >
		<c:param name="nic" value="${nic}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="sid" value="${sid}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="job" value="${job}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="clas" value="${clas}"/>
	</c:url>
	<a href ="${deleteParent}">
	<input type="button" name="delete" value="Delete My Account" class="btn2">
	</a>
	
	<img src="images/pic1.png" class="pic1"/>
	
	<a href ="sendmail.jsp" class="btn3">Send Mail</a>
	
</body>
</html>