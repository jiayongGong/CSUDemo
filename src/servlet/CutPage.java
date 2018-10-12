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
import net.sf.json.JSONArray;

/**
 * Servlet implementation class CutPage
 */
@WebServlet("/main/CutPage")
public class CutPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CutPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(111111);
		HttpSession session = request.getSession();
		List<Comment> commentList = (List<Comment>) session.getAttribute("commentList");
		int pageFrom = 1;
		if(session.getAttribute("pageFrom")!=null)
			pageFrom = (int) session.getAttribute("pageFrom");
		int pageTo = Integer.parseInt(request.getParameter("pageTo"));
		System.out.println("之前页数："+pageFrom);
		System.out.println("现在页数："+pageTo);
		int totalComment = commentList.size();
		
		int pagewrite = 10;
		int totalPage;
		
		if(totalComment<10)
			totalPage = 1;
		else if(totalComment % pagewrite==0)
			totalPage = totalComment / pagewrite;
		else
			totalPage = totalComment / pagewrite +1;
		
		List<Comment> commentCutList = new ArrayList<>();
		
		if(totalPage==1) {
			for(int i=0;i<totalComment;i++)
				commentCutList.add((Comment) commentList.get(i));
		}
		else if(pageTo>=totalPage) {
			for(int i=(totalPage-1)*10;i<totalComment;i++)
				commentCutList.add((Comment) commentList.get(i));
		}else{
			for(int i=(pageTo-1)*10;i<pageTo*10;i++)
				commentCutList.add((Comment) commentList.get(i));
		}
		
		
		session.setAttribute("pageFrom", pageTo);
		PrintWriter out = response.getWriter();
        out.println(JSONArray.fromObject(commentCutList).toString());
        out.flush();
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
