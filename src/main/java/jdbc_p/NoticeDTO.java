package jdbc_p;

import java.util.Date;

public class NoticeDTO {
	int no;
	String title;
	String pname;
	Date date;
	
	public NoticeDTO() {

	}
	
	public NoticeDTO(int no, String title, String pname, Date date) {
		this.no = no;
		this.title = title;
		this.pname = pname;
		this.date = date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", pname=" + pname + ", date=" + date
				+ "]";
	}
	
	
}
