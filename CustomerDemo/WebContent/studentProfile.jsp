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
String indexno = request.getParameter("indexno");
String passwor = request.getParameter("passwor");



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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
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

<div id="report">
 <fieldset class ="b">
    <legend>Student Profile</legend>

<button class="btn btn-success" id="download" type="button">Generate PDF</button>
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
</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from student where inde ='"+indexno+"'";
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
</div>
 <script>
 window.onload = function () {
	    document.getElementById("download")
	        .addEventListener("click", () => {
	            const invoice = this.document.getElementById("report");
	            console.log(invoice);
	            console.log(window);
	            var opt = {
	                margin: 1,
	                filename: 'student profile.pdf',
	                image: { type: 'jpeg', quality: 0.98 },
	                html2canvas: { scale: 8},
	                jsPDF: { unit: 'in', format: 'letter', orientation: 'landscape' }
	            };
	            html2pdf().from(invoice).set(opt).save();
	        })
	}

</script>


</body>
</html>