package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Course;
import dao.ClassesDAO;
import dao.CourseDAO;

/**
 * Servlet implementation class ViewClassList
 */
@WebServlet("/main/ViewClassList")
public class ViewClassList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewClassList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String courseId = request.getParameter("courseId");
		ClassesDAO classDAO = new ClassesDAO();
		List classList = classDAO.getClassList(courseId);
		CourseDAO courseDAO = new CourseDAO();
		Course course = courseDAO.getCourseById(courseId);
		HttpSession session = request.getSession();
		session.setAttribute("classList", classList);
		session.setAttribute("coursess", course);
		request.getRequestDispatcher("classList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
