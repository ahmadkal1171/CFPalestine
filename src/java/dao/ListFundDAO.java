package dao;

/**
 *
 * @author HP
 */

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
        String sql = "SELECT * FROM DONATE";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        List<ListFund> listFunds = new ArrayList<>();
        while (resultSet.next()) {
            ListFund fund = new ListFund();
            fund.setFunderId(resultSet.getInt("funderId"));
            fund.setTitle(resultSet.getString("title"));
            fund.setDateHistory(resultSet.getDate("date").toLocalDate());
            listFunds.add(fund);
        }
        return listFunds;
    }
}