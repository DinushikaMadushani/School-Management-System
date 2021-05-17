package com.parent;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParentLogin")
public class ParentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String nic = request.getParameter("nic");
		String sid = request.getParameter("sid");
		boolean isTrue;
		
		isTrue = ParentDButil.validate(nic, sid);
		
		if(isTrue==true){
			List <Parent>parentDetails = ParentDButil.getParent(nic);
			request.setAttribute("parentDetails", parentDetails); 
			
			RequestDispatcher dis = request.getRequestDispatcher("ParentInterface.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect.Please check again');");
			out.println("location='ParentLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
