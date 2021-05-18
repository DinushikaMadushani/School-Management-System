<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String nic = request.getParameter("nic");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "school_manage";
	String userid = "root";
	String password = "DinushikaAlvis";
	String grade=request.getParameter("grade");
	String clas=request.getParameter("clas");

try {
	
	Class.forName(driver);
} catch (ClassNotFoundException e) {

	e.printStackTrace();
}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>


<html>
<head>
<title>Search</title>
</head>
<body>

<h1>Search Parent Details </h1>
<form class="form" method="post" action="Search.jsp">
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
		
	<button type="submit" name="Search" class="btnS" >Search</button>
</form>

<table border="1">
<tr>
	<td>nic</td>
	<td>name</td>
	<td>sid</td>
	<td>address</td>
	<td>phone</td>
	<td>job</td>
	<td>grade</td>
	<td>class</td>
	<td>Update</td>
	<td>Delete</td>
</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from new_table where grade='"+grade+"' and class='"+clas+"'";
	resultSet = statement.executeQuery(sql);
	int i=0;
	while(resultSet.next()){
%>
<tr>
	<td><%=resultSet.getString("nic") %></td>
	<td><%=resultSet.getString("name") %></td>
	<td><%=resultSet.getString("sid") %></td>
	<td><%=resultSet.getString("address") %></td>
	<td><%=resultSet.getString("phone") %></td>
	<td><%=resultSet.getString("job") %></td>
	<td><%=resultSet.getString("grade") %></td>
	<td><%=resultSet.getString("class") %></td>
	
	<td><a href="update.jsp? nic=<%=resultSet.getString("nic") %>"><button type="button" class="update">Update</button></a></td>
	
	<td><a href="delete.jsp?nic=<%=resultSet.getString("nic") %>"><button type="button" class="delete">Delete</button></a></td>

</tr>
<%
	i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>