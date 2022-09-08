package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;

public class BoardWriteController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
					BoardMyBatisDAO dao=new BoardMyBatisDAO();
					// 글쓰기 처리
					String title =request.getParameter("title");
					String content =request.getParameter("content");
					String writer =request.getParameter("writer");
					Board vo = new Board();
					vo.setTitle(title);
					vo.setContent(content);
					vo.setWriter(writer);
					dao.boardWrite(vo);
					//nextPage="redirect:/boardList.do";
					//응답 x ? 신호
					return null;
	}	
	
				
	

}
