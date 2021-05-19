<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String bookid = request.getParameter("bookid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "librarymanagement";
	String userid = "root";
	String password = "Malinda11Max@";
		try {
			Class.forName(driver);
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
			}
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
%>
<%
			try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String sql ="select * from bookdetails01 where bookid='"+bookid+"'";
			resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/addborrowAD.css">
<title>Update Book Details</title>
</head>

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

<h2>Update Book Details</h2> 
<div class = "add">
<form method="post" action="update-processAD.jsp">
Book Name:<br>
<input type="text" name="bookname" value="<%=resultSet.getString("bookname") %>">
<br>
Book ID :<br>
<input type="text" name="bookid" value="<%=resultSet.getString("bookid") %>"readonly>
<br>
Author:<br>
<input type="text" name="author" value="<%=resultSet.getString("author") %>">
<br>
Number of Pages:<br>
<input type="text" name="numberofpages" value="<%=resultSet.getString("numberofpages") %>">
<br>
Publisher:<br>
<input type="text" name="publisher" value="<%=resultSet.getString("publisher") %>">
<br>
Published Date:<br>
<input type="text" name="publisheddate" value="<%=resultSet.getString("publisheddate") %>">
<br>
Note:<br>
<input type="text" name="note" value="<%=resultSet.getString("note") %>">
<br>
Available:<br>
<input type="text" name="available" value="<%=resultSet.getString("available") %>">
<br><br>
<input type="submit" value="submit">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>