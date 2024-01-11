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
    public int id;
    public String username;
    public int funder_id;
    public int phoneNum;

    public UserBean() {
    }

    public UserBean(int id, String username, int funder_id, int phoneNum) {
        this.id = id;
        this.username = username;
        this.funder_id = funder_id;
        this.phoneNum = phoneNum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getFunder_id() {
        return funder_id;
    }

    public void setFunder_id(int funder_id) {
        this.funder_id = funder_id;
    }

    public int getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }
}
