<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/addnewbookAD.css">
<title>Add New Books </title>

<script type="text/javascript">
	
	function validateForm(){
		
		var bookn = document.form.bookn.value;
		var booki= document.form.booki.value;
	
	if((bookn == "")){
		alert("please enter Book Name");
		document.form.bookn.value;
		return false;

		}

	if((booki == "")){
		alert("Correcly enter Book ID");
		document.form.booki.value;
		return false;
	}
}
	
	
	function validatepass(){
		
		var ava = document.mform.ava.value;
		var pid= document.mform.pid.value;
	
	if((ava == "")){
		alert("please enter Availability");
		document.mform.ava.value;
		return false;

		}

	if((pid == "")){
		alert("Correcly enter pastpaper Id");
		document.mform.pid.value;
		return false;
	}
		
		
	}
		
</script>
</head> 


<body>
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

	<h2>Add New Book </h2>
	
	<div class = "add">
	
	
	
		<form method="post" action="processAD.jsp"  onsubmit="return validateForm();" name="form">
		<input type="text" name="bookname" id="bookn" placeholder="Book name..">
		<br>
		<input type="text" name="bookid" id="booki" placeholder="Book ID..">
		<br>
		<input type="text" name="author" placeholder="Author..">
		<br>
		
		<input type="text" name="numberofpages" placeholder="Number Of Pages..">
		<br>
		
		<input type="text" name="publisher" placeholder="Publisher..">
		<br>
		<label> Published Date</label>
		<input type="date" name="publisheddate" >
		<br>
		
		<input type="text" name="note" placeholder="Note..">
		<br>
		
		<input type="text" name="available" placeholder="Availability..">
		<br><br>
		<input type="submit" value="submit" >
</form>
	</div>
	
	<h3>Add New Past Papers</h3>
	
	<div class = "add2">
	
	
	
		<form method="post" action="procesPasspapersAD.jsp"  onsubmit="return validatepass();" name="mform">
		<input type="text" name="availability" id="ava" placeholder="availability..">
		<br>
		<input type="text" name="pastpaperid" id="pid" placeholder="pastpaperid..">
		<br>
		<input type="text" name="year" placeholder="year..">
		<br>
		
		<input type="text" name="subject" placeholder="subject..">
		<br>
		
		<input type="text" name="grade" placeholder="grade..">
		
		<br><br>
		<input type="submit" value="submit" >
</form>
	</div>
</body>
</html>
