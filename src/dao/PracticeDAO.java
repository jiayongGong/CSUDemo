package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Practice;
import util.DBUtil;

public class PracticeDAO {

	private final static String GET_PRACTICE_LIST_BY_CLASSID = "select* from practice where class_id=? order by practice_id";

   public List<Practice> getPracticeList(String classesId){
	   List<Practice> result = new ArrayList<Practice>();
       try {
           Connection connection = DBUtil.getConnection();
           PreparedStatement preparedStatement = connection.prepareStatement(GET_PRACTICE_LIST_BY_CLASSID);
           preparedStatement.setString(1, classesId);
           ResultSet resultSet = preparedStatement.executeQuery();
           while(resultSet.next()){
           	Practice p = new Practice();
           	p.setClassId(resultSet.getString(1));
           	p.setId(resultSet.getInt(2));
           	p.setName(resultSet.getString(3));
           	p.setAnswer1(resultSet.getString(4));
           	p.setAnswer2(resultSet.getString(5));
           	p.setAnswer3(resultSet.getString(6));
           	p.setAnswer4(resultSet.getString(7));
           	p.setCorrect(resultSet.getString(8));
               result.add(p);
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
