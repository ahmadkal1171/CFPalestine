package dao;

import bean.LoginUser;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

public class LoginUserDao {
    public String authenticateUser(LoginUser loginUser){
        String fundername=loginUser.getFundername();
        String funderpass=loginUser.getFunderpass();
        
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String usernameDB="";
        String passwordDB="";
        
        try{
            conn=DBConnection.createConnection();
            statement=conn.createStatement();
            resultSet=statement.executeQuery("SELECT FUNDERNAME,FUNDERPASS FROM FUNDER");
            while(resultSet.next()){
                usernameDB=resultSet.getString("funderName");
                passwordDB=resultSet.getString("funderPass");
                
                if(fundername.equals(usernameDB)&&funderpass.equals(passwordDB)){
                    return "SUCCESS";
                }
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
}
