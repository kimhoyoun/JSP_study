package board_p.service_p;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board_p.BoardService;
import board_p.model_p.BoardDAO;
import board_p.model_p.BoardDTO;

public class BoardModifyReg implements BoardService{
	
	public BoardModifyReg() {
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BoardDTO dto = new BoardDTO();
		dto.setId(Integer.parseInt(request.getParameter("id")));
		
		dto.setTitle(request.getParameter("title"));
		dto.setPname(request.getParameter("pname"));
		dto.setPw(request.getParameter("pw"));
		dto.setContent(request.getParameter("content"));
		System.out.println(dto);
//		System.out.println(dto);
			
		int res = new BoardDAO().modify(dto);
		
		String msg = "수정 실패", goUrl = "ModifyForm?id="+dto.getId();
		
		if(res>0) {
			msg = "수정되었습니다.";
			goUrl = "Detail?id="+dto.getId()+"&page="+request.getAttribute("nowPage");
			System.out.println(goUrl);
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		request.setAttribute("mainUrl", "alert");
		System.out.println("BoardInsertReg execute()");
	}
}
