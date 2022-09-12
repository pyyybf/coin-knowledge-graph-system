package com.example.coin.vo;

public class AccountForm {
    private String userName;
    private String password;
    private String email;
    private String avatar;

    public AccountForm() {
    }

    public AccountForm(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public AccountForm(String userName, String password, String email, String avatar) {
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.avatar = avatar;
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
}
