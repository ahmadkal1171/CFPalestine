/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.LoginAdmin;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author Haikal
 */
public class LoginAdminDao {
    public String authenticateUser(LoginAdmin loginAdmin){
        String username=loginAdmin.getUsername();
        String password=loginAdmin.getPassword();
        
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String userNameDB="";
        String passwordDB="";
        
        try{
            conn=DBConnection.createConnection();
            statement=conn.createStatement();
            resultSet=statement.executeQuery("SELECT USERADMIN,PASSADMIN FROM ADMIN");
            while(resultSet.next()){
                userNameDB=resultSet.getString("userAdmin");
                passwordDB=resultSet.getString("passAdmin");
                
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
