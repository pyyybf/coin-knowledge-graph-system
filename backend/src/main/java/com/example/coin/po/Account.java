package com.example.coin.po;

public class Account {
    private int id;
    private String userName;
    private String password;
    private String email;
    private String avatar;
    private String accountType;

    public Account() {
    }

    public Account(String userName, String password, String email, String avatar, String accountType) {
        this.userName = userName;
        this.password = password;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
