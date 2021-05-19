<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

	String nic = request.getParameter("nic");
	String name=request.getParameter("name");
	String sid=request.getParameter("sid");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	String job=request.getParameter("job");
	String grade=request.getParameter("grade");
	String clas =request.getParameter("class");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_manage", "root", "DinushikaAlvis");
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into  new_table (nic,name,sid,address,phone,job,grade,class )values('"+nic+"','"+name+"','"+sid+"','"+address+"','"+phone+"','"+job+"','"+grade+"','"+clas+"')");
	out.println("<script type='text/javascript'>");
	out.println("alert(' Data Insert Successfully!');");
	out.println("location='parent.jsp'");
	out.println("</script>");
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>