/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.LoginUser;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author Haikal
 */
public class LoginUserDao {
    public String authenticateUser(LoginUser loginUser){
        String username=loginUser.getFundername();
        String password=loginUser.getFunderpass();
        
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String userNameDB="";
        String passwordDB="";
        
        try{
            conn=DBConnection.createConnection();
            statement=conn.createStatement();
            resultSet=statement.executeQuery("SELECT FUNDERNAME,FUNDERPASS FROM FUNDER");
            while(resultSet.next()){
                userNameDB=resultSet.getString("funderName");
                passwordDB=resultSet.getString("funderPass");
                
                if(username.equals(userNameDB)&&password.equals(passwordDB)){
                    return "SUCCESS";
                }
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
}
