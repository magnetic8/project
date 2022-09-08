package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;
import kr.board.entity.Board;

/**
 * Servlet implementation class BoardUpdateController
 */
@WebServlet("/boardUpdate.do")
public class BoardUpdateController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라메터 수집(num, title, content)
		request.setCharacterEncoding("euc-kr");
		int num = Integer.parseInt(request.getParameter("num"));
		String title =request.getParameter("title");
		String content =request.getParameter("content");		
		Board vo = new Board();
		vo.setNum(num);
		vo.setTitle(title);
		vo.setContent(content);
		
		BoardDAO dao=new BoardDAO();
		int cnt = dao.boardUpdate(vo);
		if(cnt>0) {
			response.sendRedirect("/MVC01/boardList.do");
		}else {
			throw new ServletException("not update");
		}
	}

}
