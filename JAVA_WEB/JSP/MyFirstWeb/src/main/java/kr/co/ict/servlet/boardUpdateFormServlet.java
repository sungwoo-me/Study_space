package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class boardUpdateFormServlet
 */
@WebServlet("/boardUpdateForm")
public class boardUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdateFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		String board_num = request.getParameter("board_num");		
		int bNum= Integer.parseInt(board_num);
		

		BoardDAO dao = BoardDAO.getInstance();
		BoardVO board = dao.getBoardDetail(bNum);
		
	
		
		request.setAttribute("board", board) ;
		// 보낼 페이지를 받아오고 
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardUpdateForm.jsp");
		// 페이지에 정보 보내기
		dp.forward(request, response);
		 
		
	
	}

}
