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

@WebServlet("/urunEkle")
public class urunEkle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String urunAdi;
	private String urunResmi;
	private int urunFiyati;
	private int kategorisecim;
	DataBase db;  
	Connection c;
    PreparedStatement stmt;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public urunEkle() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	
		
		urunAdi = request.getParameter("urunAdi");
		urunResmi = request.getParameter("urunResmi");
		urunFiyati = Integer.parseInt(request.getParameter("urunFiyat"));
		kategorisecim = Integer.parseInt(request.getParameter("kategorisecim"));
		PrintWriter out=response.getWriter();
		out.println("urunAdi: "+urunAdi+"     "+"urunResmi: "+urunResmi +" "+"urunFiyat:"+" "+urunFiyati +" "+"kategorisecim: "+kategorisecim );		
		db=new DataBase();
		db.veritabaninaBaglan();
			 
		      try {
		         c = db.connection;
		         c.setAutoCommit(false);
		         System.out.println("Opened database successfully");
				 String sorgu="INSERT INTO uruntablosu(urunadi, urunresmi, urunfiyati, kategorid)VALUES(?,?,?,?)";
				 stmt = c.prepareStatement(sorgu);
				 stmt.setString(1, urunAdi);
				 stmt.setString(2, urunResmi);
				 stmt.setInt(3, urunFiyati);
				 stmt.setInt(4, kategorisecim);
				 stmt.executeUpdate();
		         stmt.close();
		         c.commit();
		         c.close();
		      } catch (Exception e) {
		         System.err.println( e.getClass().getName()+": "+ e.getMessage() );
		         System.exit(0);
		      }
		      System.out.println("Records created successfully");
		      response.sendRedirect("urunekle.jsp");
		   }	
	}
