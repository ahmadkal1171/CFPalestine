package bean;

/**
 *
 * @author HP
 */

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

public class ListFund implements java.io.Serializable{
    private int funderId;
    private LocalDate dateHistory;
    private String title;

    public ListFund() {
        funderId = 0;
        dateHistory = null;
        title = null;
    }

    public ListFund(int funderId, LocalDate dateHistory, String title) {
        this.funderId = funderId;
        this.dateHistory = dateHistory;
        this.title = title;
    }

    public int getFunderId() {
        return funderId;
    }

    public void setFunderId(int funderId) {
        this.funderId = funderId;
    }

    public LocalDate getDateHistory() {
        return dateHistory;
    }

    public void setDateHistory(LocalDate dateHistory) {
        this.dateHistory = dateHistory;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "ListFund{" + "funderId=" + funderId + ", dateHistory=" + dateHistory + ", title=" + title + '}';
    }

//    public interface listFund {
//        List<listFund> getListFund() throws SQLException;
//
//        public void setDateHistory(LocalDate toLocalDate);
//
//        public void setFunderId(int aInt);
//
//        public void setTitle(String string);
//    }
    
    public interface listFundDAO {

    }
}
