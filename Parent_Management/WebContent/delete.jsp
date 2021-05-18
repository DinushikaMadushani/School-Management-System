<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String nic=request.getParameter("nic");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_manage", "root", "DinushikaAlvis");
Statement st=conn.createStatement();
String sql="delete from new_table where nic= '"+nic+"'";
int i=st.executeUpdate(sql);


out.println("<script type='text/javascript'>");
out.println("alert('Data Deleted Successfully!');");
out.println("location='parent.jsp'");
out.println("</script>");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
