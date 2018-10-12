package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Practice;
import dao.PracticeDAO;

/**
 * Servlet implementation class OpenClassPractice
 */
@WebServlet("/main/OpenClassPractice")
public class OpenClassPractice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenClassPractice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String classesId = request.getParameter("classesId");
		PracticeDAO practiceDAO = new PracticeDAO();
		List<Practice> practiceList = practiceDAO.getPracticeList(classesId);
		HttpSession session = request.getSession();
		session.setAttribute("practiceList", practiceList);
		request.getRequestDispatcher("classPractice.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
