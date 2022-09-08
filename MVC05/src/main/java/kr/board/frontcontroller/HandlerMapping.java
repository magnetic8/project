package kr.board.frontcontroller;

import java.util.HashMap;

import kr.board.controller.BoardDeleteController;
import kr.board.controller.BoardListController;
import kr.board.controller.BoardUpdateController;
import kr.board.controller.BoardUpdateFormController;
import kr.board.controller.BoardViewController;
import kr.board.controller.BoardWriteController;
import kr.board.controller.BoardWriteFormController;
import kr.board.controller.CalcController;
import kr.board.controller.Controller;
import kr.board.controller.IndexController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/boardList.do", new BoardListController());
		mappings.put("/boardWriteForm.do", new BoardWriteFormController());
		mappings.put("/boardWrite.do",new BoardWriteController());
		mappings.put("/boardDelete.do", new BoardDeleteController());
		mappings.put("/boardUpdateForm.do",  new BoardUpdateFormController());
		mappings.put("/boardUpdate.do", new BoardUpdateController());
		mappings.put("/boardView.do", new BoardViewController());
		mappings.put("/calc.do", new CalcController());
		mappings.put("/index.do", new IndexController());
		
		//추가 
		//mappings.put("/login.do",new BoardLoginController );
		
	}public Controller getController(String command) {
		return mappings.get(command);
	}
}
/*if(command.equals("/boardList.do")) {
			controller = new BoardListController();
			nextPage=controller.requestProcessor(request, response);
			
		}else if(command.equals("/boardWriteForm.do")) {
			controller = new BoardWriteFormController();
			nextPage=controller.requestProcessor(request, response);
			
		}else if(command.equals("/boardWrite.do")) {
			controller = new BoardWriteController();
			nextPage=controller.requestProcessor(request, response);
						
		}else if(command.equals("/boardView.do")) {
			controller = new BoardViewController();
			nextPage=controller.requestProcessor(request, response);
			
		}else if(command.equals("/boardDelete.do")) {
			controller = new BoardDeleteController();
			nextPage=controller.requestProcessor(request, response);
		}else if(command.equals("/boardUpdateForm.do")) {
			controller = new BoardUpdateFormController();
			nextPage=controller.requestProcessor(request, response);
			
		}else if(command.equals("/boardUpdate.do")) {
			controller = new BoardUpdateController();
			nextPage=controller.requestProcessor(request, response);
		}*/

