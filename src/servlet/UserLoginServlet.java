package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/main/UserLogin")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println("print:"+id);
		System.out.println(password);
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		UserDAO userDAO = new UserDAO();
		HttpSession session = request.getSession();
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		if(userDAO.checkUserByIdAndPwd(user)) {
			
			out.println("<msg>success</msg>");
			out.flush();
			out.close();
			session.setAttribute("user", user);
			String fromUserId = ((User)session.getAttribute("user")).getId();
			System.out.println("´Ósession»ñµÃ£º"+fromUserId);
		}
		else {
			
			out.println("<msg>error</msg>");
			out.flush();
			out.close();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
