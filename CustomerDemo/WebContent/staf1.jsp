

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "school?useSSL=false";
String userid = "root";
String password = "Dpiuman@98";
String clas = request.getParameter("clas");
String grade = request.getParameter("grade");
String index = request.getParameter("index");
String tad = request.getParameter("tad");
String sal = request.getParameter("sal");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
fieldset {
  background-color:white;
  width:97%;
}

legend {
  background-color: #f25222;
  color: white;
  padding: 5px 10px;
}

input {
  margin: 5px;
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
#absent {
	 background-color:white;
}
.cls {
 position: absolute;
  background-color: DodgerBlue;
  z-index: 99;
  position: relative;
  font-family: Arial;
  border: 6px solid transparent;
  width: 122;
  height: 100;
}
.button {
  
  cursor: pointer;
}
body {
  background-image: url("background (1).jpg");

}

.content {
  max-width: 850px;
  margin: auto;
  background: white;
  padding: 10px;
}


	
</style>

</head>
<body>
<fieldset><legend>All staf</legend>





<table border="1">
<tr>
<td>Index number</td>
<td>Name</td>
<td>email </td>
<td>Phone</td>
<td name="tad">2021,05,17</td>
<script>
var d = new Date("2021,05,17");
document.getElementById("demo").innerHTML = d;
</script>

</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from admin" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){ 
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><select name ="sal">
<option>1</option>
<option>0</option>
</select>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


</table>

<form class="form" method="post" action="admin.jsp">
<br><a href="useraccount.jsp">
	<button type="button" value="Submit">Insert</button>
	</a>
	<br><br>
	
	
	
	
</form>




</fieldset>
</body>
</html>