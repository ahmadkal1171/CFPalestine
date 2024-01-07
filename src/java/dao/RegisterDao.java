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
        String phoneNum = registerBean.getNumPhone();
        String email = registerBean.getEmail();
        String password = registerBean.getPassword();

        Connection con = null;
        Statement statement = null;
        String sql = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            if (isExists(phoneNum)) {
                return "PHONE NUMBER ALREADY EXISTS";
            }

            sql = "insert into FUNDER(userFunder,numPhone,emailFunder,passFunder)"
                    + " values('" + username + "','" + phoneNum + "','" + email + "','" + password + "')";

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
        String phonenumDB = "";
        
        
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();

            sql = "select NUMPHONE from FUNDER";

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                phonenumDB = resultSet.getString("NumPhone");

                if (phonenum.equals(phonenumDB)) {
                    return true;
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
