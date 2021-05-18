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
	} 
	catch (ClassNotFoundException e) 
	{
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
	String sql ="select * from new_table where nic='"+nic+"'";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<title>Update details</title>
<link rel="stylesheet" type="text/css" href="css/update.css">

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
<h1 class="up">Update Parent Details</h1>
<img src="images/aaa.png" class="pic" width="100px" height="120px"/>

<form method="post" action="update-process.jsp" class="update">

	NIC:<br>
	<input type="text" name="nic" value="<%=resultSet.getString("nic") %>">
	<br>
	name:<br>
	<input type="text" name="name" value="<%=resultSet.getString("name") %>">
	<br>
	SID:<br>
	<input type="text" name="sid" value="<%=resultSet.getString("sid") %>">
	<br>
	address:<br>
	<input type="text" name="address" value="<%=resultSet.getString("address") %>">
	<br>
	phone:<br>
	<input type="text" name="phone" value="<%=resultSet.getString("phone") %>">
	<br>
	job:<br>
	<input type="text" name="job" value="<%=resultSet.getString("job") %>">
	<br>
	grade:<br>
	<input type="text" name="grade" value="<%=resultSet.getString("grade") %>">
	<br>
	class:<br>
	<input type="text" name="class" value="<%=resultSet.getString("class") %>">
	<br><br>
	
	<input type="submit" value="submit" >
	
	</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>