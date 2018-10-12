package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.Classes;
import bean.User;
import dao.ClassesDAO;
import dao.CommentDAO;


/**
 * Servlet implementation class OpenClassVideo
 */
@WebServlet("/main/OpenClassVideo")
public class OpenClassVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenClassVideo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String classId = request.getParameter("classId");
		ClassesDAO classesDAO = new ClassesDAO();
		Classes classes = classesDAO.getClassById(classId);
		
		HttpSession session = request.getSession();
		session.setAttribute("classes", classes);
		request.getRequestDispatcher("classVideo1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
