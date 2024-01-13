package bean;

public class RegisterBean implements java.io.Serializable{
    String fundername;
    String funderpass;
    String funderemail;

    public RegisterBean(String fundername, String funderpass, String funderemail) {
        this.fundername = fundername;
        this.funderpass = funderpass;
        this.funderemail = funderemail;
    }

    public RegisterBean() {
    }

    public String getFundername() {
        return fundername;
    }

    public void setFundername(String fundername) {
        this.fundername = fundername;
    }

    public String getFunderpass() {
        return funderpass;
    }

    public void setFunderpass(String funderpass) {
        this.funderpass = funderpass;
    }

    public String setFunderemail() {
        return funderemail;
    }

    public void setFunderemail(String funderemail) {
        this.funderemail = funderemail;
    }
    
    
    
    
}
