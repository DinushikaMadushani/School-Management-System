<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/librarymanagement";%>
<%!String user = "root";%>
<%!String psw = "Malinda11Max@";%>
<%

String bookname = request.getParameter("bookname");
String bookid = request.getParameter("bookid");
String author = request.getParameter("author");
String numberofpages = request.getParameter("numberofpages");
String publisher = request.getParameter("publisher");
String publisheddate = request.getParameter("publisheddate");
String note = request.getParameter("note");
String available = request.getParameter("available");


 if(bookid != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update bookdetails01 set bookname=?,bookid=?,author=?,numberofpages=?,publisher=?,publisheddate=?,note=?,available=? where bookid='"+bookid+"'";
ps = con.prepareStatement(sql);
ps.setString(1, bookname);
ps.setString(2, bookid);
ps.setString(3, author);
ps.setString(4, numberofpages);
ps.setString(5, publisher);
ps.setString(6, publisheddate);
ps.setString(7, note);
ps.setString(8, available);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script type='text/javascript'>");
out.println("alert('Record Updated Successfully!');");
out.println("location='searchAD.jsp'");
out.println("</script>");
}
else
{
out.println("<script type='text/javascript'>");
out.println("alert('There is a problem in updating Record.');");
out.println("location='searchAD.jsp'");
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