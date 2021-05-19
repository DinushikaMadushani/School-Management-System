<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String parentid = request.getParameter("parentid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_manage", "root", "DinushikaAlvis");
Statement st=conn.createStatement();
String sql="delete from emails where parentId= '"+parentid+"'";
int i=st.executeUpdate(sql);


out.println("<script type='text/javascript'>");
out.println("alert('Delete Message!');");
out.println("location='mailRequest.jsp'");
out.println("</script>");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>