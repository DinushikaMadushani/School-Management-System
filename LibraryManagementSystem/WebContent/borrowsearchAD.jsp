<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head><link rel="stylesheet" type="text/css" href="css/borrowsearchAD.css"></head>
<title>Search Borrowed Books</title>
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

<h2>Search Borrowing Details</h2>

<div class = "add">
<form class="form" method="post" action="borrowsearchAD.jsp">

<label class="h1"> Expire Date</label>
<input type="date" name="expiredate" ><br>
<input type="submit" name="submit"  value="Search" ><br>
</form>
</div>
<%
	

	String connectionUrl = "jdbc:mysql://localhost:3306/librarymanagement";
	String userid = "root";
	String password = "Malinda11Max@";
	
	String expiredate = request.getParameter("expiredate");
	String bookid = request.getParameter("bookid");
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

<table border="1">
	<tr>
		<td>Book Name</td>
		<td>Book ID</td>
		<td>Borrower Name</td>
		<td>Author</td>
		<td>Publisher</td>
		<td>Note</td>
		<td>Borrowed Date</td>
		<td>Expire Date</td>
		<td>Index Number</td>
		<td>Delete</td>
		
		
	</tr>
	
<%
		try{
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement=connection.createStatement();
			String sql ="select * from new_table Where expiredate ='"+expiredate+"'" ;
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			%>

				<tr>
					<td><%=resultSet.getString("bookname") %></td>
					<td><%=resultSet.getString("bookid") %></td>
					<td><%=resultSet.getString("borrowername") %></td>
					<td><%=resultSet.getString("author") %></td>
					<td><%=resultSet.getString("publisher") %></td>
					<td><%=resultSet.getString("notes") %></td>
					<td><%=resultSet.getString("borroweddate") %></td>
					<td><%=resultSet.getString("expiredate") %></td>
					<td><%=resultSet.getString("indexnumber") %></td>
					
					<td><a href="deleteAD01.jsp?bookid=<%=resultSet.getString("bookid") %>"><button type="button" class="delete">Delete</button></a></td>
					
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