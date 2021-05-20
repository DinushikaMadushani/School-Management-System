<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "music_store";
String userid = "root";
String password = "Dpiuman@98";
String indd = request.getParameter("indd");




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
<link rel="stylesheet" type="text/css" href="css/home.css">
<style >
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
</style>
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

<div class="displayMain">
 <fieldset class ="b">
    <legend>Student Profile</legend>


<table border="1" >
<tr>
<td>Index number</td>
<td>Name </td>
<td>Grade</td>
<td>Class</td>
<td>05/15/2021</td>
<td>05/16/2021</td>
<td>05/17/2021</td>
<td>05/18/2021</td>
<td>05/19/2021</td>
<td>05/20/2021</td>
<td>05/21/2021</td>
<td>05/22/2021</td>
<td>05/23/2021</td>
<td>05/24/2021</td>
<td>05/25/2021</td>
<td>Update</td>
<td>Delet</td>
</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from student where inde ='"+indd+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("inde") %></td>		
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("clas") %></td>
<td><%=resultSet.getString("grade") %></td>
<td><%=resultSet.getString("05/15/2021") %></td>
<td><%=resultSet.getString("05/16/2021") %></td>
<td><%=resultSet.getString("05/17/2021") %></td>
<td><%=resultSet.getString("05/18/2021") %></td>
<td><%=resultSet.getString("05/19/2021") %></td>
<td><%=resultSet.getString("05/20/2021") %></td>
<td><%=resultSet.getString("05/21/2021") %></td>
<td><%=resultSet.getString("05/22/2021") %></td>
<td><%=resultSet.getString("05/23/2021") %></td>
<td><%=resultSet.getString("05/24/2021") %></td>
<td><%=resultSet.getString("05/25/2021") %></td>
<td><a href="upstudent.jsp"><input type="button" name="button" id="button" value="Update"></a></td>
      <td><input type="button" name="button2" id="button2" value="Delete"></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</fieldset>
</div>
</body>
</html>