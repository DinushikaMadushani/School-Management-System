<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "school_manage";
	String userid = "root";
	String password = "DinushikaAlvis";
	String nic = request.getParameter("nic");
	String grade=request.getParameter("grade");
	String clas=request.getParameter("clas");
	
	try {
	Class.forName(driver);
} 
	catch (ClassNotFoundException e) {
		e.printStackTrace();
}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<html>
<head>
<title>parent Manage</title>
<link rel="stylesheet" type="text/css" href="css/parent.css">
<script src=""></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript">
	
	function validSearch(){
		var nic = document.form.nic.value;
		var phone= document.form.phone.value;
		var sid = document.form.sid.value;
	
		if((nic == "")){
			alert("please enter nic");
			document.form.nic.value;
			return false;
		}
		
		if((nic.length< 10)||(nic.length >12)||(nic.length == 11)){
			alert("Wrong NIC Number");
			document.form.nic.value;
			return false;
		}
		
		if((phone == "") ||(phone.length<10)||(phone.length>10)){
			alert("Correcly enter  Phone number");
			document.form.phone.value;
			return false;
		}
		if(sid ==""){
			alert("Correcly enter  Phone number");
		document.form.phone.value;
		return false;}
		
	}

</script> 
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1 class="namescl">Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "#">Student Management</a>
<a href ="#">Class Management</a>
<a href ="#">Result Management</a>
<a href ="#">Attendance Management</a>
<a href ="#">Fees Management</a>
<a href ="#">Staff Management</a>
<a href="parent.jsp">Parent Management</a>
<a href ="#">Library Management</a>
</div>

<h1 class="insert">Insert new parent</h1>
<div class="insertInto">
<form method="post" action="process.jsp" name="form" onsubmit="return validSearch();">
NIC:<input type="text" name="nic" id="nic"><br>
Name:<input type="text" name="name" id="name"><br>
Student ID:<input type="text" name="sid" id="sid"><br>
Address:<input type="text" name="address"><br>
Phone:<input type="text" name="phone" id="phone"><br>
job:<input type="text" name="job"><br>
Grade:<select name="grade" id="grade">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="11">12</option>
	<option value="11">13</option>
</select>

Class<select name="class" id="cls" >
	<option value="A">A</option>
	<option value="B">B</option>
	<option value="C">C</option>
	<option value="D">D</option>
	<option value="E">E</option>
	<option value="F">F</option>
	<option value="G">G</option>
</select>
<input type="submit" value="submit">

</form>

</div>
<img src="images/school.png" class="school" width="550px" height="600px"/>






<h1 class="search">Search Parent Details</h1>
<div class="searchIn">
<form class="form" method="post" action="parent.jsp">
	grade<select name="grade" id="grd"  >
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="11">12</option>
		<option value="11">13</option>
	</select>

	Class<select name="clas" id="cls" >
		<option value="A">A</option>
		<option value="B">B</option>
		<option value="C">C</option>
		<option value="D">D</option>
		<option value="E">E</option>
		<option value="F">F</option>
		<option value="G">G</option>
	</select>

<button type="submit" name="Search" class="btnS" >Search</button>
</form>
</div>


<table border="1" id="parent">
<thead>
<tr class="topic">
	<td>NIC Number</td>
	<td>Name      </td>
	<td>Student ID</td>
	<td>Address   </td>
	<td>Phone Number</td>
	<td>Job Title </td>
	<td>Grade</td>
	<td>Class</td>
	<td>Update</td>
	<td>Delete</td>
</tr>
</thead>

<%
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from new_table where grade='"+grade+"' and class='"+clas+"'";
	resultSet = statement.executeQuery(sql);
	int i=0;
	while(resultSet.next()){
%>

<tbody>
<tr>
	<td><%=resultSet.getString("nic") %></td>
	<td><%=resultSet.getString("name") %></td>
	<td><%=resultSet.getString("sid") %></td>
	<td><%=resultSet.getString("address") %></td>
	<td><%=resultSet.getString("phone") %></td>
	<td><%=resultSet.getString("job") %></td>
	<td><%=resultSet.getString("grade") %></td>
	<td><%=resultSet.getString("class") %></td>
	
	<td><a href="update.jsp?nic=<%=resultSet.getString("nic") %>"><button type="button" class="update">Update</button></a></td>
	<td><a href="delete.jsp?nic=<%=resultSet.getString("nic") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
</tbody>
<%
	i++;
}
	connection.close();
} 
catch (Exception e) {
	e.printStackTrace();
}
%>
</table>

<a href="mailRequest.jsp" class="mailR">Update Request</a>



</body>
</html>
