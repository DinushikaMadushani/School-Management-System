<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment method</title>
</head>
<style>
body{
	margin: 0;
	padding: 0;
	font-family: poppins;

}
.navbar{
	position: fixed;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: row;
	flex-wrap: wrap;
	background-color:#d4d7de;
	width: 100%;
	height: 70px;
	z-index: 1;
}
.nav{
	display: flex;
	justify-content: right;
	list-style: none;
	margin-right: 15%: 
}
.logo{
	flex: 1 1 auto;
	margin-left: 10%;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: bold;
	font-size: 35px;
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
	background:url('2.jpg');

}
.text-part{
	width: 65%;
	height: 80%;
}

.about-area,{
	background: #fefefe;
}

html{
	scroll-behavior: smooth;
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

      input::placeholder{
        color: white;
      }
    
       textarea{
      padding: 10px;
      margin: 10px;     
      width: 70%;
      background-color:rgba(136, 133, 133, 0.5);
      color: white;
      border: none;
      outline:none;
     }
     textarea::placeholder{
       color: white;
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

     .submit:hover{
           border: 1px solid #fff;
      color: #fff;
      cursor: pointer;
     }

</style>
</head>
<body>

<div class="navbar">
		<a href="#" class="logo">Music Store</a>
		<ul class="nav">
			<li><a href="#" >Login</a></li>
			<li><a href="#home">Home</a></li>
			<li><a href="#about">About Us</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="#">Contact Us</a></li>
		</ul>
		<br>
		<br>
		
	</div>
	<div class="about-area" id="about">
		<div class="text-part">
	<form class="text" action="add" method="post">
		<input type="text" placeholder="User ID" name="id" required><br>
		<input type="text" placeholder="Card Number" name="card" required><br>
		<input type="text" placeholder="Expires Date" name="ex" required><br>
		<input type="text" placeholder="CVV" name="cvv" required><br>
		<input type="text" placeholder=" Card Name" name="cardN" required><br>
		
		<input type="submit" name="submit" value="Create Customer">
	</form>
	</div>
</div>

</body>
</html>