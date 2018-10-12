package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
import util.DBUtil;

public class UserDAO {

	private final static String FIND_USER_BY_ID = "select * from userinfo where user_id=?";
	private final static String FIND_USER_BY_ID_AND_PWD = "select * from userinfo where user_id=? and user_password=?";
	private final static String INSERT_NEW_USER_info = "insert into userinfo (user_id,user_password,user_name,user_email) values (?,?,?,?)";
	
	
	  public void insertNewUser(User user) {
	    	try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement ps=connection.prepareStatement(INSERT_NEW_USER_info);
	            ps.setString(1,user.getId());
	            ps.setString(2,user.getPassword());
                ps.setString(3, user.getName());
                ps.setString(4, user.getEmail());
	            ps.executeUpdate();
	            DBUtil.closeStatement(ps);
	            DBUtil.closeConnection(connection);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	    }
	  
	    public boolean checkUserISExist(String userid){
	        
	        try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(FIND_USER_BY_ID);
	            preparedStatement.setString(1,userid);
	            ResultSet resultSet = preparedStatement.executeQuery();
	            if(resultSet.next()){
	                return true;
	            }
	            
	            DBUtil.closeResultSet(resultSet);
	            DBUtil.closePreparedStatement(preparedStatement);
	            DBUtil.closeConnection(connection);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
			return false;
	        
	    }
	    
	    public boolean checkUserByIdAndPwd(User user){
	        
	        try {
	            Connection connection = DBUtil.getConnection();
	            PreparedStatement preparedStatement = connection.prepareStatement(FIND_USER_BY_ID_AND_PWD);
	            preparedStatement.setString(1,user.getId());
	            preparedStatement.setString(2,user.getPassword());
	            ResultSet resultSet = preparedStatement.executeQuery();
	            if(resultSet.next()){
	                return true;
	                
	            }
	            DBUtil.closeResultSet(resultSet);
	            DBUtil.closePreparedStatement(preparedStatement);
	            DBUtil.closeConnection(connection);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	        return false;
	    }
}
