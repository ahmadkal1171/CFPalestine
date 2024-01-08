package bean;

/**
 *
 * @author Smiling
 */
public class LoginUser implements java.io.Serializable{
     public String fundername;
     public String funderpass;

    public LoginUser (){}

    public LoginUser(String fundername, String funderpass) {
        this.fundername = fundername;
        this.funderpass = funderpass;
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
    
    
}
