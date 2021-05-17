<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit parent details</title>
<link rel="stylesheet" type="text/css" href="css/parentUpdate.css">
<script type="text/javascript">
	
	function validUpdate(){
		var phone= document.updateform.phone.value;
		if((phone == "") ||(phone.length<10)||(phone.length>10)){
			alert("Correcly enter  Phone number");
			document.updateform.phone.value;
			return false;
		}	
	}
</script>
 
</head>

<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1 class="namescl">Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">

<a href ="#">Student Details</a>
<a href ="#">Exam Result</a>
<a href ="#">Class Details</a>
<a href ="#">Fees Payment</a>
<a href ="#">Attendance</a>
<a href="#">Staff Details</a>
<a href ="#">Library</a>
<br>
<br>
<a href = "ParentLogin.jsp">Logout</a>
</div>

<body>
<%
	String nic= request.getParameter("nic");
	String name= request.getParameter("name");
	String sid= request.getParameter("sid");
	String address= request.getParameter("address");
	String phone= request.getParameter("phone");
	String job= request.getParameter("job");
	String grade= request.getParameter("grade");
	String clas= request.getParameter("clas");	
%>



<form action="update" method="post" name="updateform" onSubmit="return validUpdate();" class="update">
	NIC Number :  <input type="text" name="nic"value="<%= nic %>" readonly><div class="hide">* You can't Update yours NIC Number</div><br>
	Name : <input type="text" name="name" value="<%= name %>"><br>
	Student ID Number : <input type="text" name="sid" value="<%= sid %>"readonly><div class="hide">* You can't Update yours child student ID Number</div><br>
	Address : <input type="text" name="address" value="<%= address %>"><br>
	Phone Number : <input type="text" name="phone" id="phone" value="<%= phone %>"><br>
	Job : <input type="text" name="job" value="<%= job %>"><br>
	Grade : <select name="grade">
	<option value="<%= grade %>"><%= grade %></option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="11">12</option>
	<option value="11">13</option>
</select>
	Class : <select name="clas" >
	<option value="<%= clas%>"><%= clas%></option>
	<option value="A">A</option>
	<option value="B">B</option>
	<option value="C">C</option>
	<option value="D">D</option>
	<option value="E">E</option>
	<option value="F">F</option>
	<option value="G">G</option>
</select><br>
	<input type="submit" name="submit" value="Update My Data">
</form>

</body>
</html>