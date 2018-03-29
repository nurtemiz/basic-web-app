package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DataBaseIslem;
import model.urun;

@WebServlet("/Sepetlistele")
public class Sepetlistele extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sepetlistele() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection connection;
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		DataBaseIslem dbConnection = new DataBaseIslem();
		connection = dbConnection.setConnection();
		HttpSession session = request.getSession();
		List<urun> urunler = new ArrayList<urun>();

		List<Long> previousitemsId = (List<Long>) session.getAttribute("sepetim");
		
		if (previousitemsId == null) {
			session.setAttribute("urunler", null);
			response.sendRedirect("sepetim.jsp");
			
		}
		
		try {
			for (Long urunid : previousitemsId) {
				String sorgu = "SELECT * FROM uruntablosu where urunid =" + urunid + ";";
				preparedStatement = connection.prepareStatement(sorgu);
				resultSet = preparedStatement.executeQuery();
				while (resultSet.next()) {
					
					String urunAdi = resultSet.getString("urunadi");
					String urunResim = resultSet.getString("urunresmi");
					String urunFiyat = resultSet.getString("urunfiyati");
					int  kategorid = resultSet.getInt("kategorid");
					int  urunid1 = resultSet.getInt("urunid");
					urun urun = new urun(urunAdi,urunResim,urunFiyat,urunid1,kategorid);
					urunler.add(urun);
					
				}
				
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("urunler", urunler);
		response.sendRedirect("sepetim.jsp");
	}

	}

	


