package kr.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;


public class BoardUpdateFormController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
					// 수정데이터를 가져오기-> 수정화면(jsp)
					BoardMyBatisDAO dao = new BoardMyBatisDAO();
					int num =Integer.parseInt(request.getParameter("num"));
					Board vo=dao.boardView(num);
					request.setAttribute("vo", vo);
					//nextPage="boardUpdate";
					return "boardUpdate";
	}
	

}
