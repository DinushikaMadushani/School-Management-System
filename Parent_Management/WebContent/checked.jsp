<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/school_manage";%>
<%!String user = "root";%>
<%!String psw = "DinushikaAlvis";%>
<%

				String nic=request.getParameter("parentid");
				String name=request.getParameter("title");
				String sid=request.getParameter("message");

