<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


	
<div class="content">

	<div class="about-area" id="about">
	  <fieldset>
    <legend>Admin Profile</legend>
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>

	</c:forEach>
	</table>
	
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	<br>
	
	<form class="text" action="include" method="post">
	</fieldset>
  <fieldset>
    <legend>Student attandance</legend>
 <table width="360">
      <tbody>
        <tr>
          <td width="171"><label for="select1">Class:</label>
          
            <select name="Clas"  class="cls" id="select02">
            <option selected = "selected">Grade</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
          </select>
		  </td>
          <td width="173"><label for="select02">Class:</label>
          
            <select name="grade" class="cls" id="select08">
            <option selected = "selected">Class</option>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
          </select></td>
        </tr>
        
         
     
      </tbody>
    </table><br>
    
    
    
    
	
	  <input type="submit" id="submit1" value="Student Attndance">	
	 <br><br>
		
  </form>
	
	<br>
	<a href="staf1.jsp">
	<input type="button" name="delete" value="Staf attdance"></a>
	
	
	
	</fieldset>	
	
</div>


  
  
  

  
	<fieldset><legend>Search by</legend>
	 <table width="360">
      <tbody>
        <tr>
          <td width="171"><label for="select01">Class:</label>
            <select name="select"  class="cls" id="select02">
            <option selected = "selected">Class</option>
            <option value="volvo">9</option>
            <option value="volvo">10</option>
            <option value="volvo">11</option>
            <option value="volvo">12</option>
          </select>
		  </td>
          <td width="173"><label for="select07">Grade:</label>
            <select name="select2" class="cls" id="select08">
            <option selected = "selected">Grade</option>
            <option value="volvo">A</option>
            <option value="volvo">B</option>
            <option value="volvo">C</option>
          </select></td>
        </tr>
       
    </table><br>



   <form action="search.jsp" method="post">
		<table width="360" >
  <tbody>
    <tr>
      <td width="155" scope="col"><label for="fname">Student Name </label></td>
      <td width="189" scope="col"><input type="text" id="text"required><br></td>
    </tr>
    <tr id="absent">
      <td><label for="fname" >Student Index Number </label><br></td>
      <td>
        <input type="text" name="indd" id="textfield" required></td>
    </tr>
  </tbody>
</table>
    <input type="button" id="submit1" value="Search" >	
	 <br><br>
	 </form>
		<a href ="home.jsp">
    <input type="button" id="submit1" value="Home" ></a>	

	 <br><br>
		
	</fieldset>

</div>	
	
	
	
</body>
</html>