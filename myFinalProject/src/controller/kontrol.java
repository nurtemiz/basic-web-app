package controller;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DataBaseIslem;





/**
 * Servlet implementation class Login
 */
@WebServlet("/kontrol")
public class kontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String parola = request.getParameter("password");
		String sonuc = "Giriþ Baþarýsýz";
		HttpSession session = request.getSession();
		
		Connection connection;
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		DataBaseIslem dbConnection = new DataBaseIslem();
		connection = dbConnection.setConnection();
		Boolean girisKontrol=false;
		try {
			Statement statement = connection.createStatement();
			String string = "SELECT * FROM login WHERE email='"+email+"' AND parola='"+parola+"'";
			resultSet = statement.executeQuery(string);
			int id = 0;
			while (resultSet.next()){
				sonuc = "Tekrar Deneyin";
				girisKontrol = true;
				id = resultSet.getInt("id");
			}
			session.setAttribute("girisKontrol",girisKontrol);
			session.setAttribute("userId", id);
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		if (!girisKontrol) {
			request.setAttribute("sonuc", sonuc);
			request.getRequestDispatcher("girisyap1.jsp").include(request, response);
			
		}
		else{
			request.setAttribute("sonuc", sonuc);
			request.getRequestDispatcher("homepage.jsp").include(request, response);
		
		}
	
	}

}
