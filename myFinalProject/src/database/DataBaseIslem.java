package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseIslem{
	static Connection connection = null;
	
	private static String dbName = "E-ticaret";
	private static String dbUser = "postgres";
	private static String dbPass = "MURATnur<3";
	private static String url="jdbc:postgresql://localhost:5432/" + dbName;
	
	public static Connection setConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			connection  = DriverManager.getConnection(url,dbUser,dbPass); 
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		return connection;
	}
	
	public void closeConnection() {
		try {
			if (connection != null)
				connection.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
