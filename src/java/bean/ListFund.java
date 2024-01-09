package bean;

/**
 *
 * @author HP
 */

public class ListFund implements java.io.Serializable{
    String funderId;
    String dateHistory;
    String title;

    public ListFund() {
    }

    public ListFund(String funderId, String dateHistory, String title) {
        this.funderId = funderId;
        this.dateHistory = dateHistory;
        this.title = title;
    }

    public String getFunderId() {
        return funderId;
    }

    public void setFunderId(String funderId) {
        this.funderId = funderId;
    }

    public String getDateHistory() {
        return dateHistory;
    }

    public void setDateHistory(String dateHistory) {
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

}
