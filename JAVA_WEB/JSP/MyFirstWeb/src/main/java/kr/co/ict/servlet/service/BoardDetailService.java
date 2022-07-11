package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardDetailService implements iBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// board_num 가져오기

		String board_num = request.getParameter("board_num");
		int bNum= Integer.parseInt(board_num);
		System.out.println(bNum);
		// dao 생성
		BoardDAO dao = BoardDAO.getInstance();

		// dao 에서 해당 글번호에 대한 정보를 가졍고ㅗ
		
		BoardVO board = dao.getBoardDetail(bNum);
		// 정보 확인
		// 데이터 바인딩 
		request.setAttribute("board", board) ;
	}

}
