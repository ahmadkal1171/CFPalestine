package dao;

import bean.DashboardUserBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import util.DBConnection;

/**
 *
 * @author HP
 */

public class DashboardUserDao {
    public String dashboardUser(DashboardUserBean db){
        String fundername = db.getFunderName();
        String funderid = db.getFunderid();
        String fundingamount = db.getFundingamount();
        String fundingdate = db.getFundingdate();
        String projectid = db.getProjectid();
      
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String funderidDB = "";
        String fundernameDB = "";
        String fundingamountDB = "";
        String fundingdateDB = "";
        String projectidDB = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("Select * from app.donate");

            while (resultSet.next()){
                funderidDB = resultSet.getString("funderid");
                fundernameDB = resultSet.getString("fundername");
                fundingamountDB = resultSet.getString("fundingamount");
                fundingdateDB = resultSet.getString("fundingdate");
                projectidDB = resultSet.getString("projectid");

                if (funderid.equals(funderidDB)&& fundername.equals(fundernameDB) && fundingamount.equals(fundingamountDB) && fundingdate.equals(fundingdateDB) && projectid.equals(projectidDB)){
                    return "SUCCESS";
                }
            }
        }
        
        catch(SQLException e){
            e.printStackTrace();
        }
        
        return "Invalid user credentials.";
    }
}
