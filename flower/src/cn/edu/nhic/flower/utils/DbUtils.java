package cn.edu.nhic.flower.utils;
import java.sql.*;
public class DbUtils {
	private Statement state;
	public DbUtils() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/flower?useUnicode=true&characterEncoding=utf8";
		String dbUser = "root";
		String dbPwd = "1234";
		Connection conn = DriverManager.getConnection(url, dbUser, dbPwd);
		state = conn.createStatement();
	}
	public int update(String sql) throws Exception{
		int result = state.executeUpdate(sql);
		return result;
	}
	public ResultSet query(String sql) throws Exception{
		ResultSet rs= state.executeQuery(sql);
		return rs;
	}
}

