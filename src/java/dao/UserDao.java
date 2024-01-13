/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.UserBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author HP
 */

public class UserDao {
    public UserBean profileUser(int id){
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String userNameDB="";
        int idDB=0;
        String emailDB="";
        String phoneDB="";
        
        
        try{
            conn = DBConnection.createConnection();
            statement = conn.createStatement();
            resultSet = statement.executeQuery("SELECT FUNDERID,FUNDERNAME,FUNDEREMAIL,FUNDERPHONE FROM funder where FUNDERID="+id);
            
            while(resultSet.next()){
                userNameDB = resultSet.getString("funderName");
                idDB = resultSet.getInt("funderId");
                emailDB = resultSet.getString("funderEmail");
                phoneDB = resultSet.getString("funderPhone");
                
                UserBean user = new UserBean(idDB,userNameDB,emailDB,phoneDB);
                return user;
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
            
}
