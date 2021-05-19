<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String parentid = request.getParameter("parentid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "school_manage";
String userid = "root";
String password = "DinushikaAlvis";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<title>Request Mail</title>
<link rel="stylesheet" type="text/css" href="css/mailR.css">
<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "Check it";
  
}
</script>
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
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


<h1 class="all">All requests </h1>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from emails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<table border="1" id="message">

<tr class="topic">
	<td  class="id">Parent NIC Number</td>
	<td class="tit">Title</td>
	<td class="msg">Message</td>
	<td class="update">Check</td>
	<td class="chk">Delete</td>
	
</tr>
<tr>
<td><%=resultSet.getString("parentId") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("message") %></td>
<td><a href="updateMsg.jsp?parentid=<%=resultSet.getString("parentid") %>"><button type="button" class="updatebtn">Check</button></a></td>
<td><a href="deleteMsg.jsp?parentid=<%=resultSet.getString("parentid") %>"><button type="button" class="checkbtn">Delete</button></a></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<a href="parent.jsp" class="mailR">Back</a>
</body>
</html>