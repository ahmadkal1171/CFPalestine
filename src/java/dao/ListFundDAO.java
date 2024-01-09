package dao;

/**
 *
 * @author HP
 */

//import bean.ListFund;
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import util.DBConnection;
//import java.time.LocalDate;

//public class ListFundDAO {
//    public String userFund(ListFund listFund){
//        int funderID = listFund.getFunderId();
//        LocalDate dateHistory = listFund.getDateHistory();
//        String title = listFund.getTitle();
//        
//        Connection conn = null;
//        Statement statement = null;
//        ResultSet resultSet = null;
//        int funderIdDB = 0;
//        LocalDate dateHistoryDB = LocalDate.of(2024, 1, 8);
//        String titleDB = "";
//        
//        try{
//            conn = DBConnection.createConnection();
//            statement = conn.createStatement();
//            resultSet = statement.executeQuery("SELECT funderId, Date, Title FROM APP.DONATE");
//            while(resultSet.next()){
//                funderIdDB = resultSet.getInt("funderId");
//                dateHistoryDB = resultSet.getString("dateHistory");
//                titleDB = resultSet.getString("title");
//                
//                if(username.equals(userNameDB)&&password.equals(passwordDB)){
//                    return "SUCCESS";
//                }
//            }  
//        }catch(SQLException e){
//            e.printStackTrace();
//        }
//        
//        return "Invalid user credentials";
//    }
//}

import bean.ListFund;
import bean.ListFund.listFundDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ListFundDAO implements listFundDAO {
    private Connection connection;

    public ListFundDAO (String url, String username, String password) throws SQLException {
        connection = DriverManager.getConnection(url, username, password);
    }

    public List<ListFund> getListFund() throws SQLException {
        String sql = "SELECT funderId, Date, Title FROM APP.DONATE";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        List<ListFund> listFunds = new ArrayList<>();
        while (resultSet.next()) {
            ListFund fund = new ListFund();
            fund.setFunderId(resultSet.getInt("funderId"));
            fund.setTitle(resultSet.getString("title"));
            fund.setDateHistory(resultSet.getDate("dateHistory").toLocalDate());
            listFunds.add(fund);
        }
        return listFunds;
    }
}


//ni taktau betul ke tak tau tengah buat lagi