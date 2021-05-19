<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String availability=request.getParameter("availability");
	String pastpaperid=request.getParameter("pastpaperid");
	String year=request.getParameter("year");
	String subject=request.getParameter("subject");
	String grade=request.getParameter("grade");

		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "Malinda11Max@");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("insert into papers(availability,pastpaperid,year,subject,grade)values('"+availability+"','"+pastpaperid+"','"+year+"','"+subject+"','"+grade+"')");

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