<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String connectionUrl = "jdbc:mysql://localhost:3306/librarymanagement";
	String userid = "root";
	String password = "Malinda11Max@";
	String grade = request.getParameter("grade");
	String pastpaperid = request.getParameter("pastpaperid");
	try {
		Class.forName("com.mysql.jdbc.Driver");
	}
	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
%>


<html>
<head><link rel="stylesheet" type="text/css" href="css/searchAD.css"></head>
<title>Book Details</title>
<body>
<div class= "header">
<img src="images/logo.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "#">Student Management</a>
<a href ="#">Class Management</a>
<a href ="#">Result Management</a>
<a href ="#">Attendance Management</a>
<a href ="#">Fees Management</a>
<a href ="#">Staff Management</a>
<a href="#">Parent Management</a>
<a href ="libraryAD.jsp">Library Management</a>
</div>


<h2>Search Data</h2>

<div class = "add">
<form class="form" method="post" action="passPaperUser.jsp">

<input type="text" name="grade" placeholder="Grade.."><br>

<input type="submit" name="submit" value="Search" ><br>
</form>
</div>


<table border="1">
	<tr>
		<td> Availability </td>
		<td> past paper id</td>
		<td> Year </td>
		<td> Subject </td>
		<td> Grade </td>
		
		
		
		
	</tr>
<%
		try{
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement=connection.createStatement();
			String sql ="select * from papers where grade ='"+grade+"'";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			%>

				<tr>
					<td><%=resultSet.getString("availability") %></td>
					<td><%=resultSet.getString("pastpaperid") %></td>
					<td><%=resultSet.getString("year") %></td>
					<td><%=resultSet.getString("subject") %></td>
					<td><%=resultSet.getString("grade") %></td>
					
				
				</tr>
			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
%>
</table>
</body>
</html>

