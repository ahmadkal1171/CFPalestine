package dao;

import bean.LoginUser;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

public class LoginUserDao {
    public String authenticateUser(LoginUser loginUser){
        String funderusername=loginUser.getFunderusername();
        String funderpass=loginUser.getFunderpass();
        
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String usernameDB="";
        String passwordDB="";
        
        try{
            conn=DBConnection.createConnection();
            statement=conn.createStatement();
            resultSet=statement.executeQuery("SELECT funderusername,funderpass FROM funders");
            while(resultSet.next()){
                usernameDB=resultSet.getString("funderusername");
                passwordDB=resultSet.getString("funderpass");
                
                if(funderusername.equals(usernameDB)&&funderpass.equals(passwordDB)){
                    return "SUCCESS";
                }
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
}
