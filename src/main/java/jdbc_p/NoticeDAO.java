package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

public class NoticeDAO {
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	public NoticeDAO() {
		String url = "jdbc:mariadb://localhost:3306/comstudy21";
		String username = "user21";
		String password = "1234";
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
			stmt = con.createStatement();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<NoticeDTO> list(){
		ArrayList<NoticeDTO> res = new ArrayList<>();
		
		sql = "select * from notice order by no desc ";
		
		try {
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String pname = rs.getString("pname");
				Date date = rs.getTimestamp("date");
				
				NoticeDTO notice = new NoticeDTO(no, title, pname, date);
				
				res.add(notice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return res;
	}
	
	public void close() {
		
		if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
		if(stmt!=null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		if(con!=null) {try {con.close();} catch (SQLException e) {e.printStackTrace();}}
	}
}














