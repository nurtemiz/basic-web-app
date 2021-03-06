package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SepettenSil
 */
@WebServlet("/SepetSil")
public class SepetSil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SepetSil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		
		//Integer maxInactiveInternal = session.getMaxInactiveInterval();
		//session.setMaxInactiveInterval(10);
		//session.setMaxInactiveInterval(1800);
		//session.setMaxInactiveInterval(600);
		HttpSession session = request.getSession();
		String urunid = request.getParameter("urunid");
		List<Long> previousitems = (List<Long>)session.getAttribute("sepetim");
		if (previousitems == null) {
			previousitems = new ArrayList<>();
		}
		previousitems.remove(Long.valueOf(urunid));
		
		session.setAttribute("sepetim",previousitems);
	
		response.sendRedirect("sepetim.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
