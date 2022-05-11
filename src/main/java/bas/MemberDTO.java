package bas;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
	String pid;
	int no;
	boolean marriage;
	
	public MemberDTO() {
		
	}
	
	public MemberDTO(String pid, int no, boolean marriage) {
		this.pid = pid;
		this.no = no;
		this.marriage = marriage;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	
	public void setNo(String no) {
		if(no!=null){
			this.no = Integer.parseInt(no);
		}
	}

	public boolean isMarriage() {
		return marriage;
	}

	public void setMarriage(boolean marriage) {
		this.marriage = marriage;
	}
	
	public void init(HttpServletRequest request) {
		this.pid = request.getParameter("pid");
		
		if(request.getParameter("no")!=null){
			this.no = Integer.parseInt(request.getParameter("no"));
		}
		
		if(request.getParameter("marriage") != null) {
			this.marriage = request.getParameter("marriage").equals("true") ? true : false;
		}
	}
	
	
	@Override
	public String toString() {
		return "MemberDTO [pid=" + pid + ", no=" + no + ", marriage=" + marriage + "]";
	}
	
	
	
	
}
