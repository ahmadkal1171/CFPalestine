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
    UserBean profileUser(int id){
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        String userNameDB="";
        
        try{
            conn = DBConnection.createConnection();
            statement = conn.createStatement();
            resultSet = statement.executeQuery("SELECT id, name FROM funder where id="+id);
            
            while(resultSet.next()){
                userNameDB = resultSet.getString("name");
                idDB = resultSet.getInt("id");
                
                UserBean user = new UserBean(idDB,userNameDB);
                return user;
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
            
}
