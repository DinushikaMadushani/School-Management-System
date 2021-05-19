<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/addborrowAD.css">
<title>Add New Borrow Details</title>
<script type="text/javascript">
	
	function validSearch(){
		var bname = document.form.bname.value;
		var bid = document.form.bid.value;
		
		if((bname == "")){
			alert("Please enter Book name");
			document.form.bname.value;
			return false;
		}
		
		
		if((bid == "")){
			alert("Please enter book id");
			document.form.bid.value;
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


	<h2>Add New Borrowed Details</h2>
	<div class = "add">
	<form  method="post" action="processAD01.jsp" onsubmit="return validSearch();" name="form">
		
		<input type="text" name="bookname" placeholder="Book Name.." id="bname">
		<br>
		
		<input type="text" name="bookid" placeholder="Book ID.." id="bid">
		<br>
		
		<input type="text" name="borrowername" placeholder="Borrower Name..">
		<br>
		
		<input type="text" name="author" placeholder="Author..">
		<br>
		
		<input type="text" name="publisher" placeholder="Publisher..">
		<br>
		
		<input type="text" name="notes" placeholder="Notes..">
		<br>
		<label class="h1"> Borrowed Date</label>
		<input type="date" name="borroweddate">
		<br>
		<label class="h2"> Expire Date</label>
		<input type="date" name="expiredate">
		<br>
		
		<input type="text" name="indexnumber" placeholder="Index Number..">
		<br><br>
		<input type="submit" value="Add Details">
</form>
</div>
</body>
</html>