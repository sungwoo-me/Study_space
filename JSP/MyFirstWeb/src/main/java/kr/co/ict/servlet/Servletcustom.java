package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servletcustom
 */
@WebServlet("/spring")
public class Servletcustom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletcustom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("접속완료 !! ");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("접속시 생성된 객체는 서버 종료로 인해 파기됩니다. ");
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("재접속 확인 ");
		String jsp = request.getParameter("jsp");
		String boot = request.getParameter("boot");
		String jpa = request.getParameter("jpa");

		System.out.println(jsp + "," + boot+", " +jpa );
		
		//response.sendRedirect("https://www.naver.com");
		
		request.setAttribute("jsp" ,jsp);

		request.setAttribute("boot", boot);
		request.setAttribute("jpa", jpa);
		
		RequestDispatcher dp = request.getRequestDispatcher(
				"/ServletForm/springResult.jsp");
		dp.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost는 현재까지 배운 내용만 놓고 봤을때는 form에서 post방식으로 제출될 때 호출 된다.
		System.out.println("Spring 주소 post방식으로 접속함. ");
		// servletForm내부에 있던 ~~~~Form.jsp 목적지는 그대로 두고 
		// 전송 방식만 post로 바꿔서 데이터를 날리고
		// 받아서 처리
		// post 방식으로 전송됨을 구분하기 위해 
		// system.out.println("post방식: " + 변수명 );
		// 인코딩 처리로 깨지는 한글 복구
		request.setCharacterEncoding("utf-8");
		String jsp = request.getParameter("jsp");
		String boot = request.getParameter("boot");
		String jpa = request.getParameter("jpa");

		System.out.println("post 방식으로 전송 : " + jsp + "," + boot+", " +jpa );
		// 리다이렉트는 페이지만 이동 데이터 값은 전송 x 
		//response.sendRedirect("http://localhost:8181/MyFirstWeb/ServletForm/springResult.jsp");
		// 변수를 함께 전달하기 위해 forward 사용
		request.setAttribute("jsp",jsp);
		request.setAttribute("boot",boot);
		request.setAttribute("jpa",jpa);
		
		RequestDispatcher dp = request.getRequestDispatcher(
				"/ServletForm/springResult.jsp");
		dp.forward(request,response);
		
	}

}
