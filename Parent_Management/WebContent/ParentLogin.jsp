<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>login page</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div class = "side-navbar">
<a href = "ParentLogin.jsp">Home</a>
<a href ="#">About School</a>
<a href ="#">Administration</a>
<a href ="#">Co-Curicular</a>
<a href ="#">News</a>
<a href ="#">Contacts</a>
</div>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1 class="namescl">Viddyadarsha Maha Vidyalaya</h1>
</div>


<h2 class="logTopic">. . . . Login . .  . .</h2>
<div class="login">
<form method="post" action="add">
	
	<label>User Name : </label><br>
	<input type="text" name="user" id="Uname"><br>
	
	<label>Password : </label><br>
	<input type="text" name="pass" id="pass"><br><br>
 
 <input type="submit" value="Login as Admin" id="log"><br>
 
</form>
</div>



<div class="parantLog">
<form method="post" action="log">
	
	<label>User Name : </label>
	<input type="text" name="nic" id="nic"><br>
	
	<label>Password : </label>
	<input type="text" name="sid" id="sid"><br><br>
 
 <input type="submit" value="Login as Parent" id="log"><br>
</form>
</div>


<img src="images/school.png" class="school" width="850px" height="500px"/>

<div class="footer-main-div">
<div class="footer-social-icons">
<ul>
	<li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
	<li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
	<li><a href="#" target="blank"><i class="fa fa-email"></i></a></li>
	
</ul>


</div>
</div>
</body>
</html>