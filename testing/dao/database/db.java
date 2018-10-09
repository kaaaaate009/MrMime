package database;

import java.sql.*;

public class db {

	String connectionURL = "jdbc:mysql://localhost:3306/algranth";
	Connection conn = null;

	public db() {
		super();
	}

	public boolean connect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(connectionURL, "root", "admin");
		return true;
	}

	public void close() throws Exception {
		conn.close();
	}

	public ResultSet execSQL(String sql) throws Exception {
		Statement s = conn.createStatement();
		ResultSet r = s.executeQuery(sql);
		return r;
	}

	public int updateSQL(String sql) throws Exception {
		Statement s = conn.createStatement();
		int r = s.executeUpdate(sql);
		return r;

	}

}