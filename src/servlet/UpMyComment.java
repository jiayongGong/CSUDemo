package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Comment;
import bean.User;
import dao.CommentDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class UpMyComment
 */
@WebServlet("/main/UpMyComment")
public class UpMyComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpMyComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String mycomment=request.getParameter("mycomment"); 
		String classId=request.getParameter("classId");
        
		CommentDAO commentDAO = new CommentDAO();
		
		if(!mycomment.equals("null"))
		{
			String fromUserId = ((User)session.getAttribute("user")).getId();
			commentDAO.insertNewComment(classId, mycomment, fromUserId);
		}
		List commentList = commentDAO.getCommentList(classId);
		session.setAttribute("commentList", commentList);
		List<Comment> commentCutList = new ArrayList<>();
		if(commentList.size()>=10) {
			for(int i=0;i<10;i++)
				commentCutList.add((Comment) commentList.get(i));
		}else {
			for(int i=0;i<commentList.size();i++)
				commentCutList.add((Comment) commentList.get(i));
		}
		session.setAttribute("pageFrom", 1);
		PrintWriter out = response.getWriter();
        out.println(JSONArray.fromObject(commentCutList).toString());
        out.flush();
        out.close();
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
