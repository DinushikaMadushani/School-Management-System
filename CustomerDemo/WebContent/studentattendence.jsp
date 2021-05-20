<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="n" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
fieldset {
  background-color:white;
  width:97%;
}

legend {
  background-color: #f25222;
  color: white;
  padding: 5px 10px;
}

input {
  margin: 5px;
}
table {
  border-collapse: collapse;
  
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color:#f89f55;
  color: white;
}
#absent {
	 background-color:white;
}
.cls {
 position: absolute;
  background-color: DodgerBlue;
  z-index: 99;
  position: relative;
  font-family: Arial;
  border: 6px solid transparent;
  width: 122;
  height: 100;
}
.button {
  
  cursor: pointer;
}
body {
  background-image: url("background (1).jpg");

}

.content {
  max-width: 850px;
  margin: auto;
  background: white;
  padding: 10px;
}


	
</style>
</head>
<body>
<form class="text" action="push" method="post">
<div class="content">

	<div class="about-area" id="about">
	  <fieldset>
    <legend>All Student</legend>

  <table border = 1>
  <tr>
		<th>Student ID</th>
		<th>Student name</th>
		<th>Student grade</th>
		<th>Student Class</th>	
		
   
   <th> <input type="date" name="date" required></th>
    </tr>
	
	<n:forEach var="noob" items="${noobDetails}">
	
	<n:set var="inde" value="${noob.inde}"/>
	<n:set var="name" value="${noob.name}"/>
	<n:set var="clas" value="${noob.clas}"/>
	<n:set var="grade" value="${noob.grade}"/>
	<n:set var="passwor" value="${noob.passwor}"/>
	
	

	<tr>
	
		<td>${noob.inde}</td>
		<td>${noob.name}</td>
		<td>${noob.clas}</td>
		<td>${noob.grade}</td>		
		<td><select name="att" id="select1">
            <option selected = "selected">1/0</option>
            <option value="1">1</option>
            <option value="0">0</option>
            
          </select></td>
	</tr>
	
	
	</n:forEach>
	</table>
    
  	
  	
  	
  		
  	<input type="submit" id="submit2" value="insert">	
  	</form>
  <form class="text" action="save" method="post">
  	<input type="submit" id="submit3" value="save">
  	
  	
  	</div>
  	</div>
  	</fieldset>
  	</form>
  
  
</body>
</html>