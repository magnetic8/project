package kr.grade.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.login.controller.Controller;


public class GradeWriteFormController implements Controller{
	
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "grade_board/grade_boardWrite";
	}

}
