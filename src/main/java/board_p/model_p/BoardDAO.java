package board_p.model_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public BoardDAO() {
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/qazxsw");
			con = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int totalCnt(){
	
		
		// board에 있는 모든애들을 세갰다.
		sql = "select count(*) from board";
		
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			rs.next();
			
			return rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public ArrayList<BoardDTO> list(int start, int limit){
		ArrayList<BoardDTO> res = new ArrayList<>();
		
		sql = "select * from board order by id desc limit ?, ?";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1,start);
			ptmt.setInt(2, limit);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				// 필요한것만 보이기
				dto.setId(rs.getInt("id"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
				
				res.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public BoardDTO detail(int id){
		BoardDTO dto = null;
		
		sql = "select * from board where id = ?";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				dto = new BoardDTO();
				// 필요한것만 보이기
				dto.setId(rs.getInt("id"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setContent(rs.getString("content"));
				dto.setUpfile(rs.getString("upfile"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	
	public void addCount(int id){
		
		sql = "update board set cnt = cnt+1 where id = ?";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			ptmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void insert(BoardDTO dto){
		
		sql = "insert into board(title, pname, pw, content, upfile, cnt, reg_date) "
				+ "values (? , ? , ? , ? , ?,0,sysdate())";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, dto.getTitle());
			ptmt.setString(2, dto.getPname());
			ptmt.setString(3, dto.getPw());
			ptmt.setString(4, dto.getContent());
			ptmt.setString(5, dto.getUpfile());
			ptmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	
public int modify(BoardDTO dto){
		int res = 0;
		
		sql = "update board set title = ?, pname = ?, content = ? "
				+ "where id = ? and pw = ?";
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, dto.getTitle());
			ptmt.setString(2, dto.getPname());
			ptmt.setString(3, dto.getContent());
			ptmt.setInt(4, dto.getId());
			ptmt.setString(5, dto.getPw());
			res = ptmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}

	public int delete(BoardDTO dto){
	int res = 0;
	
	sql = "delete from board where id = ? and pw = ?";
	try {
		ptmt = con.prepareStatement(sql);
		ptmt.setInt(1, dto.getId());
		ptmt.setString(2, dto.getPw());
		res = ptmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	
	return res;
}
	public void close() {
		if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
		if(ptmt!=null) {try {ptmt.close();} catch (SQLException e) {e.printStackTrace();}}
		if(con!=null) {try {con.close();} catch (SQLException e) {e.printStackTrace();}}
	}
}
