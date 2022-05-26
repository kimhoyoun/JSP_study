package board_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService {
	
	// 파라미터와 어트리뷰트를 쓰려고함.
	void execute(HttpServletRequest request, HttpServletResponse response);
}
