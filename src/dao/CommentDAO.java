package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.Comment;
import util.DBUtil;



public class CommentDAO {

	private final static String GET_COMMENT_LIST_BY_CLASSID ="select* from comment where class_id=?";
	private final static String INSERT_NEW_COMMENT = "insert into comment (class_id,comment_id,from_user_id,comment_name) values (?,?,?,?)";
	
	public List<Comment> getCommentList(String classId){
		 List<Comment> result = new ArrayList<Comment>();
	        try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(GET_COMMENT_LIST_BY_CLASSID);
	            preparedStatement.setString(1, classId);
	            ResultSet resultSet = preparedStatement.executeQuery();
	            while(resultSet.next()){
	            	Comment c= new Comment();
	            	c.setClassId(resultSet.getString(1));
	            	c.setId(resultSet.getInt(2));
	            	c.setFromUserId(resultSet.getString(3));
	            	c.setToUserId(resultSet.getString(4));
	            	c.setName(resultSet.getString(5));
	                result.add(c);
	            }
	            DBUtil.closeResultSet(resultSet);
	            DBUtil.closePreparedStatement(preparedStatement);
	            DBUtil.closeConnection(connection);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	        return result;
	}


	public void insertNewComment(String classId,String comment,String fromUserId) {
		CommentDAO d = new CommentDAO();
		List commentList = d.getCommentList(classId);
		int commentId = commentList.size();
		try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement ps=connection.prepareStatement(INSERT_NEW_COMMENT);
            ps.setString(1,classId);
            ps.setInt(2,commentId);
            ps.setString(3,fromUserId);
            ps.setString(4,comment);
            ps.executeUpdate();
            DBUtil.closeStatement(ps);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
	}
}
