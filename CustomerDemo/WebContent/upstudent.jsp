<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<fieldset><legend>Search by</legend>
<table width="800" border="1">
  <tbody>
    <tr>
      <th width="399" scope="col">Name</th>
      <th width="171" scope="col">Index No</th>
      <th width="130" scope="col">Total Peresnt day</th>
      <th width="130" scope="col">Total Absant Day</th>
      <th width="130" scope="col">Avarage Present</th>
      <th width="146" scope="col">Update</th>
      <th width="148" scope="col">Delete</th>
      
    </tr>
    <tr>
      <td>M.A nimal</td>
      <td>001</td>
      <td>12</td>
      <td>7</td>
      <td>40%</td>
      <td><input type="button" name="button" id="button" value="Update"></td>
      <td><a href="search.jsp"><input type="button" name="button2" id="button2" value="Back"></a></td>
    </tr>
  </tbody>
</table>
</fieldset>

</body>
</html>