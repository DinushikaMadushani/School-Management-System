package com.parent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateParentServlet")
public class UpdateParentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		String sid = request.getParameter("sid");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String job = request.getParameter("job");
		String grade = request.getParameter("grade");
		String clas = request.getParameter("clas");
		
		boolean isTrue;
		 
		isTrue = ParentDButil.updateParent(nic, name, sid, address, phone, job, grade, clas);
		
		if(isTrue == true) {
			List<Parent> parentDetails = ParentDButil.getParentDetails(nic);
			request.setAttribute("parentDetails", parentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("myProfile.jsp");
			dis.forward(request, response);
		} 
		else {
			List<Parent> parentDetails = ParentDButil.getParentDetails(nic);
			request.setAttribute("parentDetails", parentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("myProfile.jsp");
			dis.forward(request, response);
		}
	}

}
