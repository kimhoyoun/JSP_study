package board_p;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/*")
public class F_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	ArrayList<String> nonClass;
	
    public F_Controller() {
        super();
        nonClass = new ArrayList<>();
        nonClass.add("InsertForm");
        nonClass.add("DeleteForm");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
//		System.out.println(request.getRequestURI());
//		System.out.println(request.getContextPath());
		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath()+"/board/").length()
				);				
		
//		System.out.println(serviceStr);
		
		// InsertForm을 클래스를 만들지 않고 바로 이동시키기 위함.
		if(nonClass.contains(serviceStr)) {
			request.setAttribute("mainUrl", serviceStr);
		}else {
		
			try {
				BoardService service = (BoardService)Class.forName("board_p.service_p.Board"+serviceStr).newInstance();
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
//		System.out.println("doGet()");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/bbb_view/template.jsp");
		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
