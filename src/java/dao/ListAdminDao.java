/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import bean.ListFundAdmin;
import util.DBConnection;
import java.util.*;
/**
 *
 * @author Haikal
 */
public class ListAdminDao {
//    public ListFundAdmin getProjectById(String id){      
//        Connection con = null;
//        Statement statement = null;
//        ResultSet resultSet = null;
//        String sql = "";
//        String categoryIdDB = "";
//        String categoryNameDB = "";
//        float priceDB = 0;
//        
//        try {
//            con = DBConnection.createConnection();
//            statement = con.createStatement();
//
//            sql = "select * from category where category_id="+id;
//
//            resultSet = statement.executeQuery(sql);
//
//             while (resultSet.next()) {
//                categoryIdDB = resultSet.getString("category_id");
//                categoryNameDB = resultSet.getString("categoryName");
//                priceDB = resultSet.getFloat("price");
//                
//                CategoryBean Category = new CategoryBean(categoryIdDB,categoryNameDB,priceDB);
//                return Category;
//             }
//
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        
//        return null;
//    }
    
    public List<ListFundAdmin> getAllProject(){
        
        List projList = new LinkedList();        
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String sql = "";
        int projIdDB = 0;
        String projNameDB = "";
        String projDescDB = "";
        String dateDB = null;
        
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            sql = "select * from PROJECT";

            resultSet = statement.executeQuery(sql);

             while (resultSet.next()) {
                projIdDB = resultSet.getInt("projectId");
                projNameDB = resultSet.getString("projectName");
                dateDB = resultSet.getString("deadline");
                projDescDB = resultSet.getString("projectDescription");
                
                ListFundAdmin lfa = new ListFundAdmin(projIdDB,projNameDB,dateDB,projDescDB);
                projList.add(lfa);
             }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return projList;
    }
    
//    public String editCategory(CategoryBean categoryBean){
//        
//        String categoryId = categoryBean.getId();
//        String categoryName = categoryBean.getCategoryName();
//        float price = categoryBean.getPrice();
//
//        Connection con = null;
//        Statement statement = null;
//        String sql = "";
//
//        try {
//            con = DBConnection.createConnection();
//            statement = con.createStatement();
//
//            if (isExists(categoryName)) {
//                return "CATEGORY ALREADY EXISTS";
//            }
//            
//            sql = "update category set categoryname='"+categoryName+"',price="+price
//                    + " where category_id="+categoryId;
//            
////            return sql;
//            statement.executeUpdate(sql);
//
//            return "SUCCESS";
//
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        return "FAILED. PLEASE TRY AGAIN";
//    }
//    
    public String addProject(ListFundAdmin listProj){
        
       
        String projName = listProj.getProjName();
        String projDesc = listProj.getProjName();
        String dateline = listProj.getDateline();

        Connection con = null;
        Statement statement = null;
        String sql = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            if (isExists(projName)) {
                return "CATEGORY ALREADY EXISTS";
            }
            
            sql = "insert into PROJECT(PROJECTNAME,PROJECTDESCRIPTION,DEADLINE) values('"+projName+"',"+projDesc+",'"+dateline+"')";

            statement.executeUpdate(sql);

            return "SUCCESS";

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return "FAILED. PLEASE TRY AGAIN";
    }
//    
//    
//    public String deleteCategory(String categoryId){
//
//        Connection con = null;
//        Statement statement = null;
//        String sql = "";
//
//        try {
//            con = DBConnection.createConnection();
//            statement = con.createStatement();
//
//            sql = "delete from category where category_id="+categoryId;
//
//            statement.executeUpdate(sql);
//
//            return "SUCCESS";
//
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        return "FAILED. PLEASE TRY AGAIN";
//    }
    
    public boolean isExists(String categoryName) {

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String sql = "";
        String projNameDB = "";

        
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            sql = "select PROJECTNAME FROM PROJECT";

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                projNameDB = resultSet.getString("projName");

                if (categoryName.equals(projNameDB)) {
                    return true;
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
