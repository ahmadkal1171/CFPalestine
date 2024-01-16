package bean;

/**
 *
 * @author HP
 */
public class DashboardUserBean implements java.io.Serializable{
    public String funderid;
    public String funderName;
    public String amount;
    public String deadline;
    public String projectid;
    public String projectname;

    public DashboardUserBean() {
    }

    public DashboardUserBean(String funderid, String funderName, String amount, String deadline, String projectid, String projectname) {
        this.funderid = funderid;
        this.funderName = funderName;
        this.amount = amount;
        this.deadline = deadline;
        this.projectid = projectid;
        this.projectname = projectname;
    }

    public String getFunderid() {
        return funderid;
    }

    public void setFunderid(String funderid) {
        this.funderid = funderid;
    }

    public String getFunderName() {
        return funderName;
    }

    public void setFunderName(String funderName) {
        this.funderName = funderName;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getProjectid() {
        return projectid;
    }

    public void setProjectid(String projectid) {
        this.projectid = projectid;
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname;
    }
}