<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/sendmail.css">
<title>send mail</title>
<script type="text/javascript">
	
	function validSearch(){
		var id = document.form.id.value;
		var title= document.form.title.value;
		var msg = document.form.msg.value;
	
		if((id == "")){
			alert("please enter nic");
			document.form.id.value;
			return false;
		}
		
		
		if((title == "")){
			alert("Correcly enter  title");
			document.form.title.value;
			return false;
		}
		if(msg ==""){
			alert("Correcly enter message");
		document.form.msg.value;
		return false;}
		
	}

</script> 

</head>
<body>
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


<h1>Send Messages for your requests</h1>
<p>If you need to change or update your NIC number or student ID Number, please send a message. The reason is that this system is not able to change your NIC  number or student ID Number. If necessary, enter your information correctly and fill in this information.
This information should be included.
<br>1. Name.<br>
2. Identity card number<br>
3. Reason for change or update</p>
<div class="mail">
<form method="post" action="messageProcess.jsp" name="form" onsubmit="return validSearch();">
NIC Number:<br><input type="text" name="parentid"  id="id"><br>
Title:<br><input type="text" name="title" id="title"><br>
Message:<br><textarea name="message" cols="30" rows="15" id="msg"></textarea><br>
<input type="submit" value="submit">

</form>
</div>

<img src="images/mess.gif" class="mess"/>

</body>
</html>