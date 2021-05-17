package com.parent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteParentServlet")
public class DeleteParentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nic = request.getParameter("nic");
		
		boolean isTrue;
		isTrue = ParentDButil.deleteParent(nic);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ParentLogin.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Parent> parentDetails = ParentDButil.getParentDetails(nic);
			request.setAttribute("parentDetails", parentDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("myProfile.jsp");
			dispatcher.forward(request, response);
		}
	}

}
