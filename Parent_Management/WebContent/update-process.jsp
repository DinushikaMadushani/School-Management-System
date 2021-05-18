<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/school_manage";%>
<%!String user = "root";%>
<%!String psw = "DinushikaAlvis";%>
<%

String nic=request.getParameter("nic");
String name=request.getParameter("name");
String sid=request.getParameter("sid");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String job=request.getParameter("job");
String grade=request.getParameter("grade");
String clas=request.getParameter("class");

if(nic != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update new_table set nic=?,name=?,sid=?,address=?,phone=?,job=?,grade=?,class=? where nic='"+nic+"'";
ps = con.prepareStatement(sql);
ps.setString(1,nic);
ps.setString(2, name);
ps.setString(3, sid);
ps.setString(4, address);
ps.setString(5, phone);
ps.setString(6, job);
ps.setString(7, grade);
ps.setString(8, clas);
int i = ps.executeUpdate();
if(i > 0)
{
	out.println("<script type='text/javascript'>");
	out.println("alert('Data Updated Successfully!');");
	out.println("location='parent.jsp'");
	out.println("</script>");
}
else
{
	out.println("<script type='text/javascript'>");
	out.println("alert('Data Not Updated Successfully!');");
	out.println("location='parent.jsp'");
	out.println("</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>