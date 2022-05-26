package board_p.service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_p.BoardService;
import board_p.model_p.BoardDAO;

public class BoardList implements BoardService{
	
	public BoardList() {
//		System.out.println("BoardList 실행");
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		Object data = new BoardDAO().list();
		
		request.setAttribute("mainData", data);
		request.setAttribute("mainUrl", "List");
//		System.out.println("BoardList execute()"+data);
	}
}
