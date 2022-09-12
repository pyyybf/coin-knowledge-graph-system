package com.example.coin.vo;

public class UserInfo {
    private int id;
    private String userName;
    private String email;
    private String avatar;
    private String accountType;

    public UserInfo() {
    }

    public UserInfo(int id, String userName, String email, String avatar, String accountType) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.avatar = avatar;
        this.accountType = accountType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
}
