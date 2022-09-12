package com.example.coin.po;

public class Fuzz {
    private int id;
    private String fuzzyWord1;
    private String fuzzyWord2;
    private String sqlId;

    @Override
    public String toString() {
        return "Fuzz{" +
                "id=" + id +
                ", fuzzyWord1='" + fuzzyWord1 + '\'' +
                ", fuzzyWord2='" + fuzzyWord2 + '\'' +
                ", sqlId='" + sqlId + '\'' +
                '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setFuzzyWord1(String fuzzyWord) {
        this.fuzzyWord1 = fuzzyWord;
    }

    public String getFuzzyWord1() {
        return fuzzyWord1;
    }

    public void setFuzzyWord2(String fuzzyWord2) {
        this.fuzzyWord2 = fuzzyWord2;
    }

    public String getFuzzyWord2() {
        return fuzzyWord2;
    }

    public void setSqlId(String sqlId) {
        this.sqlId = sqlId;
    }

    public String getSqlId() {
        return sqlId;
    }
}
