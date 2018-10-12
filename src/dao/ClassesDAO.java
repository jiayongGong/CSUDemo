package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Classes;
import util.DBUtil;

public class ClassesDAO {

	private final static String GET_CLASS_LIST_BY_COURSEID = "select* from class where course_id=?";
	private final static String GET_CLASS_BY_ID = "select* from class where class_id=?";
	
	
	public List<Classes> getClassList(String courseId){
		 List<Classes> result = new ArrayList<Classes>();
	        try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(GET_CLASS_LIST_BY_COURSEID);
	            preparedStatement.setString(1, courseId);
	            ResultSet resultSet = preparedStatement.executeQuery();
	            while(resultSet.next()){
	            	Classes c= new Classes();
	            	c.setId(resultSet.getString(1));
	            	c.setCountId(resultSet.getString(2));
	            	c.setName(resultSet.getString(3));
	            	c.setDescription(resultSet.getString(4));
	            	c.setVideo(resultSet.getString(5));
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
	
	public Classes getClassById(String classId) {
		Classes result = new Classes();
		try {
			
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_CLASS_BY_ID);
            preparedStatement.setString(1, classId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
            	
            	result.setId(resultSet.getString(1));
            	result.setCountId(resultSet.getString(2));
            	result.setName(resultSet.getString(3));
            	result.setDescription(resultSet.getString(4));
            	result.setVideo(resultSet.getString(5));
                
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
	}
}
