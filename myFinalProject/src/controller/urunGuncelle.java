package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DataBase;


/**
 * Servlet implementation class UrunGuncelle
 */
@WebServlet("/urunGuncelle")
public class urunGuncelle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String urunadi;
	private String urunresmi;
	private int urunfiyati;
	private int kategorisecim;
	DataBase db;  
	Connection c;
    PreparedStatement stmt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public urunGuncelle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String urunid = request.getParameter("urunid");

		
		urunadi = request.getParameter("urunAdi");
		urunresmi = request.getParameter("urunResmi");
		urunfiyati = Integer.parseInt(request.getParameter("urunFiyat"));
		kategorisecim = Integer.parseInt(request.getParameter("kategorisecim"));
		db=new DataBase();
		db.veritabaninaBaglan();
		
		 try {
	         c = db.connection;
	         c.setAutoCommit(false);
	         System.out.println("Opened database successfully");
			 String sorgu="UPDATE uruntablosu SET (urunadi, urunresmi, urunfiyati, kategorid, urunid)VALUES(?,?,?,?)WHERE urunid="+urunid+" ";
			 stmt = c.prepareStatement(sorgu);
			 stmt.setString(1, urunadi);
			 stmt.setString(2, urunresmi);
			 stmt.setInt(3, urunfiyati);
			 stmt.setInt(4, kategorisecim);
			 stmt.executeUpdate();
	         stmt.close();
	         c.commit();
	         c.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("butunurunler");
	}
	}
