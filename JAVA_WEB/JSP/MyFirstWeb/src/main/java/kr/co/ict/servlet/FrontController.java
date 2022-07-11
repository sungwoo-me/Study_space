package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.servlet.service.BoardDetailService;
import kr.co.ict.servlet.service.BoardInsertService;
import kr.co.ict.servlet.service.BoardListService;
import kr.co.ict.servlet.service.iBoardService;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);

	}
	// doget, doPoset 어떤 형식으로 요청이 들어올지 모르기 떄문에 공용 메서드를 하나 생성한다. 
	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식도 처리하게 될 수 있기 때문에 인코딩 설정
		request.setCharacterEncoding("utf-8");
		
		//프론트 컨트롤러는 여러 주소 요청을 처리하기 때문에 uri 부터 받아온다.
		String uri = request.getRequestURI();
		// 포워딩할 .jsp 파일 경로를 미리 저장해둘 변수
		String ui  = null ;
		// 다형성을 이용해 요청 주소에 따른 처리해줄 서비스 
		iBoardService sv= null ;
		
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			sv = new BoardListService(); // 다형성에 의해 IBoardService 를 구현한 모든 타입을 sv에 저장 가능
			sv.execute(request, response); // BoardListservice의 excute는 게시글 목록을 ㄱ ㅏ져옴 
			ui = "/board/boardlist.jsp"; // 포워딩 주소를 ui에 저장 
		}else if(uri.equals("/MyFirstWeb/boardDetail.do")){
			sv = new BoardDetailService(); // 다형성에 의해 IBoardService 를 구현한 모든 타입을 sv에 저장 가능
			sv.execute(request, response); // BoardListservice의 excute는 게시글 목록을 ㄱ ㅏ져옴 
			ui = "/board/boarddetail.jsp"; // 포워딩 주소를 ui에 저장 		}
		}else if(uri.equals("/MyfirstWeb/boardForm.do")) {
			ui= "/board/boardform.jsp";
		}else if(uri.equals("/MyFirstWeb/boardInsert.do")){
			sv = new BoardInsertService(); // 다형성에 의해 IBoardService 를 구현한 모든 타입을 sv에 저장 가능
			sv.execute(request, response); // BoardListservice의 excute는 게시글 목록을 ㄱ ㅏ져옴 
			ui = "/boardList.do"; // 포워딩 주소를 ui에 저장 
		}
		
		// 위쪽 if~else 문을 다 호출한 다음 실제 포워딩 실행
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
	}
}
