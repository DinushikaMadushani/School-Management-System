package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentAttndance")
public class StudentAttndance extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Clas = request.getParameter("Clas");
		String grade = request.getParameter("grade");
		
		boolean isTrue;
		
		
		isTrue = CustomerDBUtil.checkvalue(Clas, grade);
		
		if (isTrue == true) {
			List<usermodel> noobDetails = CustomerDBUtil.getStudent(Clas);
			request.setAttribute("noobDetails", noobDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("studentattendence.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your grade or class is invalied');");
			out.println("location='useraccount.jsp'");
			out.println("</script>");
		}
		
	}

	
}
