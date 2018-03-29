package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DataBaseIslem;

/**
 * Servlet implementation class SiparisVer
 */
@WebServlet("/Siparis")
public class Siparis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Siparis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urunid = request.getParameter("urunid");
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		DataBaseIslem dbConnection = new DataBaseIslem();
		connection = dbConnection.setConnection();
		
		try {
			statement = connection.createStatement();
			
			String sorgu="INSERT INTO siparis(urunid)"+" VALUES ('"+urunid+"');";
			statement.executeUpdate(sorgu); 

			connection.close();
	
		}catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("alisverisitamamla.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
