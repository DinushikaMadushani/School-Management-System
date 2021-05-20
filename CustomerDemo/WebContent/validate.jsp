<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/home.css">

	<title>Login</title>
	<style type="text/css">


.logo{
	flex: 1 1 auto;
	margin-left: 10%;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: bold;
	font-size: 15px;
	font-family:"Arial Black", Gadget, sans-serif;
	
}
a{
	margin: 15px;
	color: #000;
	text-decoration: none;
	text-transform: uppercase;
	font-family:"Arial Black", Gadget, sans-serif;
}
a:hover{
	color: #000;
}
.about-area{
	position: relative;
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
	flex-direction: row;
	width: 100%;
	height: 700px;


}
.text-part{
	width: 65%;
	height: 80%;
}

.about-area,{
	background: #fefefe;
}


   input{
        padding: 10px;
        margin:10px;
        width: 70%;
        background-color:rgba(136, 133, 133, 0.5);
        color: white;
        border: none;
        outline:none;
      }

      
    
      .submit{
      width: 40%;
      background: none;
      padding: 4px;
      outline: none;
       /* border: 1px solid #fff;
      color: #fff; */
      font-size: 13px;
      font-weight: bold;
      letter-spacing: 2px;
      height: 33px;
      text-align: center;
      cursor: pointer;
      letter-spacing: 2px;
      margin-left: 3%;
      border:2px solid rgb(190, 190, 190);
      color: rgb(190, 190, 190);
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
		
	<div class="about-area" id="about">
	<h1>Login Page</h1>
	<form action="studentProfile.jsp" method="post">

	
		Index number <input type="text" name="indexno" placeholder="Enter your indexnumber"><br>
		Password <input type="password" name="passwor" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value="Login">
	</form>
	
	
	</div>
	

</body>
</html>