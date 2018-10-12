package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.Course;
import util.DBUtil;

public class CourseDAO {
    private final static String GET_COURSE_LIST = "select* from course";
    private final static String GET_COURSE_BY_ID = "select* from course where course_id=?";
    
	public List<Course> getCourseList(){
		 List<Course> result = new ArrayList<Course>();
	        try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(GET_COURSE_LIST);	  
	            ResultSet resultSet = preparedStatement.executeQuery();
	            while(resultSet.next()){
	            	Course course = new Course();
	            	course.setId(resultSet.getString(1));
	            	course.setName(resultSet.getString(2));
	            	course.setDescription(resultSet.getString(3));
	                result.add(course);
	            }
	            DBUtil.closeResultSet(resultSet);
	            DBUtil.closePreparedStatement(preparedStatement);
	            DBUtil.closeConnection(connection);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	        return result;
	}
	
	public Course getCourseById(String courseId) {
		Course result = null;
		try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_COURSE_BY_ID);	
            preparedStatement.setString(1, courseId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
            	result = new Course();
            	result.setId(resultSet.getString(1));
            	result.setName(resultSet.getString(2));
            	result.setDescription(resultSet.getString(3));
       
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
