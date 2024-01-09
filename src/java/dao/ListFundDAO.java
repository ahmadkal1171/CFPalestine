package dao;

import bean.ListFund;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;
import java.time.LocalDate;

public class ListFundDAO {
    public String userFund(ListFund listFund){
        int funderID = listFund.getFunderId();
        LocalDate dateHistory = listFund.getDateHistory();
        String title = listFund.getTitle();
        
        Connection conn=null;
        Statement statement=null;
        ResultSet resultSet=null;
        
        int funderIdDB = 0;
        LocalDate dateHistoryDB = LocalDate.of(2024, 1, 8);
        String titleDB = "";
        
        
    }
}