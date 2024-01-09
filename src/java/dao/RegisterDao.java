/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.RegisterBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;
/**
 *
 * @author Haikal
 */
public class RegisterDao {
    public String registerVisitor(RegisterBean registerBean) {

        String username = registerBean.getUsername();
        String email = registerBean.getEmail();
        String password = registerBean.getPassword();

        Connection con = null;
        Statement statement = null;
        String sql = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            if (isExists(email)) {
                return "PHONE NUMBER ALREADY EXISTS";
            }

            sql = "insert into FUNDER(funderName,funderEmail,funderPass)"
                    + " values('" + username + "','" + email + "','" + password + "')";

            statement.executeUpdate(sql);

            return "SUCCESS";

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return "FAILED. PLEASE TRY AGAIN";
    }
    public boolean isExists(String phonenum) {

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String sql = "";
        String emailDB = "";
        
        
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            sql = "select FUNDEREMAIL from FUNDER";

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                emailDB = resultSet.getString("email");

                if (phonenum.equals(emailDB)) {
                    return true;
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
