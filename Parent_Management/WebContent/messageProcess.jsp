<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

	String parentid = request.getParameter("parentid");
	String title=request.getParameter("title");
	String message=request.getParameter("message");
	

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_manage", "root", "DinushikaAlvis");
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into  emails (parentid,title,message)values('"+parentid+"','"+title+"','"+message+"')");
	out.println("<script type='text/javascript'>");
	out.println("alert('Message Send Successfully!');");
	out.println("location='sendmail.jsp'");
	out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>