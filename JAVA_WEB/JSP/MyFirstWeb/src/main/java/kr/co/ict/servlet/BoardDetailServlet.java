package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/Boarddetail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getParameter를 이용해 글 번호를 가져온다
		// board_num 가져오기
		request.setCharacterEncoding("utf-8");

		String board_num = request.getParameter("board_num");
		int bNum= Integer.parseInt(board_num);
		System.out.println(bNum);
		// dao 생성
		BoardDAO dao = BoardDAO.getInstance();

		// dao 에서 해당 글번호에 대한 정보를 가졍고ㅗ
		
		BoardVO board = dao.getBoardDetail(bNum);
		// 정보 확인
		
		request.setAttribute("board", board) ;
		// 보낼 페이지를 받아오고 
		RequestDispatcher dp = request.getRequestDispatcher("/board/boarddetail.jsp");
		// 페이지에 정보 보내기
		dp.forward(request, response);
		
	}

}
