package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBCP_DAO {
	Connection con;
//	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	public DBCP_DAO() {
		
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/qazxsw");
			con = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean insert(MemberDTO dto) {
		sql = "INSERT INTO member(pid, pname, pw, age, marriage, reg_date) VALUES (?, ?, ?, ?, ?,SYSDATE())";
		
		int re = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getPid());
			pstmt.setString(2, dto.getPname());
			pstmt.setString(3, dto.getPw());
			pstmt.setInt(4, dto.getAge());
			pstmt.setInt(5, dto.getMarriageInt());
			 re = pstmt.executeUpdate();
			
			return re==1;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		
		return re==1;
	}
	
	public int delete(MemberDTO dto) {
		int res = 0;
		sql = "DELETE FROM member WHERE pid=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getPid());
			 res = pstmt.executeUpdate();
			
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return res;
	}
	
	
	public int update(MemberDTO dto) {
		int res = 0;
		sql = "UPDATE member SET pname=?, pw=?, age=?, marriage=? WHERE  pid=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getPname());
			pstmt.setString(2, dto.getPw());
			pstmt.setInt(3, dto.getAge());
			pstmt.setInt(4, dto.getMarriageInt());
			pstmt.setString(5, dto.getPid());
			 res = pstmt.executeUpdate();
			
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
		
		return res;
	}
	
	public ArrayList<MemberDTO> list(int marriage){
		ArrayList<MemberDTO> res = new ArrayList<>();
		
		sql = "SELECT * FROM member WHERE marriage = ?"  ;
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1,marriage);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setPid(rs.getString("pid"));
				dto.setPname(rs.getString("pname"));
				dto.setAge(rs.getInt("age"));
				dto.setMarriage(rs.getInt("marriage"));
				dto.setReg_Date(rs.getTimestamp("reg_Date"));
				
				res.add(dto);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return res;
	}
	
	public MemberDTO detail(MemberDTO dto){
		MemberDTO res = null;
		sql = "SELECT * FROM member WHERE pid =? and pw = ?" ;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,dto.getPid());
			pstmt.setString(2,dto.getPw());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				res = new MemberDTO();
				res.setPid(rs.getString("pid"));
				res.setPname(rs.getString("pname"));
				res.setAge(rs.getInt("age"));
				res.setMarriage(rs.getInt("marriage"));
				res.setReg_Date(rs.getTimestamp("reg_Date"));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return res;
	}
	
	public void close() {
		if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
		if(pstmt!=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
		if(con!=null) {try {con.close();} catch (SQLException e) {e.printStackTrace();}}
	}
}
