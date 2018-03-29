package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBase {
	public Connection connection;

	public DataBase() {
		System.out.println("Bgl.java Constructure Olu�turuldu�");
	}

	public void veritabaninaBaglan() {

		try {

			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/E-ticaret", "postgres", "MURATnur<3");
			System.out.println("Veri Tabanina Ba�ar� ile Ba�lanm��t�r�. (Bgl.java Bgl())");
		} catch (SQLException e) {

			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
			return;

		} catch (ClassNotFoundException e) {
			System.err.println("org.postgresql.Driver Pathi bulamad� ve veri taban�na ba�lanamad�..");
			e.printStackTrace();
		}

	}

}
