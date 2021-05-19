<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String bookname=request.getParameter("bookname");
	String bookid=request.getParameter("bookid");
	String borrowername=request.getParameter("borrowername");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String notes=request.getParameter("notes");
	String borroweddate=request.getParameter("borroweddate");
	String expiredate=request.getParameter("expiredate");
	String indexnumber=request.getParameter("indexnumber");
	
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "Malinda11Max@");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("insert into new_table(bookname,bookid,borrowername,author,publisher,notes,borroweddate,expiredate,indexnumber)values('"+bookname+"','"+bookid+"','"+borrowername+"','"+author+"','"+publisher+"','"+notes+"','"+borroweddate+"','"+expiredate+"','"+indexnumber+"')");

		out.println("<script type='text/javascript'>");
		out.println("alert('Deta Insert Successfully!');");
		out.println("location='addborrowAD.jsp'");
		out.println("</script>");

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> 