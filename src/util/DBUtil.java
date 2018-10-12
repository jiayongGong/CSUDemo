package util;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public class DBUtil {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/csudemo";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() throws Exception{
        Connection connection = null;
        Class.forName(DRIVER);
        connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        return connection;
    }

    public static void closeConnection(Connection connection) throws Exception{
        if(connection != null){
            connection.close();
        }
    }

    public static void closeStatement(Statement statement) throws Exception{
        if(statement != null){
            statement.close();
        }
    }

    public static void closePreparedStatement(PreparedStatement pStatement) throws Exception{
        if(pStatement != null){
            pStatement.close();
        }
    }

    public static void closeResultSet(ResultSet resultSet) throws Exception{
        if(resultSet != null){
            resultSet.close();
        }
    }

}
