package bas;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class OutGoGo {
	JspWriter jw;
	
	public OutGoGo(JspWriter jw){
		this.jw = jw;
	}
	
	public void www() {
		try {
			jw.println("내가 글을쓴다 홍홍홍<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
