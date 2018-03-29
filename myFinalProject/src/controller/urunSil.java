package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DataBaseIslem;


@WebServlet("/urunSil")
public class urunSil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int urunid;
	
    public urunSil() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		urunid = Integer.parseInt(request.getParameter("urunid"));
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		DataBaseIslem dbConnection = new DataBaseIslem();
		connection = dbConnection.setConnection();

		      try {
		    	  statement = connection.createStatement();
		    	
		    	  String sorgu = "DELETE  FROM uruntablosu WHERE urunid='"+urunid+"'";
		    	  statement.executeUpdate(sorgu); 
		    	  connection.close();
		    	  response.sendRedirect("AdminListele");

		      } catch (Exception e) {
		         System.err.println( e.getClass().getName()+": "+ e.getMessage() );
		         System.exit(0);
		      }
		      
		   }
}

