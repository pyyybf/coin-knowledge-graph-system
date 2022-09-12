package com.example.coin.po;

public class Commodity {
    private int id;
    private String brand;
    private String name;
    private String commodityType;
    private String color;
    private String colorScheme;
    private String shade;
    private String originPlace;
    private String effect;
    private double price;
    private int collectNum;
    private String image;
    private String sqlId;

    public void printMyself(){
        System.out.println("id:"+getId()+
                " ,brand:"+getBrand()+
                " ,name:"+getName()+
                " ,commodityType:"+getCommodityType()+
                " ,color"+getColor()+
                " ,colorScheme:"+getColorScheme()+
                " ,shade:"+getShade()+
                " ,originPlace:"+getOriginPlace()+
                " ,effect:"+getEffect()+
                " ,price:"+getPrice()+
                " ,collectNum:"+getCollectNum()+
                " ,image:"+getImage()+
                " ,sqlId:"+sqlId);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCommodityType() {
        return commodityType;
    }

    public void setCommodityType(String commodityType) {
        this.commodityType = commodityType;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getColorScheme() {
        return colorScheme;
    }

    public void setColorScheme(String colorScheme) {
        this.colorScheme = colorScheme;
    }

    public String getShade() {
        return shade;
    }

    public void setShade(String shade) {
        this.shade = shade;
    }

    public String getOriginPlace() {
        return originPlace;
    }

    public void setOriginPlace(String originPlace) {
        this.originPlace = originPlace;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCollectNum() {
        return collectNum;
    }

    public void setCollectNum(int collectNum) {
        this.collectNum = collectNum;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setSqlId(String sqlId) {
        this.sqlId = sqlId;
    }

    public String getSqlId() {
        return sqlId;
    }
}
