<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String bookname=request.getParameter("bookname");
	String bookid=request.getParameter("bookid");
	String author=request.getParameter("author");
	String numberofpages=request.getParameter("numberofpages");
	String publisher=request.getParameter("publisher");
	String publisheddate=request.getParameter("publisheddate");
	String note=request.getParameter("note");
	String available=request.getParameter("available");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "Malinda11Max@");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("insert into bookdetails01(bookname,bookid,author,numberofpages,publisher,publisheddate,note,available)values('"+bookname+"','"+bookid+"','"+author+"','"+numberofpages+"','"+publisher+"','"+publisheddate+"','"+note+"','"+available+"')");

		out.println("<script type='text/javascript'>");
		out.println("alert('Deta Insert Successfully!');");
		out.println("location='addnewbookAD.jsp'");
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