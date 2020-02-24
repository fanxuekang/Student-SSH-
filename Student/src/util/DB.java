package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {
	// 获取数据库连接
	public static Connection getConn() {
		Connection conn = null;
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String name = "scott";
		String pwd = "oracle";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, name, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	// 关闭对象 释放资源
	public static void close(Connection conn, PreparedStatement pst,
			ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
			if (pst != null)
				pst.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}