package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DataBase;

@WebServlet("/kaydol")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String surname;
	private String email;
	private String password;
	DataBase db;  
	Connection c;
    PreparedStatement stmt;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		name = request.getParameter("name");
		surname = request.getParameter("surname");
		email = request.getParameter("email");
		password = request.getParameter("password");
		PrintWriter out=response.getWriter();
		out.println("name: "+name+" "+"surname: "+surname +" "+"email:"+" "+email +" "+"password: "+password );		
		db=new DataBase();
		db.veritabaninaBaglan();
			 
		      try {
		         c = db.connection;
		         c.setAutoCommit(false);
		         System.out.println("Opened database successfully");
				 String sorgu="INSERT INTO login(ad, soyad, email, parola)VALUES(?,?,?,?)";
				  stmt = c.prepareStatement(sorgu);
				 stmt.setString(1, name);
				 stmt.setString(2, surname);
				 stmt.setString(3, email);
				 stmt.setString(4, password);
				 stmt.executeUpdate();
		         stmt.close();
		         c.commit();
		         c.close();
		      } catch (Exception e) {
		         System.err.println( e.getClass().getName()+": "+ e.getMessage() );
		         System.exit(0);
		      }
		      System.out.println("Records created successfully");
		      response.sendRedirect("girisyap.jsp");
		   }	
	}
