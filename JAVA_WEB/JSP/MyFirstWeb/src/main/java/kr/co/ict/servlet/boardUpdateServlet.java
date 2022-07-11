package kr.co.ict.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class boardUpdateServlet
 */
@WebServlet("/boardUpdate")
public class boardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdateServlet() {
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
		String title = request.getParameter("title");
		String content = request.getParameter("content");

	
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateBoard(bNum,title,content);
		
		
		response.sendRedirect("http://localhost:8181/MyFirstWeb/Boarddetail?board_num=" +bNum);

	}
	

}
