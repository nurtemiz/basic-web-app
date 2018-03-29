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

@WebServlet("/bayanbot")
public class BayanBot extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BayanBot() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection connection;
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		DataBaseIslem dbConnection = new DataBaseIslem();
		connection = dbConnection.setConnection();
		List<urun> urunler = new ArrayList<urun>();

		try {
			// FIXME gordugum kadarıyla uruntablosundaki kategoriid ye gore select cekiyorsun. Her kategori icin ayrı servlet vs yapmıssın.
			// onun yerine kategorid bilgisini requestten gelecek sekilde düzeltsen nasıl olur? bi 10 class filan gider herhalde.

			// String categoryID = request.getParameter("categoryID");
			// SELECT * FROM uruntablosu where kategorid= categoryID
			// gibi
			preparedStatement = connection.prepareStatement("SELECT * FROM uruntablosu where kategorid=3");// FIXME properapredStatement ama kategorid=3
																											// seklinde elle set etmissin!
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String urunAdi = resultSet.getString("urunadi");
				String urunResim = resultSet.getString("urunresmi");
				String urunFiyat = resultSet.getString("urunfiyati");
				int kategorid = resultSet.getInt("kategorid");
				int urunid = resultSet.getInt("urunid");
				urun urun = new urun(urunAdi, urunResim, urunFiyat, urunid, kategorid);
				urunler.add(urun);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("urunler", urunler);
		response.sendRedirect("bayanbot.jsp");
	}

}
