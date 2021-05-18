<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parent Home page</title>
<link rel="stylesheet" type="text/css" href="css/parentInterface.css">


<script>
var modal = document.getElementById('id01');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
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


<button onclick ="document.getElementById('id01').style.display='block'" style="width:200px;" class="btn1">My Account</button>
<div id="id01" class="modal">
  	<span onclick="document.getElementById('id01').style.display='none'"
	class="close" title="Close Modal">&times;</span>

		<form class="modal-content animate" action="in" method="post">
    		<div class="container">
    		  <label for="uname"><b>NIC Number</b></label>
		      <input type="text" placeholder= "example : 123456789V" name="nic" required>
		
		      <label for="psw"><b>Student ID</b></label>
		      <input type="text" placeholder="example : 12345" name="sid" required>
		
		      <button type="submit">view details</button>
   			 </div>
    		</form>
</div>
<img src="images/use.png" class="pare" width="200px" height="150px"/>

<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn2">Student Details</button>
<img src="images/student.png" class="student" width="200px" height="150px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn3">Exam Results</button>
<img src="images/res.png" class="res" width="200px" height="150px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn4">Class Details</button><br>
<img src="images/class.png" class="class" width="200px" height="150px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn5">Fees Payments</button>
<img src="images/fees.png" class="fees" width="200px" height="150px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn6">Attendance</button>
<img src="images/att.png" class="att" width="200px" height="150px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn7">Staff Details</button>
<img src="images/staff.png" class="staff" width="200px" height="200px"/>
<button onclick ="document.getElementById('#').style.display='block'" style="width:200px;" class="btn8">Library</button><br>
<img src="images/lib2.jpg" class="lib" width="200px" height="150px"/>
</body>
</html>