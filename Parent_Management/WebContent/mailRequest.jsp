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

<table border="1" id="message">

<tr class="topic">
	<td  class="id">parent id</td>
	<td class="tit">title</td>
	<td class="msg">message</td>
	<td class="chk">checked</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from emails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("parentId") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("message") %></td>
<td><a href="deleteMsg.jsp?parentid=<%=resultSet.getString("parentid") %>"><button type="button" class="checkbtn">checked</button></a></td>

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