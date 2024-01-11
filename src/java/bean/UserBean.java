/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author HP
 */

public class UserBean {
    public String name;
    public int funder_id;
    public String email;
    public int phoneNum;

    public UserBean() {
    }

    public UserBean(String name, int funder_id, String email, int phoneNum) {
        this.name = name;
        this.funder_id = funder_id;
        this.email = email;
        this.phoneNum = phoneNum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFunder_id() {
        return funder_id;
    }

    public void setFunder_id(int funder_id) {
        this.funder_id = funder_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }
    
    
}
