package Parentprofile;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Searchparent")
public class Searchparent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nic = request.getParameter("nic");
		String StudentId=request.getParameter("StudentId");
		
		try {
		List<Parent>parentDetails = parentDBUtill.validate(nic, StudentId);
	    request.setAttribute("parentDetails", parentDetails);
	    
		}catch(Exception e) {
			e.printStackTrace();
		}
	    
		RequestDispatcher dis = request.getRequestDispatcher("UpdateParent.jsp");
	    dis.forward(request, response);
	}
	
	

}
