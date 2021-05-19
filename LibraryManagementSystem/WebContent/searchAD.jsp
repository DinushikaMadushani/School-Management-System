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


<html>
<head>

<link rel="stylesheet" type="text/css" href="css/searchAD01.css">

<script src="jquery-3.3.1.min.js">
</script>
</head>
<title>Book Details</title>
<body>
<script>
function makePdf(){
	
	var printMe = document.getElementById('book');
	var wme = window.open("","","width:800,height:900");
	
	wme.document.write(printMe.outerHTML);
	wme.document.close();
	wme.focus();
	wme.print();
	wme.close();
	}
</script>


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
<form class="form" method="post" action="searchAD.jsp">
<input type="text" name="bookid" placeholder="Book ID.."><br>
<input type="submit" name="submit" value="Search" ><br>
</form>
</div>


<table border="1" id="book">
	<tr>
		<td> Book Name </td>
		<td> Book ID </td>
		<td> Author </td>
		<td> Number Of Pages </td>
		<td> Publisher </td>
		<td> Published Date </td>
		<td> Note </td>
		<td> Availability </td>
		<td> Update </td>
		<td> Delete </td>
		
		
	</tr>
<%
		try{
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement=connection.createStatement();
			String sql ="select * from bookdetails01 where bookid ='"+bookid+"'";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			%>

				<tr>
					<td><%=resultSet.getString("bookname") %></td>
					<td><%=resultSet.getString("bookid") %></td>
					<td><%=resultSet.getString("author") %></td>
					<td><%=resultSet.getString("numberofpages") %></td>
					<td><%=resultSet.getString("publisher") %></td>
					<td><%=resultSet.getString("publisheddate") %></td>
					<td><%=resultSet.getString("note") %></td>
					<td><%=resultSet.getString("available") %></td>
					<td><a href="updateAD.jsp?bookid=<%=resultSet.getString("bookid") %>"><button type="button" class="update">Update</button></a></td>
					<td><a href="deleteAD.jsp?bookid=<%=resultSet.getString("bookid") %>"><button type="button" class="delete">Delete</button></a></td>
				</tr>
			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
%>
</table>
<button class="down" onclick="makePdf()">download</button>
</body>
</html>

