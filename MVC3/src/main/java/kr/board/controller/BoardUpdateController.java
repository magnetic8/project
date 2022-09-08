package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;
import kr.board.entity.Board;


public class BoardUpdateController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 수정처리->리스트로...
					BoardDAO dao = new BoardDAO();
					int num = Integer.parseInt(request.getParameter("num"));
					String title =request.getParameter("title");
					String content =request.getParameter("content");		
					Board vo = new Board();
					vo.setNum(num);
					vo.setTitle(title);
					vo.setContent(content);
					dao.boardUpdate(vo);
					//nextPage="redirect:/boardList.do";
					return "redirect:/boardList.do";
	}
	

}
